all: build upload


build:
	pip install --upgrade setuptools wheel twine
	rm -rf dist build *.egg-info
	python setup.py sdist bdist_wheel

upload:
	pip install twine
	twine upload dist/*

