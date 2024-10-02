
.PHONY: init-v212
init-v212:
	ln -s VERSION_212 VERSION
	ln -s patches-gitops-engine-v2.2.0 patches-gitops-engine
	ln -s patches-argo-cd-v2.12 patches-argo-cd
	make init

.PHONY: init-v211
init-v211:
	ln -s VERSION_211 VERSION
	ln -s patches-gitops-engine-v2.2.0 patches-gitops-engine
	ln -s patches-argo-cd-v2.11 patches-argo-cd
	make init

.PHONY: init-v210
init-v210:
	ln -s VERSION_210 VERSION
	ln -s patches-gitops-engine-v2.2.0 patches-gitops-engine
	ln -s patches-argo-cd-v2.10 patches-argo-cd
	make init

.PHONY: init-v29
init-v29:
	ln -s VERSION_29 VERSION
	ln -s patches-gitops-engine-v2.2.0 patches-gitops-engine
	ln -s patches-argo-cd-v2.9 patches-argo-cd
	make init

.PHONY: init-v28
init-v28:
	ln -s VERSION_28 VERSION
	ln -s patches-gitops-engine-v2.0.0 patches-gitops-engine
	ln -s patches-argo-cd-v2.8 patches-argo-cd
	make init

.PHONY: init-v27
init-v27:
	ln -s VERSION_27 VERSION
	ln -s patches-gitops-engine-v2.0.0 patches-gitops-engine
	ln -s patches-argo-cd-v2.7 patches-argo-cd
	make init

.PHONY: init-v26
init-v26:
	ln -s VERSION_26 VERSION
	ln -s patches-gitops-engine-v2.0.0 patches-gitops-engine
	ln -s patches-argo-cd-v2.6 patches-argo-cd
	make init

.PHONY: init-v25
init-v25:
	ln -s VERSION_25 VERSION
	ln -s patches-gitops-engine-v0 patches-gitops-engine
	ln -s patches-argo-cd-v2.5 patches-argo-cd
	make init

.PHONY: init-v24
init-v24:
	ln -s VERSION_24 VERSION
	ln -s patches-gitops-engine-v0 patches-gitops-engine
	ln -s patches-argo-cd-v2.4 patches-argo-cd
	make init

.PHONY: init-v23
init-v23:
	ln -s VERSION_23 VERSION
	ln -s patches-gitops-engine-v0 patches-gitops-engine
	ln -s patches-argo-cd-v2.3 patches-argo-cd
	make init

.PHONY: init-v22
init-v22:
	ln -s VERSION_22 VERSION
	ln -s patches-gitops-engine-v0 patches-gitops-engine
	ln -s patches-argo-cd-v2.2 patches-argo-cd
	make init

.PHONY: uninit
uninit:
	unlink VERSION
	unlink patches-argo-cd
	unlink patches-gitops-engine

.PHONY: init
init:
	bash -x ./init.sh

.PHONY: init-gitops-engine
init-gitops-engine:
	bash -x ./init-gitops-engine.sh

.PHONY: image
image:
	bash -x ./build.sh

.PHONY: export-patches
export-patches:
	bash -x ./patch_export.sh
