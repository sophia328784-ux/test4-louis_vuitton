.class public abstract Lcom/perfectcorp/perfectlib/makeupcam/camera/GPUImageFilterBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/makeupcam/camera/GPUImageFilterBuilder$a;
    }
.end annotation


# direct methods
.method public static a(II)Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;
    .locals 15

    new-instance v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    sget-object v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeModel;->b:[Landroid/graphics/PointF;

    sget v12, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$d;->a:I

    sget v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/GPUImageFilterBuilder$a;->a:I

    if-lez v0, :cond_0

    :goto_0
    move v13, v0

    goto/16 :goto_a

    :cond_0
    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/utility/DeviceInfoUtils;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/utility/DeviceInfoUtils;->b:Ljava/lang/Integer;

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_b

    :cond_1
    :try_start_1
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v0, "/proc/meminfo"

    const-string v5, "r"

    invoke-direct {v4, v0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v0

    const-string v5, "^MemTotal:\\s+(\\d+)\\s+kB$"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/ymk/utility/DeviceInfoUtils;->b:Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v5, v0

    goto :goto_3

    :cond_2
    :goto_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :goto_3
    :try_start_4
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_5
    :try_start_6
    const-string v4, "DeviceInfoUtils"

    const-string v5, "Get MemTotal failed"

    invoke-static {v4, v5, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/utility/DeviceInfoUtils;->b:Ljava/lang/Integer;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :goto_7
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v4, v2

    sget-object v2, Lcom/perfectcorp/common/utility/CapacityUnit;->GBS:Lcom/perfectcorp/common/utility/CapacityUnit;

    const-wide/16 v8, 0x4

    invoke-virtual {v2, v8, v9}, Lcom/perfectcorp/common/utility/CapacityUnit;->c(J)J

    move-result-wide v8

    cmp-long v2, v4, v8

    if-gtz v2, :cond_3

    goto :goto_8

    :cond_3
    const/4 v0, 0x4

    if-gtz p1, :cond_4

    goto :goto_0

    :cond_4
    sget v2, Lcom/perfectcorp/common/opengl/GLInfo;->a:I

    div-int v2, v2, p1

    if-lt v2, v0, :cond_5

    goto/16 :goto_0

    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    goto/16 :goto_0

    :cond_6
    :goto_8
    sget v2, Lcom/perfectcorp/common/opengl/GLInfo;->a:I

    const/16 v4, 0x1000

    if-le v2, v4, :cond_9

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    sget-object v0, Lcom/perfectcorp/common/utility/CapacityUnit;->GBS:Lcom/perfectcorp/common/utility/CapacityUnit;

    const-wide/16 v8, 0x3

    invoke-virtual {v0, v8, v9}, Lcom/perfectcorp/common/utility/CapacityUnit;->c(J)J

    move-result-wide v8

    cmp-long v0, v4, v8

    if-gtz v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x2

    if-gtz p1, :cond_8

    goto/16 :goto_0

    :cond_8
    div-int v2, v2, p1

    if-lt v2, v0, :cond_5

    goto/16 :goto_0

    :cond_9
    :goto_9
    move v13, v3

    :goto_a
    const/4 v14, 0x1

    const/4 v2, 0x1

    const/16 v4, 0x384

    const/16 v5, 0x258

    const/4 v6, 0x2

    const/16 v8, 0xc8

    const/16 v9, 0xc8

    const/16 v10, 0x12c

    const/16 v11, 0x12c

    move v3, p0

    invoke-direct/range {v1 .. v14}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;-><init>(ZIIII[Landroid/graphics/PointF;IIIIIIZ)V

    return-object v1

    :goto_b
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p0
.end method
