.class public final Lcom/networkbench/agent/impl/socket/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/net/SocketImplFactory;


# static fields
.field private static a:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/networkbench/agent/impl/socket/g;->a:Z

    if-eqz v0, :cond_0

    return v0

    :cond_0
    new-instance v0, Lcom/networkbench/agent/impl/socket/g;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/socket/g;-><init>()V

    :try_start_0
    invoke-interface {v0}, Ljava/net/SocketImplFactory;->createSocketImpl()Ljava/net/SocketImpl;

    invoke-static {v0}, Ljava/net/Socket;->setSocketImplFactory(Ljava/net/SocketImplFactory;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/networkbench/agent/impl/socket/g;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    sget-boolean v0, Lcom/networkbench/agent/impl/socket/g;->a:Z

    return v0
.end method


# virtual methods
.method public final createSocketImpl()Ljava/net/SocketImpl;
    .locals 0

    new-instance p0, Lcom/networkbench/agent/impl/socket/f;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/socket/f;-><init>()V

    return-object p0
.end method
