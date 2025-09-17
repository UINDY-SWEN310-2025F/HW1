import pytest
import os
from pathlib import Path


def test_output_content1():
  cwd = os.getcwd()
  ansfile1 = cwd + "/answer/show_ps.sh"
  f = open(ansfile1)
  ans1_content = f.read()
  f.close()

  substring = "()"
  count = ans1_content.count(substring)
  # print count
  if count > 0:
    assert True
  else:
    assert False

def test_output_content2():
  cwd = os.getcwd()
  ansfile2 = cwd + "/answer/show_ps.sh"
  f = open(ansfile2)
  ans2_content = f.read()
  f.close()

  substring = "date"
  count = ans2_content.count(substring)
  # print count
  if count > 0:
    assert True
  else:
    assert False

def test_output_content3():
  cwd = os.getcwd()
  ansfile3 = cwd + "/answer/show_ps.sh"
  f = open(ansfile3)
  ans3_content = f.read()
  f.close()

  substring = "echo"
  count = ans3_content.count(substring)
  # print count
  if count > 1:
    assert True
  else:
    assert False

def test_output_content4():
  cwd = os.getcwd()
  ansfile4 = cwd + "/answer/show_ps.sh"
  f = open(ansfile4)
  ans4_content = f.read()
  f.close()

  substring = "ps "
  count = ans4_content.count(substring)
  # print count
  if count >= 1:
    assert True
  else:
    assert False


def test_output_content5():
  cwd = os.getcwd()
  ansfile5 = cwd + "/answer/show_ps.sh"
  f = open(ansfile5)
  ans5_content = f.read()
  f.close()

  substring = "while"
  count = ans5_content.count(substring)
  # print count
  if count >= 1:
    assert True
  else:
    assert False


def test_output_content6():
  cwd = os.getcwd()
  ansfile6 = cwd + "/answer/show_ps.sh"
  f = open(ansfile6)
  ans6_content = f.read()
  f.close()

  substring = "read"
  count = ans6_content.count(substring)
  # print count
  if count > 0:
    assert True
  else:
    assert False


def test_output_content7():
  cwd = os.getcwd()
  ansfile7 = cwd + "/answer/show_ps.sh"
  f = open(ansfile7)
  ans7_content = f.read()
  f.close()

  substring = "#!/bin/bash"
  count = ans7_content.count(substring)
  # print count
  if count == 1:
    assert True
  else:
    assert False
