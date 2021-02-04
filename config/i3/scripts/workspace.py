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
    print("\n".join(lname))


@workspace.command()
def name():
    wjs = i3ipc.Connection().get_workspaces()
    cws = list(filter(lambda x : x["focused"], wjs))

    print(cws[0]["name"])


@workspace.command()
@click.option("-n", "--name", default=None, required=False, help="specify workspace name to kill")
def kill(name):
    con = i3ipc.Connection()
    wjs = con.get_workspaces()
    cws = name if name else list(filter(lambda x : x["focused"], wjs))[0]["name"]
    con.command("[workspace=%s] kill"%cws)


@workspace.command()
def killall():
    con = i3ipc.Connection()
    wjs = con.get_workspaces()
    list(map(lambda x: con.command("[workspace=%s] kill"%x["name"]), wjs))


if __name__ == "__main__":
    workspace()

