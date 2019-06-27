# nano-build-env Dockerfile

[Docker](http://docker.com) container to build [Nanocurrency](http://nano.org) projects

## Usage

### Install

Pull `argakiig/nano-build-env-${compiler}` from Docker Repository:
	
	docker pull argakiig/nano-build-env-{gcc|clang}

Or build `argakiig/nano-build-env-${compiler}` from source:

	git clone https://github.com/argakiig/nano-build-env
	docker build -t argakiig/nano-build-env-{gcc|clang} .

### Run

	use as source container for building