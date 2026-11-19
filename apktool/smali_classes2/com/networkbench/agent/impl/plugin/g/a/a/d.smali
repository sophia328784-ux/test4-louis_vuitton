.class public final Lcom/networkbench/agent/impl/plugin/g/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/security/SecureRandom;


# instance fields
.field final a:Ljava/net/InetAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/plugin/g/a/a/d;->b:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/g/a/a/d;->a:Ljava/net/InetAddress;

    return-void
.end method

.method private a([B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Ljava/net/DatagramPacket;

    array-length v2, p1

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/g/a/a/d;->a:Ljava/net/InetAddress;

    const/16 v3, 0x35

    invoke-direct {v0, p1, v2, p0, v3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    const/16 p0, 0xbb8

    invoke-virtual {v1, p0}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    new-instance p0, Ljava/net/DatagramPacket;

    const/16 p1, 0x5dc

    new-array v0, p1, [B

    invoke-direct {p0, v0, p1}, Ljava/net/DatagramPacket;-><init>([BI)V

    invoke-virtual {v1, p0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    :cond_0
    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)[Lcom/networkbench/agent/impl/plugin/g/a/a/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    sget-object v0, Lcom/networkbench/agent/impl/plugin/g/a/a/d;->b:Ljava/security/SecureRandom;

    monitor-enter v0

    .line 55
    :try_start_0
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 56
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    invoke-static {p1, v1}, Lcom/networkbench/agent/impl/plugin/g/a/a/b;->a(Ljava/lang/String;I)[B

    move-result-object v0

    .line 58
    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/plugin/g/a/a/d;->a([B)[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 59
    invoke-static {p0, v1, p1}, Lcom/networkbench/agent/impl/plugin/g/a/a/b;->a([BILjava/lang/String;)[Lcom/networkbench/agent/impl/plugin/g/a/a/c;

    move-result-object p0

    return-object p0

    .line 60
    :cond_0
    new-instance p0, Lcom/networkbench/agent/impl/plugin/g/a/a/a;

    const-string v0, "cant get answer"

    invoke-direct {p0, p1, v0}, Lcom/networkbench/agent/impl/plugin/g/a/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 61
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
