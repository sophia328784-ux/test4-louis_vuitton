.class LZjTIAZ/DQwsTh$twiiz$ujSmfu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZjTIAZ/DQwsTh$twiiz;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic ZFqUdf:LZjTIAZ/DQwsTh$twiiz;


# direct methods
.method public constructor <init>(LZjTIAZ/DQwsTh$twiiz;)V
    .locals 0

    iput-object p1, p0, LZjTIAZ/DQwsTh$twiiz$ujSmfu;->ZFqUdf:LZjTIAZ/DQwsTh$twiiz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 27

    move-object/from16 v0, p0

    iget-object v0, v0, LZjTIAZ/DQwsTh$twiiz$ujSmfu;->ZFqUdf:LZjTIAZ/DQwsTh$twiiz;

    iget-object v1, v0, LZjTIAZ/DQwsTh$twiiz;->ZRQiWB:LZjTIAZ/DQwsTh;

    iget v2, v0, LZjTIAZ/DQwsTh$twiiz;->XccjsC:I

    const-string v3, "mJxCFFJpc^ZZzP`W[A\u0011\u000c"

    iget v0, v1, LZjTIAZ/DQwsTh;->b:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    invoke-virtual {v1}, LZjTIAZ/DQwsTh;->d()V

    return-void

    :cond_0
    const-string v5, "^JB"

    invoke-static {v5}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mJxCFFJpc^ZZzP`W[A\u0007\u000cnFN\\MGMC@\u0006dGMto&="

    invoke-static {v7}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, LZjTIAZ/DQwsTh;->o:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Throwable;

    invoke-static {v0, v6, v8}, LwcQZwr/GpYFMu;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    const-string v0, "]JyEZ\\H\u0000\\r\u000f\u001c"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, v1, LZjTIAZ/DQwsTh;->g:J

    iget v0, v1, LZjTIAZ/DQwsTh;->o:I

    int-to-long v12, v0

    add-long/2addr v10, v12

    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    sget-object v0, LZjTIAZ/DQwsTh;->z:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/text/DecimalFormat;

    const-string v0, "-\u000b6\u0010\u0010\u0011\u000c\u00032\u0012\u0016\u001f\u0016\u0015"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    move v15, v7

    const-wide/16 v16, 0x0

    :goto_0
    const-wide/16 v18, 0x3e8

    const/16 v20, 0x1

    if-nez v15, :cond_5

    const-wide/16 v21, 0x0

    invoke-virtual {v6}, Ljava/util/Random;->nextDouble()D

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, LZjTIAZ/DQwsTh;->n:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v0, "]mT\u001e\u0001\u0007\u0019"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move v4, v7

    move-wide/from16 v23, v21

    :goto_1
    :try_start_1
    array-length v7, v0

    if-ge v4, v7, :cond_1

    aget-byte v7, v0, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v25, 0x8

    shl-long v23, v23, v25

    and-int/lit16 v7, v7, 0xff

    move-object/from16 v25, v3

    move/from16 v26, v4

    int-to-long v3, v7

    or-long v23, v23, v3

    :try_start_2
    rem-long v23, v23, v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v4, v26, 0x1

    move-object/from16 v3, v25

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v25, v3

    goto :goto_2

    :cond_1
    move-object/from16 v25, v3

    goto :goto_3

    :goto_2
    :try_start_3
    invoke-static {v0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    :goto_3
    cmp-long v0, v23, v21

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v16, v3, v8

    move-wide/from16 v18, v3

    iget-wide v3, v1, LZjTIAZ/DQwsTh;->q:J

    sub-long v3, v18, v3

    invoke-static {v5}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "MMt__WAGt\u0011\u001d"

    invoke-static {v15}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\'\u0005"

    invoke-static {v14}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, LZjTIAZ/DQwsTh;->o:I

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ".Vz_EWK\u0000pE\u0015UASEY]CDB\u0017\u000e"

    invoke-static {v14}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, LZjTIAZ/DQwsTh;->p:I

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ".L{\u0013"

    invoke-static {v14}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, "cV"

    invoke-static {v14}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v14, 0x0

    new-array v15, v14, [Ljava/lang/Throwable;

    invoke-static {v0, v7, v15}, LwcQZwr/GpYFMu;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v0, v1, LZjTIAZ/DQwsTh;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, LZjTIAZ/DQwsTh;->t:Ljava/util/ArrayList;

    iget v7, v1, LZjTIAZ/DQwsTh;->p:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, LZjTIAZ/DQwsTh;->s:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v15, v20

    goto :goto_4

    :catch_2
    move-exception v0

    goto/16 :goto_6

    :catch_3
    move-exception v0

    goto/16 :goto_7

    :cond_2
    iget v0, v1, LZjTIAZ/DQwsTh;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, LZjTIAZ/DQwsTh;->p:I

    rem-int/lit16 v0, v0, 0x3e8

    if-nez v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v16, v3, v8

    iget-wide v3, v1, LZjTIAZ/DQwsTh;->j:J

    cmp-long v0, v16, v3

    if-lez v0, :cond_3

    iget v0, v1, LZjTIAZ/DQwsTh;->b:I

    const/4 v7, 0x2

    if-eq v0, v7, :cond_3

    add-long v3, v3, v18

    invoke-virtual {v1, v2, v3, v4}, LZjTIAZ/DQwsTh;->a(IJ)V

    goto :goto_5

    :cond_3
    :goto_4
    iget v0, v1, LZjTIAZ/DQwsTh;->b:I

    const/4 v7, 0x2

    if-ne v0, v7, :cond_4

    invoke-virtual {v1}, LZjTIAZ/DQwsTh;->d()V

    goto/16 :goto_9

    :cond_4
    move v4, v7

    move-object/from16 v3, v25

    const/4 v7, 0x0

    goto/16 :goto_0

    :catch_4
    move-exception v0

    move-object/from16 v25, v3

    goto :goto_6

    :catch_5
    move-exception v0

    move-object/from16 v25, v3

    goto/16 :goto_7

    :cond_5
    move-object/from16 v25, v3

    :goto_5
    if-nez v15, :cond_6

    goto/16 :goto_9

    :cond_6
    iget v0, v1, LZjTIAZ/DQwsTh;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, LZjTIAZ/DQwsTh;->o:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, LZjTIAZ/DQwsTh;->q:J

    iget v0, v1, LZjTIAZ/DQwsTh;->o:I

    invoke-virtual {v1, v0}, LZjTIAZ/DQwsTh;->l(I)V

    iget v0, v1, LZjTIAZ/DQwsTh;->o:I

    const/16 v3, 0xa

    const/4 v14, 0x0

    if-ge v0, v3, :cond_7

    iput v14, v1, LZjTIAZ/DQwsTh;->p:I

    iget-wide v3, v1, LZjTIAZ/DQwsTh;->h:J

    add-long v3, v3, v16

    invoke-virtual {v1, v2, v3, v4}, LZjTIAZ/DQwsTh;->a(IJ)V

    goto/16 :goto_9

    :cond_7
    iput v14, v1, LZjTIAZ/DQwsTh;->p:I

    invoke-virtual {v1}, LZjTIAZ/DQwsTh;->c()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, LZjTIAZ/DQwsTh;->r:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, LZjTIAZ/DQwsTh;->s:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, LZjTIAZ/DQwsTh;->t:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v1, v14}, LZjTIAZ/DQwsTh;->m(I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v6, v1, LZjTIAZ/DQwsTh;->m:J

    sub-long/2addr v3, v6

    iget-wide v6, v1, LZjTIAZ/DQwsTh;->f:J

    mul-long v6, v6, v18

    cmp-long v0, v3, v6

    if-lez v0, :cond_8

    if-nez v2, :cond_8

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, LZjTIAZ/DQwsTh;->g(IJ)V

    :cond_8
    invoke-virtual {v1}, LZjTIAZ/DQwsTh;->k()V
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_9

    :goto_6
    invoke-static {v5}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v25 .. v25}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x0

    new-array v2, v14, [Ljava/lang/Throwable;

    invoke-static {v1, v0, v2}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_9

    :goto_7
    invoke-static {v5}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v25 .. v25}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x0

    new-array v2, v14, [Ljava/lang/Throwable;

    invoke-static {v1, v0, v2}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    sget v0, LZjTIAZ/DQwsTh;->x:I

    xor-int/lit16 v0, v0, 0x1c22

    if-eqz v0, :cond_a

    :goto_8
    sget v0, LZjTIAZ/DQwsTh;->x:I

    add-int/lit16 v1, v0, 0x8f

    const/4 v2, 0x5

    if-eq v1, v2, :cond_9

    goto :goto_8

    :cond_9
    shr-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x10

    sput v0, LZjTIAZ/DQwsTh;->x:I

    goto :goto_8

    :cond_a
    :goto_9
    return-void
.end method
