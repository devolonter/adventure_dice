dev:
	make dev.lib dev.packages.data -j 2

dev.lib:
	dart run build_runner watch --delete-conflicting-outputs

dev.packages.data:
	cd packages/data && dart run build_runner watch --delete-conflicting-outputs