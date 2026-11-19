.class public final Lcom/networkbench/agent/impl/j/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x3e8

.field public static final b:I = 0x3e9

.field public static final c:I = 0x3ea

.field private static d:Ljava/lang/String; = null

.field private static final e:I = 0x9c5a

.field private static f:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 382
    sget-object v0, Lcom/networkbench/agent/impl/j/e;->f:Ljava/net/Socket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    sget-object v0, Lcom/networkbench/agent/impl/j/e;->f:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 384
    sput-object v0, Lcom/networkbench/agent/impl/j/e;->f:Ljava/net/Socket;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .line 369
    sput-object p0, Lcom/networkbench/agent/impl/j/e;->d:Ljava/lang/String;

    return-void
.end method

.method public static a([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 370
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/networkbench/agent/impl/j/e;->a([BII)V

    :cond_0
    return-void
.end method

.method private static a([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 371
    sget-object v0, Lcom/networkbench/agent/impl/j/e;->f:Ljava/net/Socket;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0xff

    .line 372
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/net/Socket;->sendUrgentData(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 373
    :catch_0
    sget-object v0, Lcom/networkbench/agent/impl/j/e;->f:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 374
    invoke-static {}, Lcom/networkbench/agent/impl/j/e;->b()V

    :goto_0
    if-lez p2, :cond_1

    if-ltz p1, :cond_1

    .line 375
    array-length v0, p0

    if-ge p1, v0, :cond_1

    .line 376
    new-instance v0, Ljava/io/DataOutputStream;

    sget-object v1, Lcom/networkbench/agent/impl/j/e;->f:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 377
    invoke-virtual {v0, p0, p1, p2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 378
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    return-void

    .line 379
    :cond_1
    const-string p0, "my SocketProcess sendBytes Out of bounds: "

    .line 380
    invoke-static {p1, p0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 381
    invoke-static {p0}, Laz;->v(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static a([B[BI)V
    .locals 4

    .line 385
    array-length v0, p0

    array-length v1, p1

    if-le v0, v1, :cond_0

    goto :goto_1

    .line 386
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    add-int v2, v1, p2

    .line 387
    aget-byte v3, p0, v1

    aput-byte v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static a([BILjava/lang/String;Ljava/lang/String;)[B
    .locals 1

    .line 388
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    invoke-static {p3, p2}, Ld21;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 390
    :cond_0
    invoke-static {p2}, Lcom/networkbench/agent/impl/j/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 391
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p3

    invoke-virtual {p3}, Lcom/networkbench/agent/impl/util/r;->z()Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getSocketDataVersion()Ljava/lang/String;

    move-result-object v0

    .line 392
    invoke-static {p0, p1, p2, p3, v0}, Lcom/networkbench/agent/impl/j/e;->a([BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    .line 393
    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/j/e;->b()V

    .line 394
    invoke-static {p0}, Lcom/networkbench/agent/impl/j/e;->a([B)V

    .line 395
    invoke-static {}, Lcom/networkbench/agent/impl/j/e;->c()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/16 p0, 0x3e8

    const/4 p1, 0x2

    .line 396
    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/util/ak;->a(II)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 18

    move/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    if-nez p0, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v2, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "methodtype:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", params:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", licenseKey:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", data_ver:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/networkbench/agent/impl/j/e;->e([B)[B

    move-result-object v3

    invoke-static {v4}, Lcom/networkbench/agent/impl/j/e;->b(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v5}, Lcom/networkbench/agent/impl/j/e;->c(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {}, Lcom/networkbench/agent/impl/j/c;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x8

    new-array v6, v6, [B

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/networkbench/agent/impl/j/c;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/networkbench/agent/impl/util/ak;->d(Ljava/lang/String;)[B

    move-result-object v6

    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "accessKey:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/j/c;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-static {v0, v7}, Lcom/networkbench/agent/impl/util/ak;->a(II)[B

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "method byte:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    aget-byte v11, v8, v10

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", methodtype:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    new-instance v11, Lcom/networkbench/agent/impl/j/b;

    array-length v15, v3

    array-length v0, v4

    array-length v9, v5

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    move/from16 v16, v0

    move/from16 v17, v9

    invoke-direct/range {v11 .. v17}, Lcom/networkbench/agent/impl/j/b;-><init>(BBBIII)V

    invoke-virtual {v11}, Lcom/networkbench/agent/impl/j/b;->a()[B

    move-result-object v0

    const/4 v9, 0x4

    invoke-static {v1, v9}, Lcom/networkbench/agent/impl/util/ak;->a(Ljava/lang/String;I)[B

    move-result-object v1

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "versionBytes:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v12, v1, v10

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    aget-byte v12, v1, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v12, 0x2

    aget-byte v13, v1, v12

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v13, 0x3

    aget-byte v14, v1, v13

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v11}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    array-length v11, v1

    array-length v14, v0

    add-int/2addr v11, v14

    add-int/2addr v11, v7

    array-length v14, v6

    add-int/2addr v11, v14

    array-length v14, v5

    add-int/2addr v11, v14

    array-length v14, v4

    add-int/2addr v11, v14

    array-length v14, v3

    add-int/2addr v11, v14

    invoke-static {v11, v9}, Lcom/networkbench/agent/impl/util/ak;->a(II)[B

    move-result-object v9

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "lengthBytes:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v15, v9, v10

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    aget-byte v15, v9, v7

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    aget-byte v12, v9, v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    aget-byte v12, v9, v13

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v12}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    array-length v12, v9

    add-int/2addr v12, v11

    new-array v12, v12, [B

    const-string v13, "total:"

    const-string v14, ", len:"

    invoke-static {v11, v13, v14}, Lfc;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v13, v9

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v11}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-static {v9, v12, v10}, Lcom/networkbench/agent/impl/j/e;->a([B[BI)V

    array-length v2, v9

    invoke-static {v1, v12, v2}, Lcom/networkbench/agent/impl/j/e;->a([B[BI)V

    array-length v2, v9

    array-length v11, v1

    add-int/2addr v2, v11

    invoke-static {v0, v12, v2}, Lcom/networkbench/agent/impl/j/e;->a([B[BI)V

    array-length v2, v9

    array-length v11, v0

    add-int/2addr v2, v11

    array-length v11, v1

    add-int/2addr v2, v11

    invoke-static {v8, v12, v2}, Lcom/networkbench/agent/impl/j/e;->a([B[BI)V

    array-length v2, v9

    array-length v8, v0

    add-int/2addr v2, v8

    add-int/2addr v2, v7

    array-length v8, v1

    add-int/2addr v2, v8

    invoke-static {v6, v12, v2}, Lcom/networkbench/agent/impl/j/e;->a([B[BI)V

    array-length v2, v9

    array-length v8, v0

    add-int/2addr v2, v8

    add-int/2addr v2, v7

    array-length v8, v6

    add-int/2addr v2, v8

    array-length v8, v1

    add-int/2addr v2, v8

    invoke-static {v5, v12, v2}, Lcom/networkbench/agent/impl/j/e;->a([B[BI)V

    array-length v2, v9

    array-length v8, v0

    add-int/2addr v2, v8

    add-int/2addr v2, v7

    array-length v8, v5

    add-int/2addr v2, v8

    array-length v8, v6

    add-int/2addr v2, v8

    array-length v8, v1

    add-int/2addr v2, v8

    invoke-static {v4, v12, v2}, Lcom/networkbench/agent/impl/j/e;->a([B[BI)V

    array-length v2, v9

    array-length v1, v1

    add-int/2addr v2, v1

    array-length v0, v0

    add-int/2addr v2, v0

    add-int/2addr v2, v7

    array-length v0, v6

    add-int/2addr v2, v0

    array-length v0, v5

    add-int/2addr v2, v0

    array-length v0, v4

    add-int/2addr v2, v0

    array-length v0, v3

    invoke-static {v3, v10, v12, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v12

    :cond_2
    :goto_1
    sget-object v0, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "processByteArr param is error !"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static final b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    sget-object v0, Lcom/networkbench/agent/impl/j/e;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/j/e;->d()Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x4e20

    .line 48
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static b(Ljava/lang/String;)[B
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [B

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    :goto_0
    if-nez v0, :cond_1

    :try_start_0
    invoke-static {p0}, Lcom/networkbench/agent/impl/j/c;->a([B)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "encrypt array params error!"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method public static b([B)[B
    .locals 4

    .line 49
    array-length v0, p0

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    .line 50
    new-array v2, v0, [B

    const/4 v3, 0x0

    .line 51
    invoke-static {p0, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public static c([B)I
    .locals 5

    const/4 v0, 0x0

    .line 186
    aget-byte v1, p0, v0

    const/4 v2, 0x1

    const/16 v3, 0xff

    if-ne v1, v3, :cond_0

    aget-byte v4, p0, v2

    if-ne v4, v3, :cond_0

    const/4 p0, -0x1

    return p0

    .line 187
    :cond_0
    aget-byte p0, p0, v2

    const/4 v3, 0x2

    new-array v3, v3, [B

    aput-byte v1, v3, v0

    aput-byte p0, v3, v2

    invoke-static {v3}, Lcom/networkbench/agent/impl/util/ak;->a([B)I

    move-result p0

    return p0
.end method

.method public static c()[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/networkbench/agent/impl/j/e;->f:Ljava/net/Socket;

    const/16 v1, 0x3ea

    const/4 v2, 0x2

    if-nez v0, :cond_0

    invoke-static {v1, v2}, Lcom/networkbench/agent/impl/util/ak;->a(II)[B

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    const-string v3, "client is closed and init Socket"

    invoke-interface {v0, v3}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/networkbench/agent/impl/util/ak;->a(II)[B

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    const-string v3, "begin read input Stream"

    invoke-interface {v0, v3}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    new-instance v3, Ljava/io/DataInputStream;

    sget-object v4, Lcom/networkbench/agent/impl/j/e;->f:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-array v4, v2, [B

    invoke-virtual {v3, v4}, Ljava/io/DataInputStream;->read([B)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "input Stream returnVal:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/networkbench/agent/impl/util/ak;->a([B)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "input Stream len:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    if-nez v4, :cond_2

    const-string v3, "input Stream len is 0"

    invoke-interface {v0, v3}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/networkbench/agent/impl/util/ak;->a(II)[B

    move-result-object v0

    return-object v0

    :cond_2
    new-array v0, v4, [B

    invoke-virtual {v3, v0}, Ljava/io/DataInputStream;->read([B)I

    const/4 v1, 0x0

    aget-byte v3, v0, v1

    invoke-static {v3}, Lcom/networkbench/agent/impl/j/a;->a(B)Lcom/networkbench/agent/impl/j/a;

    move-result-object v3

    const/4 v5, 0x1

    aget-byte v6, v0, v5

    aget-byte v7, v0, v2

    new-array v8, v2, [B

    aput-byte v6, v8, v1

    aput-byte v7, v8, v5

    const/4 v6, 0x3

    sub-int/2addr v4, v6

    new-array v7, v4, [B

    invoke-static {v0, v6, v7, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/j/a;->c()B

    move-result v0

    if-ne v0, v5, :cond_3

    invoke-static {v7}, Lcom/networkbench/agent/impl/j/c;->b([B)[B

    move-result-object v7

    array-length v0, v7

    if-ne v0, v2, :cond_3

    invoke-static {v7}, Lcom/networkbench/agent/impl/util/ak;->a([B)I

    move-result v0

    const/16 v4, 0x3e9

    if-ne v0, v4, :cond_3

    return-object v7

    :cond_3
    invoke-virtual {v3}, Lcom/networkbench/agent/impl/j/a;->b()B

    move-result v0

    if-ne v0, v5, :cond_4

    invoke-static {v7}, Lcom/networkbench/agent/impl/j/c;->d([B)[B

    move-result-object v7

    :cond_4
    array-length v0, v7

    add-int/2addr v0, v2

    new-array v0, v0, [B

    aget-byte v3, v8, v1

    aput-byte v3, v0, v1

    aget-byte v3, v8, v5

    aput-byte v3, v0, v5

    array-length v3, v7

    invoke-static {v7, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static c(Ljava/lang/String;)[B
    .locals 3

    .line 183
    const-string v0, "licenseBytes:"

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ak;->d(Ljava/lang/String;)[B

    move-result-object p0

    .line 184
    :try_start_0
    invoke-static {p0}, Lcom/networkbench/agent/impl/j/c;->a([B)[B

    move-result-object p0

    .line 185
    sget-object v1, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/networkbench/agent/impl/j/c;->b([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", len:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object p0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 49
    const-string v0, "&protocol=2&X-App-Process="

    .line 50
    invoke-static {p0, v0}, Ln00;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 51
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/InitUrlConnection;->isMainProcess()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final d()Ljava/net/Socket;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/networkbench/agent/impl/j/e;->f:Ljava/net/Socket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const-class v0, Lcom/networkbench/agent/impl/j/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/networkbench/agent/impl/j/e;->f:Ljava/net/Socket;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    sput-object v1, Lcom/networkbench/agent/impl/j/e;->f:Ljava/net/Socket;

    new-instance v1, Ljava/net/Socket;

    sget-object v2, Lcom/networkbench/agent/impl/j/e;->d:Ljava/lang/String;

    const v3, 0x9c5a

    invoke-direct {v1, v2, v3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/networkbench/agent/impl/j/e;->f:Ljava/net/Socket;

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    sget-object v0, Lcom/networkbench/agent/impl/j/e;->f:Ljava/net/Socket;

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static d([B)Lorg/json/JSONObject;
    .locals 2

    .line 47
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/networkbench/agent/impl/j/e;->b([B)[B

    move-result-object p0

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 48
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static e([B)[B
    .locals 4

    const-string v0, "process byte arr--after compress! length is:"

    const-string v1, "process byte arr--before compress!length is:"

    if-eqz p0, :cond_0

    array-length v2, p0

    if-lez v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p0

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/networkbench/agent/impl/j/c;->c([B)[B

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, p0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/networkbench/agent/impl/j/c;->a([B)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "encrypt array data error!"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method
