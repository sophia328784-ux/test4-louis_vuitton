.class Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/logtrack/LoganProtocolHandler;


# static fields
.field private static final e:Ljava/lang/String; = "nbslog"

.field private static f:Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;

.field private static g:Z


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lcom/networkbench/agent/impl/logtrack/OnLoganProtocolStatus;

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "nbslog"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;->g:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;->d:Ljava/util/Set;

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    if-gez p2, :cond_2

    const-string v0, "clogan_write"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, -0xfdc

    if-eq p2, v0, :cond_1

    iget-object v0, p0, Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;->d:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;->d:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p0, p0, Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;->c:Lcom/networkbench/agent/impl/logtrack/OnLoganProtocolStatus;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1, p2}, Lcom/networkbench/agent/impl/logtrack/OnLoganProtocolStatus;->loganProtocolStatus(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static a()Z
    .locals 1

    .line 44
    sget-boolean v0, Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;->g:Z

    return v0
.end method

.method public static b()Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;->f:Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;

    if-nez v0, :cond_1

    const-class v0, Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;->f:Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;

    if-nez v1, :cond_0

    new-instance v1, Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;

    invoke-direct {v1}, Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;-><init>()V

    sput-object v1, Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;->f:Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;->f:Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;

    return-object v0
.end method

.method private native nbslog_debug(Z)V
.end method

.method private native nbslog_flush()V
.end method

.method private native nbslog_init(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
.end method

.method private native nbslog_open(Ljava/lang/String;)I
.end method

.method private native nbslog_write(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
.end method


# virtual methods
.method public logan_debug(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;->a:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;->g:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;->nbslog_debug(Z)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public logan_flush()V
    .locals 1

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;->b:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;->g:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;->nbslog_flush()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public logan_init(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v1, "clogan_init"

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;->g:Z

    if-nez v0, :cond_1

    const-string p1, "logan_loadso"

    const/16 p2, -0x139c

    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;->a(Ljava/lang/String;I)V

    return-void

    :cond_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    :try_start_0
    invoke-direct/range {v2 .. v7}, Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;->nbslog_init(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    iput-boolean p1, v2, Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;->a:Z

    invoke-direct {v2, v1, p0}, Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 p0, -0x424

    invoke-direct {v2, v1, p0}, Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public logan_open(Ljava/lang/String;)V
    .locals 2

    const-string v0, "clogan_open"

    iget-boolean v1, p0, Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;->a:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;->g:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;->nbslog_open(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;->b:Z

    invoke-direct {p0, v0, p1}, Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 p1, -0x816

    invoke-direct {p0, v0, p1}, Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;->a(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public logan_write(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    const-string v1, "clogan_write"

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;->b:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;->g:Z

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-direct/range {p0 .. p10}, Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;->nbslog_write(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result p1

    const/16 p2, -0xfaa

    if-ne p1, p2, :cond_1

    sget-boolean p2, Lcom/networkbench/agent/impl/logtrack/Logan;->c:Z

    if-eqz p2, :cond_2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0, v1, p1}, Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 p1, -0xfdc

    invoke-direct {p0, v1, p1}, Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;->a(Ljava/lang/String;I)V

    :cond_2
    :goto_2
    return-void
.end method

.method public setOnLoganProtocolStatus(Lcom/networkbench/agent/impl/logtrack/OnLoganProtocolStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;->c:Lcom/networkbench/agent/impl/logtrack/OnLoganProtocolStatus;

    return-void
.end method
