# tests currently don't build properly inside Docker inside CircleCI
if [[ $(uname) == Linux ]]; then
  exit 0
fi

# yeah, this is really dirty. but we're testing lots of conda...
conda clean --lock

npm install .
npm run test
