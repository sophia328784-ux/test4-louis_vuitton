.class public final synthetic Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/common/base/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/u;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/u;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/u;->b:I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/u;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljava/lang/String;

    check-cast p1, Lcom/perfectcorp/common/network/DownloadReport$CompleteReport;

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->z:Ljava/util/concurrent/ExecutorService;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/perfectcorp/common/network/DownloadReport;->b:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/perfectcorp/common/utility/FileUtils;->c(Ljava/io/File;)Z

    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    invoke-static {p1}, Lcom/perfectcorp/common/utility/FileUtils;->c(Ljava/io/File;)Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "Failed to rename look thumbnail file"

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    check-cast p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;

    check-cast p1, Ljava/io/File;

    iget-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->k:Z

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/perfectcorp/common/network/BaseDownloadHandle;->b:Ljava/io/File;

    if-eqz v0, :cond_6

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t rename src=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\" to dst=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_3
    invoke-static {p1, p0}, Lcom/perfectcorp/common/utility/FileUtils;->a(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/perfectcorp/common/utility/FileUtils;->c(Ljava/io/File;)Z

    :cond_4
    move-object p1, p0

    goto :goto_3

    :goto_2
    :try_start_1
    invoke-static {p0}, Lcom/perfectcorp/common/utility/FileUtils;->c(Ljava/io/File;)Z

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/perfectcorp/common/utility/FileUtils;->c(Ljava/io/File;)Z

    :cond_5
    throw p0

    :cond_6
    if-eqz v0, :cond_7

    invoke-static {p1}, Lcom/perfectcorp/common/utility/FileUtils;->c(Ljava/io/File;)Z

    :cond_7
    :goto_3
    return-object p1

    :pswitch_1
    check-cast p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b$a;

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->z:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/template/n;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b$a;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->e:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    invoke-direct {v0, p1, p0}, Lcom/perfectcorp/perfectlib/ph/template/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_2
    check-cast p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;

    check-cast p1, Ljava/lang/Throwable;

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->z:Ljava/util/concurrent/ExecutorService;

    const-string v0, "DownloadMakeupHandle"

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->e:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->i:Ljava/net/URI;

    invoke-static {v1, v2}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/DownloadFolderHelper;->e(Ljava/lang/String;Ljava/net/URI;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_8

    :try_start_2
    invoke-static {v1}, Lcom/perfectcorp/common/utility/FileUtils;->c(Ljava/io/File;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delete zip file failed. zipFile="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_4
    iget-boolean v1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->k:Z

    if-eqz v1, :cond_9

    iget-object p0, p0, Lcom/perfectcorp/common/network/BaseDownloadHandle;->b:Ljava/io/File;

    if-eqz p0, :cond_9

    :try_start_3
    invoke-static {p0}, Lcom/perfectcorp/common/utility/FileUtils;->c(Ljava/io/File;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_5

    :catchall_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "delete folder failed. folder="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    :goto_5
    throw p1

    :pswitch_3
    check-cast p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$a;

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->z:Ljava/util/concurrent/ExecutorService;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->u:Ljava/lang/Object;

    monitor-enter v0

    :try_start_4
    iget-object v1, p0, Lcom/perfectcorp/common/network/BaseDownloadHandle;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->v:Z

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->x:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$a;

    iget-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->j:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->i()V

    :cond_a
    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$a;->c:Ljava/io/File;

    return-object p0

    :catchall_4
    move-exception p0

    goto :goto_6

    :cond_b
    :try_start_5
    new-instance p0, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    const-string p1, "Future had been cancelled."

    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_6
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
