.class public final Lcom/networkbench/agent/impl/plugin/g/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/plugin/g/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/plugin/g/a/e$b;,
        Lcom/networkbench/agent/impl/plugin/g/a/e$a;
    }
.end annotation


# static fields
.field public static final a:I = -0x3

.field public static final b:I = -0x2

.field public static final c:I = -0x4

.field public static final d:I = -0x1


# instance fields
.field public e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:I

.field private final h:I

.field private final i:Lcom/networkbench/agent/impl/plugin/g/a/e$a;

.field private j:Z

.field private k:Lcom/networkbench/agent/impl/plugin/g/a/c;


# direct methods
.method private constructor <init>(Ljava/lang/String;IILcom/networkbench/agent/impl/plugin/g/a/c;Lcom/networkbench/agent/impl/plugin/g/a/e$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/plugin/g/a/e;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/g/a/e;->f:Ljava/lang/String;

    iput p2, p0, Lcom/networkbench/agent/impl/plugin/g/a/e;->g:I

    iput p3, p0, Lcom/networkbench/agent/impl/plugin/g/a/e;->h:I

    iput-object p5, p0, Lcom/networkbench/agent/impl/plugin/g/a/e;->i:Lcom/networkbench/agent/impl/plugin/g/a/e$a;

    iput-object p4, p0, Lcom/networkbench/agent/impl/plugin/g/a/e;->k:Lcom/networkbench/agent/impl/plugin/g/a/c;

    return-void
.end method

.method public static a(Ljava/lang/String;IILcom/networkbench/agent/impl/plugin/g/a/c;Lcom/networkbench/agent/impl/plugin/g/a/e$a;)Lcom/networkbench/agent/impl/plugin/g/a/d;
    .locals 6

    .line 44
    new-instance v0, Lcom/networkbench/agent/impl/plugin/g/a/e;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/networkbench/agent/impl/plugin/g/a/e;-><init>(Ljava/lang/String;IILcom/networkbench/agent/impl/plugin/g/a/c;Lcom/networkbench/agent/impl/plugin/g/a/e$a;)V

    .line 45
    invoke-direct {v0}, Lcom/networkbench/agent/impl/plugin/g/a/e;->b()V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/networkbench/agent/impl/plugin/g/a/c;Lcom/networkbench/agent/impl/plugin/g/a/e$a;)Lcom/networkbench/agent/impl/plugin/g/a/d;
    .locals 2

    const/16 v0, 0x50

    const/4 v1, 0x3

    .line 48
    invoke-static {p0, v0, v1, p1, p2}, Lcom/networkbench/agent/impl/plugin/g/a/e;->a(Ljava/lang/String;IILcom/networkbench/agent/impl/plugin/g/a/c;Lcom/networkbench/agent/impl/plugin/g/a/e$a;)Lcom/networkbench/agent/impl/plugin/g/a/d;

    move-result-object p0

    return-object p0
.end method

.method private a([IILjava/lang/String;II)Lcom/networkbench/agent/impl/plugin/g/a/e$b;
    .locals 12

    const v0, 0xf4240

    const/4 v1, 0x0

    move v7, v0

    move v6, v1

    :goto_0
    if-gt v1, p2, :cond_2

    .line 46
    aget v0, p1, v1

    if-le v0, v6, :cond_0

    move v6, v0

    :cond_0
    if-ge v0, v7, :cond_1

    move v7, v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    :cond_2
    new-instance v2, Lcom/networkbench/agent/impl/plugin/g/a/e$b;

    iget-object v3, p0, Lcom/networkbench/agent/impl/plugin/g/a/e;->e:Ljava/lang/String;

    const/4 v9, 0x0

    add-int/lit8 v10, p2, 0x1

    const/4 v4, 0x0

    move-object v5, p3

    move/from16 v11, p4

    move/from16 v8, p5

    invoke-direct/range {v2 .. v11}, Lcom/networkbench/agent/impl/plugin/g/a/e$b;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIII)V

    return-object v2
.end method

.method private a(Ljava/net/InetSocketAddress;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    :try_start_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v0, p1, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    goto :goto_1

    :catch_2
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_2
    throw p0
.end method

.method private b()V
    .locals 14

    const-string v1, "Unknown host: "

    const-string v0, "connect to "

    :try_start_0
    iget-object v2, p0, Lcom/networkbench/agent/impl/plugin/g/a/e;->f:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    :try_start_1
    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    new-instance v1, Ljava/net/InetSocketAddress;

    iget v3, p0, Lcom/networkbench/agent/impl/plugin/g/a/e;->g:I

    invoke-direct {v1, v6, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/networkbench/agent/impl/plugin/g/a/e;->k:Lcom/networkbench/agent/impl/plugin/g/a/c;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/networkbench/agent/impl/plugin/g/a/e;->g:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/networkbench/agent/impl/plugin/g/a/c;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/networkbench/agent/impl/plugin/g/a/e;->h:I

    new-array v4, v0, [I

    const/4 v3, -0x1

    move v0, v2

    move v7, v0

    move v8, v7

    move v5, v3

    :goto_0
    iget v9, p0, Lcom/networkbench/agent/impl/plugin/g/a/e;->h:I

    if-ge v2, v9, :cond_3

    iget-boolean v9, p0, Lcom/networkbench/agent/impl/plugin/g/a/e;->j:Z

    if-nez v9, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v5, 0x1388

    :try_start_2
    invoke-direct {p0, v1, v5}, Lcom/networkbench/agent/impl/plugin/g/a/e;->a(Ljava/net/InetSocketAddress;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    move v5, v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/networkbench/agent/impl/plugin/g/a/e;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/networkbench/agent/impl/plugin/g/a/e;->k:Lcom/networkbench/agent/impl/plugin/g/a/c;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v11}, Lcom/networkbench/agent/impl/plugin/g/a/c;->a(Ljava/lang/String;)V

    instance-of v0, v0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_0

    const/4 v0, -0x3

    goto :goto_2

    :cond_0
    const/4 v0, -0x2

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v9

    long-to-int v0, v11

    if-ltz v5, :cond_1

    add-int/2addr v8, v0

    :cond_1
    aput v0, v4, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-boolean v9, p0, Lcom/networkbench/agent/impl/plugin/g/a/e;->j:Z

    if-nez v9, :cond_2

    const/16 v9, 0x64

    if-le v9, v0, :cond_2

    if-lez v0, :cond_2

    const-wide/16 v9, 0x64

    int-to-long v11, v0

    sub-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    :try_start_5
    instance-of v0, v0, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/g/a/e;->i:Lcom/networkbench/agent/impl/plugin/g/a/e$a;

    const/4 v9, 0x0

    invoke-interface {v0, v9}, Lcom/networkbench/agent/impl/plugin/g/a/e$a;->a(Lcom/networkbench/agent/impl/plugin/g/a/e$b;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_2
    :goto_4
    add-int/lit8 v0, v2, 0x1

    move v13, v2

    move v2, v0

    move v0, v5

    move v5, v13

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/g/a/e;->i:Lcom/networkbench/agent/impl/plugin/g/a/e$a;

    if-ne v5, v3, :cond_4

    :try_start_6
    new-instance v3, Lcom/networkbench/agent/impl/plugin/g/a/e$b;

    iget-object v4, p0, Lcom/networkbench/agent/impl/plugin/g/a/e;->e:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/networkbench/agent/impl/plugin/g/a/e$b;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIII)V

    invoke-interface {v0, v3}, Lcom/networkbench/agent/impl/plugin/g/a/e$a;->a(Lcom/networkbench/agent/impl/plugin/g/a/e$b;)V

    goto :goto_5

    :cond_4
    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/networkbench/agent/impl/plugin/g/a/e;->a([IILjava/lang/String;II)Lcom/networkbench/agent/impl/plugin/g/a/e$b;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/networkbench/agent/impl/plugin/g/a/e$a;->a(Lcom/networkbench/agent/impl/plugin/g/a/e$b;)V

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v3, p0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/networkbench/agent/impl/plugin/g/a/e;->e:Ljava/lang/String;

    iget-object p0, v3, Lcom/networkbench/agent/impl/plugin/g/a/e;->k:Lcom/networkbench/agent/impl/plugin/g/a/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v3, Lcom/networkbench/agent/impl/plugin/g/a/e;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/plugin/g/a/c;->a(Ljava/lang/String;)V

    iget-object p0, v3, Lcom/networkbench/agent/impl/plugin/g/a/e;->i:Lcom/networkbench/agent/impl/plugin/g/a/e$a;

    new-instance v0, Lcom/networkbench/agent/impl/plugin/g/a/e$b;

    iget-object v1, v3, Lcom/networkbench/agent/impl/plugin/g/a/e;->e:Ljava/lang/String;

    move-object v2, v3

    const-string v3, ""

    iget v8, v2, Lcom/networkbench/agent/impl/plugin/g/a/e;->h:I

    const/4 v2, -0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v9, v8

    invoke-direct/range {v0 .. v9}, Lcom/networkbench/agent/impl/plugin/g/a/e$b;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIII)V

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/plugin/g/a/e$a;->a(Lcom/networkbench/agent/impl/plugin/g/a/e$b;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    :goto_5
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/networkbench/agent/impl/plugin/g/a/e;->j:Z

    return-void
.end method
