.class public abstract Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/OOMTracker;
.super Lcom/networkbench/agent/impl/base/Monitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/networkbench/agent/impl/base/Monitor<",
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008&\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u0006\u001a\u00020\u0007H&J\u0008\u0010\u0008\u001a\u00020\tH&\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/OOMTracker;",
        "Lcom/networkbench/agent/impl/base/Monitor;",
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;",
        "()V",
        "reason",
        "",
        "reset",
        "",
        "track",
        "",
        "koom-java-leak_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/base/Monitor;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract reason()Ljava/lang/String;
.end method

.method public abstract reset()V
.end method

.method public abstract track()Z
.end method
