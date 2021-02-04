#!/usr/bin/env python3.7
# -*- coding:utf-8 -*-
import click
import i3ipc


@click.group()
def mark():
    pass


@mark.command()
def names():
    wjs = i3ipc.Connection().get_marks()
    print("\n".join(wjs))


# @workspace.command()
# def name():
#     wjs = i3ipc.Connection().get_workspaces()
#     cws = list(filter(lambda x : x["focused"], wjs))

#     print(cws[0]["name"])

if __name__ == "__main__":
    mark()

