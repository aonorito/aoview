LOCAL_IMAGE = frontend-test
LOCAL_PORT = 8080

DEPLOY_IMAGE = vite-sample
DEPLOY_TAG = gcr.io/prime-formula-377501gi

localbuild/frontend:
	docker build --platform linux/amd64 -t $(LOCAL_IMAGE) -f  docker/production/Dockerfile .
	docker run -p ${LOCAL_PORT}:${LOCAL_PORT} -e PORT=${LOCAL_PORT} $(LOCAL_IMAGE)

deploy/frontend:
	docker build --platform linux/amd64 -t ${DEPLOY_IMAGE}:latest -f docker/production/Dockerfile .
	docker images
	docker tag ${DEPLOY_IMAGE}:latest ${DEPLOY_TAG}/${DEPLOY_IMAGE}:latest
	gcloud auth login
	docker push ${DEPLOY_TAG}/${DEPLOY_IMAGE}

git/push:
	git add -A
	git commit -m "[#${n}] ${m}"
	git push origin feature/${n}