.class public Lcom/networkbench/agent/impl/performance/coulometry/c/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/performance/coulometry/c/c/a;


# instance fields
.field a:I

.field private b:Ljava/io/File;

.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/net/xt_qtaguid/stats"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/c/d;->b:Ljava/io/File;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/performance/coulometry/c/c/d;->a(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/c/d;->c:J

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    iput p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/c/d;->a:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/coulometry/c/c/d;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/c/d;->c:J

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TrafficHook  this.allData : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/c/d;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    return-void
.end method

.method public b()J
    .locals 4

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/coulometry/c/c/d;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/c/d;->c:J

    sub-long v2, v0, v2

    iput-wide v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/c/d;->c:J

    return-wide v2
.end method

.method public c()J
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "TrafficLowData  reader.close() has error : "

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    iget-object v7, v0, Lcom/networkbench/agent/impl/performance/coulometry/c/c/d;->b:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-wide v6, v2

    move-wide v8, v6

    move-wide v10, v8

    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v12, "\\s+"

    invoke-virtual {v4, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x3

    aget-object v13, v4, v12

    const-string v14, "uid_tag_int"

    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    array-length v13, v4

    const/16 v14, 0x9

    if-lt v13, v14, :cond_2

    aget-object v12, v4, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iget v13, v0, Lcom/networkbench/agent/impl/performance/coulometry/c/c/d;->a:I

    if-ne v13, v12, :cond_2

    const/4 v13, 0x5

    aget-object v13, v4, v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    const/4 v15, 0x6

    aget-object v15, v4, v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-wide/from16 v16, v2

    :try_start_2
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v4

    const-string v4, "bucket.getUid() :"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "myUid :"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/networkbench/agent/impl/performance/coulometry/c/c/d;->a:I

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "rxBytes :"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "txBytes :"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    const/4 v4, 0x4

    aget-object v4, v18, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_1

    add-long/2addr v8, v13

    add-long/2addr v10, v2

    :cond_0
    :goto_1
    move-wide/from16 v2, v16

    goto/16 :goto_0

    :cond_1
    const/4 v12, 0x1

    if-ne v4, v12, :cond_0

    add-long v12, v16, v13

    add-long/2addr v6, v2

    move-wide v2, v12

    goto/16 :goto_0

    :catchall_0
    move-object v4, v5

    move-wide/from16 v2, v16

    goto :goto_3

    :catchall_1
    move-wide/from16 v16, v2

    move-object v4, v5

    goto :goto_3

    :cond_2
    move-wide/from16 v16, v2

    goto :goto_1

    :cond_3
    move-wide/from16 v16, v2

    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    :goto_2
    move-wide/from16 v2, v16

    goto :goto_4

    :catchall_2
    move-wide v6, v2

    move-wide v8, v6

    move-wide v10, v8

    :goto_3
    if-eqz v4, :cond_4

    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    :cond_4
    :goto_4
    add-long/2addr v2, v6

    add-long/2addr v2, v8

    add-long/2addr v2, v10

    const-wide/16 v0, 0x400

    div-long/2addr v2, v0

    return-wide v2
.end method
