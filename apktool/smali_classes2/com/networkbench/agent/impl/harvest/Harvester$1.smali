.class Lcom/networkbench/agent/impl/harvest/Harvester$1;
.super Lcom/networkbench/agent/impl/util/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/harvest/Harvester;->sendLocalOOMJsonFiles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/harvest/Harvester;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/harvest/Harvester;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/Harvester$1;->a:Lcom/networkbench/agent/impl/harvest/Harvester;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/util/y;-><init>()V

    return-void
.end method


# virtual methods
.method public tryCatchRun()V
    .locals 2

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvester;->g()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "Harvester"

    const-string v0, "sendLocalOOMJsonFiles"

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/networkbench/agent/impl/crash/oom/d;

    new-instance v0, Lcom/networkbench/agent/impl/util/c;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/util/c;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/crash/oom/d;-><init>(Lcom/networkbench/agent/impl/util/c;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/crash/oom/d;->a(Ljava/io/File;)V

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->a(Z)Z

    :cond_0
    return-void
.end method
