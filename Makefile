install:
	pip install	--upgrade pip &&\
		pip install -r requirements.txt
		
format:
	autopep8 --max-line-length 100 -r -i -v *.py
	
lint:
	pylint --disable=R,C hello.py
	
test:
	python -m pytest -vv --cov=hello test_hello.py
	
all: install format lint test