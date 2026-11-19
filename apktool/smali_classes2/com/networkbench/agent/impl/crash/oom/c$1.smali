.class Lcom/networkbench/agent/impl/crash/oom/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMReportUploader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/crash/oom/c;->init(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/crash/oom/c;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/crash/oom/c;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/crash/oom/c$1;->a:Lcom/networkbench/agent/impl/crash/oom/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public upload(Ljava/io/File;Ljava/lang/String;)V
    .locals 3

    const-string p2, "OOMJavaMonitorTask"

    const-string v0, "NBSPageData addAll() has an error : "

    if-eqz p1, :cond_2

    :try_start_0
    new-instance v1, Lcom/networkbench/agent/impl/crash/oom/d;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/agent/impl/crash/oom/d;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/crash/oom/d;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "isFileOverThreshold true"

    invoke-static {p2, v2}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/crash/oom/d;->c()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/crash/oom/c$1;->a:Lcom/networkbench/agent/impl/crash/oom/c;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/networkbench/agent/impl/crash/oom/c;->a(Lcom/networkbench/agent/impl/crash/oom/c;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "report oom file now"

    invoke-static {p2, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/h;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, p1}, Lcom/networkbench/agent/impl/crash/oom/d;->a(Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/r;->aC()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "TingyunSDK_OOM"

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/NBSAppAgent;->debugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->j(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v1, p1}, Lcom/networkbench/agent/impl/crash/oom/d;->a(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    const-string p1, "report json process error"

    invoke-static {p2, p1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method
