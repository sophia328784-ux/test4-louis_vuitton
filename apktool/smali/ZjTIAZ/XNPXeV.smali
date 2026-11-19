.class public LZjTIAZ/XNPXeV;
.super Ljava/lang/Object;


# static fields
.field public static h:I = 0x4c3

.field public static i:I = 0x12b2

.field public static final j:LZjTIAZ/XNPXeV;

.field public static k:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public volatile a:Z

.field public volatile b:Z

.field public volatile c:Z

.field public volatile d:Z

.field public final e:I

.field public final f:I

.field public final g:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LZjTIAZ/XNPXeV;

    invoke-direct {v0}, LZjTIAZ/XNPXeV;-><init>()V

    sput-object v0, LZjTIAZ/XNPXeV;->j:LZjTIAZ/XNPXeV;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, LZjTIAZ/XNPXeV;->k:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LZjTIAZ/XNPXeV;->a:Z

    iput-boolean v0, p0, LZjTIAZ/XNPXeV;->b:Z

    iput-boolean v0, p0, LZjTIAZ/XNPXeV;->c:Z

    iput-boolean v0, p0, LZjTIAZ/XNPXeV;->d:Z

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x32

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v2, v2, 0x1e

    const/16 v4, 0x1388

    const/16 v5, 0x14

    invoke-static {v0, v5, v2, v4}, Lcj;->a(IIII)I

    move-result v0

    rsub-int v2, v0, 0x1a86

    add-int/2addr v2, v0

    iput v2, p0, LZjTIAZ/XNPXeV;->e:I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v2, v2, 0x28

    const/16 v4, 0x19

    const/16 v6, 0x157c

    invoke-static {v0, v4, v2, v6}, Lcj;->a(IIII)I

    move-result v0

    rsub-int v2, v0, 0x1e82

    add-int/2addr v2, v0

    iput v2, p0, LZjTIAZ/XNPXeV;->f:I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v1, v1, 0x23

    const/16 v2, 0x1644

    invoke-static {v0, v5, v1, v2}, Lcj;->a(IIII)I

    move-result v0

    rsub-int v1, v0, 0x2008

    add-int/2addr v1, v0

    iput v1, p0, LZjTIAZ/XNPXeV;->g:I

    const-string p0, "?\u0017\"\u001d\u0003\u001c\u001f\u000e "

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static a(LZjTIAZ/XNPXeV;Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v2, LZjTIAZ/XNPXeV$uNjiQ;

    invoke-direct {v2, p0, v1}, LZjTIAZ/XNPXeV$uNjiQ;-><init>(LZjTIAZ/XNPXeV;Ljava/lang/Process;)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-interface {p0, v2, v3, p1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Ljava/io/BufferedReader;

    new-instance p1, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v2, "oAw"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    move p1, v0

    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    return p1

    :catchall_1
    move-exception p0

    goto :goto_3

    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    return v0

    :goto_3
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_2
    throw p0

    :catch_0
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    sget p0, LZjTIAZ/XNPXeV;->i:I

    const/16 p1, 0x12b1

    if-gt p0, p1, :cond_c

    sget p0, LZjTIAZ/XNPXeV;->h:I

    xor-int/lit16 p0, p0, 0x4c3

    if-eqz p0, :cond_4

    :goto_4
    sget p0, LZjTIAZ/XNPXeV;->h:I

    add-int/lit16 p1, p0, 0x82

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    goto :goto_4

    :cond_3
    rem-int/lit8 p0, p0, 0x47

    shr-int/lit8 p0, p0, 0x1b

    sput p0, LZjTIAZ/XNPXeV;->h:I

    goto :goto_4

    :cond_4
    :goto_5
    sget p0, LZjTIAZ/XNPXeV;->i:I

    add-int/lit8 p1, p0, 0x75

    const/16 v1, 0x2e

    if-eq p1, v1, :cond_b

    const/16 v1, 0x55

    if-eq p1, v1, :cond_a

    const/16 v1, 0xc7

    if-eq p1, v1, :cond_5

    goto :goto_5

    :cond_5
    :goto_6
    sget p1, LZjTIAZ/XNPXeV;->i:I

    shr-int/lit8 p1, p1, 0x62

    xor-int/lit16 p1, p1, 0xfbf

    add-int/2addr p1, p0

    sput p1, LZjTIAZ/XNPXeV;->i:I

    sget p1, LZjTIAZ/XNPXeV;->h:I

    xor-int/lit16 p1, p1, 0x4c3

    if-eqz p1, :cond_5

    :goto_7
    sget p1, LZjTIAZ/XNPXeV;->h:I

    add-int/lit16 v0, p1, 0xb6

    const/16 v1, 0x4b

    if-eq v0, v1, :cond_9

    const/16 v1, 0xd3

    if-eq v0, v1, :cond_8

    const/16 v1, 0x157

    if-eq v0, v1, :cond_7

    const/16 v1, 0x1b9

    if-eq v0, v1, :cond_6

    goto :goto_7

    :cond_6
    add-int v0, p1, p1

    xor-int/lit16 v0, v0, 0x7c1

    add-int/2addr v0, p1

    sput v0, LZjTIAZ/XNPXeV;->h:I

    goto :goto_6

    :cond_7
    xor-int/lit16 v0, p1, 0x956

    shr-int/lit8 v0, v0, 0x6d

    add-int/2addr v0, p1

    sput v0, LZjTIAZ/XNPXeV;->h:I

    goto :goto_7

    :cond_8
    const v0, 0x344e0

    mul-int/2addr p1, v0

    sput p1, LZjTIAZ/XNPXeV;->h:I

    goto :goto_7

    :cond_9
    :goto_8
    sget p0, LZjTIAZ/XNPXeV;->h:I

    shr-int/lit8 p0, p0, 0x13

    sput p0, LZjTIAZ/XNPXeV;->h:I

    goto :goto_8

    :cond_a
    mul-int/lit8 p1, p0, 0x71

    rem-int/lit8 p1, p1, 0x6a

    add-int/2addr p1, p0

    sput p1, LZjTIAZ/XNPXeV;->i:I

    :cond_b
    sget p1, LZjTIAZ/XNPXeV;->i:I

    xor-int/lit16 p1, p1, 0x1cfd

    add-int/2addr p1, p0

    sput p1, LZjTIAZ/XNPXeV;->i:I

    :cond_c
    return v0
.end method

.method public static b(LZjTIAZ/XNPXeV;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    sget-object p0, LZjTIAZ/XNPXeV;->k:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object p0, LZjTIAZ/XNPXeV;->k:Ljava/util/concurrent/ExecutorService;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-interface {p0, v1, v2, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, LZjTIAZ/XNPXeV;->k:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :try_start_2
    sget-object p0, LZjTIAZ/XNPXeV;->k:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method public static d(ILjava/lang/String;)Z
    .locals 6

    const-string v0, "GET /status HTTP/1.1\r\nHost: "

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, p1, p0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v5, 0x5dc

    invoke-virtual {v3, v4, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    invoke-virtual {v3, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\r\nConnection: close\r\n\r\n"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    new-instance p0, Ljava/io/BufferedReader;

    new-instance p1, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move p1, v1

    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v2, p0

    goto :goto_1

    :catch_0
    move-object v2, p0

    goto :goto_2

    :cond_1
    :try_start_4
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :try_start_6
    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    :cond_2
    return p1

    :catchall_1
    move-exception p1

    goto :goto_1

    :catchall_2
    move-exception p1

    move-object v4, v2

    goto :goto_1

    :catch_4
    move-object v4, v2

    goto :goto_2

    :catchall_3
    move-exception p1

    move-object v3, v2

    move-object v4, v3

    goto :goto_1

    :catch_5
    move-object v3, v2

    move-object v4, v3

    goto :goto_2

    :goto_1
    if-eqz v2, :cond_3

    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :catch_6
    :cond_3
    if-eqz v4, :cond_4

    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    :catch_7
    :cond_4
    if-eqz v3, :cond_5

    :try_start_9
    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    :catch_8
    :cond_5
    throw p1

    :catch_9
    :goto_2
    if-eqz v2, :cond_6

    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :cond_6
    if-eqz v4, :cond_7

    :try_start_b
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :cond_7
    if-eqz v3, :cond_8

    :try_start_c
    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result p0

    if-nez p0, :cond_8

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :cond_8
    return v1
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v5, v1, 0x7

    iget-boolean v6, p0, LZjTIAZ/XNPXeV;->a:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move v2, v7

    :goto_0
    add-int/2addr v5, v2

    mul-int/lit8 v2, v1, 0x8

    iget-boolean v6, p0, LZjTIAZ/XNPXeV;->b:Z

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    move v3, v7

    :goto_1
    add-int/2addr v2, v3

    mul-int/lit8 v3, v1, 0x9

    iget-boolean v6, p0, LZjTIAZ/XNPXeV;->c:Z

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    move v4, v7

    :goto_2
    add-int/2addr v3, v4

    mul-int/lit8 v1, v1, 0x5

    iget-boolean p0, p0, LZjTIAZ/XNPXeV;->d:Z

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    move v0, v7

    :goto_3
    add-int/2addr v1, v0

    xor-int p0, v2, v5

    xor-int v0, v3, p0

    xor-int/2addr v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v1, v3, v2}, Ld21;->f(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final e()V
    .locals 2

    :try_start_0
    sget-object v0, LZjTIAZ/XNPXeV;->k:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, LZjTIAZ/XNPXeV;->k:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, LZjTIAZ/XNPXeV;->k:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :try_start_1
    sget-object v0, LZjTIAZ/XNPXeV;->k:Ljava/util/concurrent/ExecutorService;

    new-instance v1, LZjTIAZ/XNPXeV$OAgEI;

    invoke-direct {v1, p0}, LZjTIAZ/XNPXeV$OAgEI;-><init>(LZjTIAZ/XNPXeV;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
