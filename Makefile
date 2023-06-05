sync_proto:
	git checkout protobufs
	git pull sub/main
	git subtree split -q --prefix=ruby --annotate="[protobufs] " --rejoin -b temp_branch
	git checkout main
	git subtree pull -q --prefix=ruby temp_branch
