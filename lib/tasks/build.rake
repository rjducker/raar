desc 'Create a deployable artifact of the entire rails application'
task :build do
  rm_rf 'build'
  mkdir_p 'build'
  sh 'git archive --format=tar HEAD | (cd build && tar -xf -)'
  Bundler.with_clean_env do
    sh 'cd build && RAILS_ENV=production bundle package --all-platforms'
  end
  sh 'rm -rf build/.bundle'
  sh 'echo `git rev-parse HEAD` > build/REVISION'
  sh 'rm -f build/raar.tar.gz'
  sh 'cd build && ' \
     'tar -cvzf raar.tar.gz ' \
     '--exclude tmp --exclude test --exclude .travis.yml --exclude .rubocop.yml ' \
     '.'
end