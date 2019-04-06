#!/usr/bin/env python3.7
# -*- coding:utf-8 -*-
import click
import i3ipc


@click.group()
def workspace():
    pass


@workspace.command()
def names():
    wjs = i3ipc.Connection().get_workspaces()
    lname = [x["name"] for x in wjs]
    print(",".join(lname))


@workspace.command()
def name():
    wjs = i3ipc.Connection().get_workspaces()
    cws = list(filter(lambda x : x["focused"], wjs))

    print(cws[0]["name"])


@workspace.command()
def kill():
    con = i3ipc.Connection()
    wjs = con.get_workspaces()
    cws = list(filter(lambda x : x["focused"], wjs))[0]["name"]
    con.command("[workspace=%s] kill"%cws)


if __name__ == "__main__":
    workspace()

