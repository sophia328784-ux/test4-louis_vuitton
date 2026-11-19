.class public abstract LZjTIAZ/AagQCC;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#\u00149\u001e\u0002\u001e\u0002\u0011=\u001c\u0004\u0010\u0018\u0007\u001b\u0015\u0018\u0006\u0006\u001d\u0001\u0003\u001e\u001c\u000c\u0013"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/AagQCC;->a:Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 22

    const-string v0, ","

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const-wide/16 v8, 0x2

    const v10, 0xf4240

    if-ge v5, v10, :cond_2

    const v11, 0x44cc29

    rem-int/2addr v11, v5

    mul-int/lit8 v11, v11, 0xb

    rem-int/2addr v11, v5

    if-nez v11, :cond_0

    add-int/lit8 v6, v6, 0x1

    :cond_0
    rem-int/lit8 v11, v5, 0x64

    if-nez v11, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v1

    cmp-long v11, v11, v8

    if-lez v11, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    div-int/lit8 v7, v7, 0x64

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const v5, 0x42055c29    # 33.34f

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2
    if-ge v11, v10, :cond_5

    int-to-float v14, v11

    add-float/2addr v5, v14

    const v14, 0x4199e979    # 19.239f

    mul-float/2addr v14, v5

    const v15, 0x4063d70a    # 3.56f

    div-float/2addr v14, v15

    const v15, 0x461c4000    # 10000.0f

    cmpg-float v14, v14, v15

    if-gez v14, :cond_3

    add-int/lit8 v12, v12, 0x1

    :cond_3
    rem-int/lit8 v14, v11, 0x64

    if-nez v14, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v1

    cmp-long v14, v14, v8

    if-lez v14, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    div-int/lit8 v13, v13, 0x64

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-wide v3, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_4
    const-wide v18, 0x412e848000000000L    # 1000000.0

    cmpg-double v18, v3, v18

    if-gez v18, :cond_7

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    const-wide/high16 v20, 0x403e000000000000L    # 30.0

    cmpl-double v18, v18, v20

    if-lez v18, :cond_6

    add-int/lit8 v16, v16, 0x1

    :cond_6
    double-to-int v5, v3

    rem-int/lit8 v5, v5, 0x64

    if-nez v5, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v19

    sub-long v19, v19, v1

    cmp-long v5, v19, v8

    if-lez v5, :cond_8

    :cond_7
    move/from16 v1, v16

    goto :goto_5

    :cond_8
    add-int/lit8 v17, v17, 0x1

    add-double/2addr v3, v14

    goto :goto_4

    :goto_5
    div-int/lit8 v2, v17, 0x64

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_6
    if-ge v5, v10, :cond_b

    move-wide/from16 v16, v8

    div-int v8, v5, v10

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->acos(D)D

    move-result-wide v8

    div-int v11, v5, v10

    move/from16 v20, v10

    int-to-double v10, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->asin(D)D

    move-result-wide v10

    add-double/2addr v8, v10

    div-int v10, v5, v20

    int-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->atan(D)D

    move-result-wide v10

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    cmpl-double v8, v8, v10

    if-lez v8, :cond_9

    add-int/lit8 v14, v14, 0x1

    :cond_9
    rem-int/lit8 v8, v5, 0x64

    if-nez v8, :cond_a

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v3

    cmp-long v8, v8, v16

    if-lez v8, :cond_a

    goto :goto_7

    :cond_a
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v8, v16

    move/from16 v10, v20

    goto :goto_6

    :cond_b
    move-wide/from16 v16, v8

    move/from16 v20, v10

    :goto_7
    div-int/lit8 v15, v15, 0x64

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    move/from16 v9, v20

    const/4 v5, 0x0

    const/4 v8, 0x1

    :goto_8
    if-ge v8, v9, :cond_d

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v3

    cmp-long v10, v10, v16

    if-lez v10, :cond_c

    goto :goto_9

    :cond_c
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_d
    :goto_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    sget-object v0, LZjTIAZ/AagQCC;->a:Ljava/lang/String;

    return-object v0
.end method
