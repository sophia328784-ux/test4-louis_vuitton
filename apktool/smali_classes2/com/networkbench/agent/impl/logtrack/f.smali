.class Lcom/networkbench/agent/impl/logtrack/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/logtrack/LoganProtocolHandler;


# static fields
.field private static d:Lcom/networkbench/agent/impl/logtrack/f;


# instance fields
.field private a:Lcom/networkbench/agent/impl/logtrack/LoganProtocolHandler;

.field private b:Z

.field private c:Lcom/networkbench/agent/impl/logtrack/OnLoganProtocolStatus;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/networkbench/agent/impl/logtrack/f;
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/logtrack/f;->d:Lcom/networkbench/agent/impl/logtrack/f;

    if-nez v0, :cond_0

    const-class v0, Lcom/networkbench/agent/impl/logtrack/f;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/networkbench/agent/impl/logtrack/f;

    invoke-direct {v1}, Lcom/networkbench/agent/impl/logtrack/f;-><init>()V

    sput-object v1, Lcom/networkbench/agent/impl/logtrack/f;->d:Lcom/networkbench/agent/impl/logtrack/f;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    sget-object v0, Lcom/networkbench/agent/impl/logtrack/f;->d:Lcom/networkbench/agent/impl/logtrack/f;

    return-object v0
.end method


# virtual methods
.method public logan_debug(Z)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/logtrack/f;->a:Lcom/networkbench/agent/impl/logtrack/LoganProtocolHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/logtrack/LoganProtocolHandler;->logan_debug(Z)V

    :cond_0
    return-void
.end method

.method public logan_flush()V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/logtrack/f;->a:Lcom/networkbench/agent/impl/logtrack/LoganProtocolHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/networkbench/agent/impl/logtrack/LoganProtocolHandler;->logan_flush()V

    :cond_0
    return-void
.end method

.method public logan_init(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/logtrack/f;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;->b()Lcom/networkbench/agent/impl/logtrack/CLoganProtocol;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/logtrack/f;->a:Lcom/networkbench/agent/impl/logtrack/LoganProtocolHandler;

    iget-object v1, p0, Lcom/networkbench/agent/impl/logtrack/f;->c:Lcom/networkbench/agent/impl/logtrack/OnLoganProtocolStatus;

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/logtrack/LoganProtocolHandler;->setOnLoganProtocolStatus(Lcom/networkbench/agent/impl/logtrack/OnLoganProtocolStatus;)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/logtrack/f;->a:Lcom/networkbench/agent/impl/logtrack/LoganProtocolHandler;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/networkbench/agent/impl/logtrack/LoganProtocolHandler;->logan_init(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/logtrack/f;->b:Z

    return-void

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/networkbench/agent/impl/logtrack/f;->a:Lcom/networkbench/agent/impl/logtrack/LoganProtocolHandler;

    return-void
.end method

.method public logan_open(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/logtrack/f;->a:Lcom/networkbench/agent/impl/logtrack/LoganProtocolHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/logtrack/LoganProtocolHandler;->logan_open(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public logan_write(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/logtrack/f;->a:Lcom/networkbench/agent/impl/logtrack/LoganProtocolHandler;

    if-eqz p0, :cond_0

    invoke-interface/range {p0 .. p10}, Lcom/networkbench/agent/impl/logtrack/LoganProtocolHandler;->logan_write(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public setOnLoganProtocolStatus(Lcom/networkbench/agent/impl/logtrack/OnLoganProtocolStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/logtrack/f;->c:Lcom/networkbench/agent/impl/logtrack/OnLoganProtocolStatus;

    return-void
.end method
