.class public LZjTIAZ/QQixUL;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LZjTIAZ/QQixUL$QQixUL;
    }
.end annotation


# static fields
.field public static i:I = 0x128c

.field public static j:I = 0xc17

.field public static final k:Ljava/util/Locale;


# instance fields
.field public a:J

.field public b:I

.field public c:I

.field public d:J

.field public final e:Ljava/util/ArrayList;

.field public f:Ljava/util/concurrent/Future;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final h:Ljava/text/DecimalFormat;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sput-object v0, LZjTIAZ/QQixUL;->k:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LZjTIAZ/QQixUL;->a:J

    iput-wide v0, p0, LZjTIAZ/QQixUL;->d:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LZjTIAZ/QQixUL;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, LZjTIAZ/QQixUL;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, LZjTIAZ/QQixUL;->k:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormat;

    iput-object v0, p0, LZjTIAZ/QQixUL;->h:Ljava/text/DecimalFormat;

    const-string p0, "#"

    invoke-virtual {v0, p0}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/util/Pair;
    .locals 25

    move-object/from16 v0, p0

    const-string v1, "ZJ`P[\u007fNNpVPN"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, v0, LZjTIAZ/QQixUL;->h:Ljava/text/DecimalFormat;

    const-string v6, ","

    iget-object v7, v0, LZjTIAZ/QQixUL;->e:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    const-string v9, ""

    if-eqz v8, :cond_0

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v9, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    iget-object v8, v0, LZjTIAZ/QQixUL;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v12

    if-nez v12, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move-wide/from16 v16, v2

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v18
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v18, :cond_2

    :try_start_1
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v2, v18

    check-cast v2, LZjTIAZ/CNATAC;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, v2, LZjTIAZ/CNATAC;->a:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget v10, v2, LZjTIAZ/CNATAC;->c:F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v19, v1

    :try_start_3
    iget v1, v2, LZjTIAZ/CNATAC;->d:F

    move-wide/from16 v20, v13

    iget-wide v13, v2, LZjTIAZ/CNATAC;->f:J

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v22, v13

    float-to-double v13, v1

    invoke-virtual {v5, v13, v14}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-double v10, v10

    invoke-virtual {v5, v10, v11}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, LZjTIAZ/CNATAC;->b:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\"\u00149"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, LZjTIAZ/CNATAC;->e:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\"\u0008$\u001f"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v1, v7

    move-object/from16 v24, v8

    :try_start_5
    iget-wide v7, v2, LZjTIAZ/CNATAC;->g:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v2, LZjTIAZ/CNATAC;->h:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, LZjTIAZ/CNATAC;->i:F

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ";"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, LZjTIAZ/CNATAC;->a:I

    int-to-long v2, v2

    add-long v2, v22, v2

    invoke-virtual {v5, v13, v14}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    sget-object v8, LZjTIAZ/DeHqqG;->a:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catch_0
    const-wide/16 v7, 0x0

    :goto_1
    add-long/2addr v2, v7

    :try_start_7
    invoke-virtual {v5, v10, v11}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v7
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    :goto_2
    move-object/from16 v1, v24

    :goto_3
    const/4 v2, 0x0

    goto/16 :goto_d

    :catch_1
    move-exception v0

    :goto_4
    move-object/from16 v1, v24

    goto/16 :goto_7

    :catch_2
    const-wide/16 v7, 0x0

    :goto_5
    add-long/2addr v2, v7

    add-long v16, v2, v16

    move-object v7, v1

    move-object/from16 v1, v19

    move-wide/from16 v13, v20

    move-object/from16 v8, v24

    const-wide/16 v2, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v24, v8

    goto :goto_2

    :catch_3
    move-exception v0

    :goto_6
    move-object/from16 v24, v8

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    move-object/from16 v19, v1

    goto :goto_6

    :catch_6
    move-exception v0

    move-object/from16 v19, v1

    goto :goto_6

    :cond_2
    move-object/from16 v19, v1

    move-object v1, v7

    move-object/from16 v24, v8

    move-wide/from16 v20, v13

    :try_start_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v20

    invoke-static/range {v19 .. v19}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ZJ`P[\u0012jVt_A\u001cvYBV]\u0010\u000b"

    invoke-static {v7}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".\rx\\EW\u0015\u0000"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, LZjTIAZ/QQixUL;->b:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\"\u0005`CW]XN+\u0011"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, LZjTIAZ/QQixUL;->c:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v6, v1, [Ljava/lang/Throwable;

    invoke-static {v5, v0, v6}, LwcQZwr/GpYFMu;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static/range {v19 .. v19}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ZJ`P[\u0012|dRPY_\u0018b^UL\u0010\u000b"

    invoke-static {v5}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "cV"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Throwable;

    invoke-static {v0, v1, v3}, LwcQZwr/GpYFMu;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    new-instance v0, Landroid/util/Pair;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object/from16 v1, v24

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-object v0

    :catchall_2
    move-exception v0

    move-object v1, v8

    goto/16 :goto_3

    :catch_7
    move-exception v0

    move-object/from16 v19, v1

    move-object v1, v8

    :goto_7
    :try_start_a
    invoke-static/range {v19 .. v19}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "K]vVCFFO\u007f\u0011\\R\u0015QRL]CEK\rZ@EBJ\u0003ASCI\\K"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Throwable;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v5}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {v0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget v0, LZjTIAZ/QQixUL;->j:I

    const/16 v1, 0xc16

    if-gt v0, v1, :cond_7

    :goto_8
    sget v0, LZjTIAZ/QQixUL;->j:I

    add-int/lit8 v1, v0, 0x41

    const/16 v2, 0x10

    if-eq v1, v2, :cond_4

    const/16 v2, 0xc4

    if-eq v1, v2, :cond_3

    const/16 v2, 0xef

    if-eq v1, v2, :cond_6

    goto :goto_8

    :cond_3
    shr-int/lit8 v1, v0, 0x75

    rem-int/lit8 v1, v1, 0x9

    :goto_9
    sput v1, LZjTIAZ/QQixUL;->j:I

    goto :goto_c

    :cond_4
    add-int v1, v0, v0

    xor-int/lit16 v1, v1, 0x612

    sput v1, LZjTIAZ/QQixUL;->j:I

    sget v1, LZjTIAZ/QQixUL;->i:I

    const/16 v2, 0x128b

    if-gt v1, v2, :cond_6

    :goto_a
    sget v1, LZjTIAZ/QQixUL;->i:I

    add-int/lit8 v0, v1, 0x75

    const/16 v2, 0x17

    if-eq v0, v2, :cond_5

    goto :goto_a

    :cond_5
    :goto_b
    sget v0, LZjTIAZ/QQixUL;->i:I

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x16

    sput v0, LZjTIAZ/QQixUL;->i:I

    goto :goto_b

    :cond_6
    :goto_c
    sget v1, LZjTIAZ/QQixUL;->j:I

    rem-int/lit8 v1, v1, 0x6a

    add-int/2addr v1, v0

    goto :goto_9

    :cond_7
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v9, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :catchall_3
    move-exception v0

    goto/16 :goto_3

    :goto_d
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method

.method public final b()Landroid/util/Pair;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LZjTIAZ/QQixUL;->f:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    :try_start_2
    const-string v2, "ZJ`P[\u007fNNpVPN"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HD|_VV\u000fT~\u0011RYA\u0016CW\\IC\u000cIO[Q\u001b\u0002"

    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Throwable;

    invoke-static {v2, v0, v3}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    const-string v2, "ZJ`P[\u007fNNpVPN"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HD|_VV\u000fT~\u0011RYA\u0016CW\\IC\u000cIO[Q\u001b\u0002"

    invoke-static {v4}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Throwable;

    invoke-static {v2, v0, v3}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_0
    :goto_2
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_1

    invoke-virtual {p0}, LZjTIAZ/QQixUL;->a()Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v2, p0, LZjTIAZ/QQixUL;->f:Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    :try_start_3
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v2

    goto :goto_6

    :catch_2
    move-exception v2

    goto :goto_4

    :catch_3
    move-exception v2

    goto :goto_5

    :goto_4
    :try_start_4
    const-string v3, "ZJ`P[\u007fNNpVPN"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HD|_VV\u000fT~\u0011RYA\u0016CW\\IC\u000cIO[Q\u001b\u0002"

    invoke-static {v5}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-static {v3, v2, v1}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_6

    :goto_5
    const-string v3, "ZJ`P[\u007fNNpVPN"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HD|_VV\u000fT~\u0011RYA\u0016CW\\IC\u000cIO[Q\u001b\u0002"

    invoke-static {v5}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-static {v3, v2, v1}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_1
    :goto_6
    monitor-exit p0

    return-object v0

    :goto_7
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    if-eqz v0, :cond_8

    const/4 v3, 0x1

    :try_start_0
    iget-object v4, v1, LZjTIAZ/QQixUL;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_8

    instance-of v4, v0, LZjTIAZ/GLipSu;

    if-nez v4, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-wide v4, v1, LZjTIAZ/QQixUL;->d:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v1, LZjTIAZ/QQixUL;->d:J

    check-cast v0, LZjTIAZ/GLipSu;

    iget v4, v0, LZjTIAZ/GLipSu;->c:I

    iget-object v5, v0, LZjTIAZ/GLipSu;->a:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    const/16 v6, 0x32

    if-ne v4, v3, :cond_1

    iget v7, v1, LZjTIAZ/QQixUL;->b:I

    if-lt v7, v6, :cond_2

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_0
    const/16 p1, 0x0

    goto/16 :goto_8

    :cond_1
    :goto_1
    if-eq v4, v3, :cond_8

    iget v7, v1, LZjTIAZ/QQixUL;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v7, v6, :cond_8

    :cond_2
    iget-object v7, v1, LZjTIAZ/QQixUL;->e:Ljava/util/ArrayList;

    if-ne v4, v3, :cond_4

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v11, :cond_4

    :try_start_1
    iget v9, v1, LZjTIAZ/QQixUL;->b:I

    if-ge v9, v6, :cond_3

    move v9, v6

    new-instance v6, LZjTIAZ/CNATAC;

    move-object v10, v7

    iget v7, v0, LZjTIAZ/GLipSu;->b:I

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    iget-wide v14, v1, LZjTIAZ/QQixUL;->a:J

    sub-long/2addr v12, v14

    move-object v14, v10

    iget v10, v0, LZjTIAZ/GLipSu;->c:I

    move-wide v15, v12

    invoke-virtual {v5, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    invoke-virtual {v5, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    move-object/from16 v17, v14

    invoke-virtual {v5, v8}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    const/16 p1, 0x0

    :try_start_2
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v2

    move/from16 v18, v10

    int-to-long v9, v2

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getSource()I

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move/from16 v20, v3

    move/from16 v21, v4

    int-to-long v3, v2

    :try_start_3
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getSize()F

    move-result v19

    move v2, v8

    move-wide/from16 v22, v3

    move-object/from16 v3, v17

    const/16 v4, 0x32

    move-wide/from16 v24, v9

    move/from16 v10, v18

    move-wide/from16 v17, v22

    move-wide v8, v15

    move-wide/from16 v15, v24

    invoke-direct/range {v6 .. v19}, LZjTIAZ/CNATAC;-><init>(IJIIFFIJJF)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v6, v1, LZjTIAZ/QQixUL;->b:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v1, LZjTIAZ/QQixUL;->b:I

    goto :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_8

    :catch_2
    move-exception v0

    move/from16 v20, v3

    goto/16 :goto_8

    :catch_3
    move-exception v0

    move/from16 v20, v3

    goto :goto_0

    :cond_3
    move/from16 v20, v3

    move/from16 v21, v4

    move v4, v6

    move-object v3, v7

    move v2, v8

    const/16 p1, 0x0

    :goto_3
    add-int/lit8 v8, v2, 0x1

    move-object v7, v3

    move v6, v4

    move/from16 v3, v20

    move/from16 v4, v21

    goto :goto_2

    :cond_4
    move/from16 v20, v3

    move/from16 v21, v4

    move v4, v6

    move-object v3, v7

    const/16 p1, 0x0

    move/from16 v6, v20

    move/from16 v2, v21

    if-eq v2, v6, :cond_5

    new-instance v6, LZjTIAZ/CNATAC;

    iget v7, v0, LZjTIAZ/GLipSu;->b:I

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iget-wide v12, v1, LZjTIAZ/QQixUL;->a:J

    sub-long/2addr v8, v12

    iget v10, v0, LZjTIAZ/GLipSu;->c:I

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v14

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    move-object v2, v5

    int-to-long v4, v0

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    move-wide v15, v4

    int-to-long v4, v0

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getSize()F

    move-result v19

    move-wide/from16 v17, v4

    invoke-direct/range {v6 .. v19}, LZjTIAZ/CNATAC;-><init>(IJIIFFIJJF)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, v1, LZjTIAZ/QQixUL;->c:I

    const/16 v20, 0x1

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, LZjTIAZ/QQixUL;->c:I

    goto :goto_4

    :cond_5
    move-object v2, v5

    :goto_4
    iget v0, v1, LZjTIAZ/QQixUL;->b:I

    const/16 v4, 0x32

    if-lt v0, v4, :cond_7

    iget v0, v1, LZjTIAZ/QQixUL;->c:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-lt v0, v4, :cond_7

    :try_start_4
    iget-object v0, v1, LZjTIAZ/QQixUL;->f:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v1, LZjTIAZ/QQixUL;->f:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const/16 v20, 0x1

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_6

    :goto_5
    invoke-static/range {v20 .. v20}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v3, LZjTIAZ/QQixUL$QQixUL;

    invoke-direct {v3, v1}, LZjTIAZ/QQixUL$QQixUL;-><init>(LZjTIAZ/QQixUL;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    iput-object v3, v1, LZjTIAZ/QQixUL;->f:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_7

    :goto_6
    :try_start_5
    invoke-static {v0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    :cond_7
    :goto_7
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, v1, LZjTIAZ/QQixUL;->a:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_9

    :goto_8
    const-string v1, "ZJ`P[\u007fNNpVPN"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "K]vVCFFO\u007f\u0011\\R\u0015FEWJOX_D@H\u0010UMVGM\u0006B^]to"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    new-array v3, v6, [Ljava/lang/Throwable;

    aput-object v0, v3, p1

    invoke-static {v1, v2, v3}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {v0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    :cond_8
    :goto_9
    return-void
.end method
