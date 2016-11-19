from setuptools import setup, find_packages

setup(name="cython_ipp",
      author="Andrew Straw",
      author_email="strawman@astraw.com",
      description="Cython definitions for the Intel "\
      "Integrated Performance Primitives (Intel IPP) library",
      license="BSD",
      version='0.1.0',
      url='https://github.com/strawlab/cython_ipp',
      packages = find_packages(),
      include_package_data=True,
      zip_safe= False,
)
