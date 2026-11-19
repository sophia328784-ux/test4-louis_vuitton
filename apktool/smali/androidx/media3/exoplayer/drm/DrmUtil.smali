.class public abstract Landroidx/media3/exoplayer/drm/DrmUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/drm/DrmUtil$ErrorSource;
    }
.end annotation


# direct methods
.method public static a(Landroidx/media3/datasource/DataSource;Ljava/lang/String;[BLjava/util/Map;)Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response;
    .locals 18

    new-instance v1, Landroidx/media3/datasource/StatsDataSource;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Landroidx/media3/datasource/StatsDataSource;-><init>(Landroidx/media3/datasource/DataSource;)V

    new-instance v0, Landroidx/media3/datasource/DataSpec$Builder;

    invoke-direct {v0}, Landroidx/media3/datasource/DataSpec$Builder;-><init>()V

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/datasource/DataSpec$Builder;->a:Landroid/net/Uri;

    move-object/from16 v2, p3

    iput-object v2, v0, Landroidx/media3/datasource/DataSpec$Builder;->e:Ljava/util/Map;

    const/4 v2, 0x2

    iput v2, v0, Landroidx/media3/datasource/DataSpec$Builder;->c:I

    move-object/from16 v2, p2

    iput-object v2, v0, Landroidx/media3/datasource/DataSpec$Builder;->d:[B

    const/4 v2, 0x1

    iput v2, v0, Landroidx/media3/datasource/DataSpec$Builder;->i:I

    invoke-virtual {v0}, Landroidx/media3/datasource/DataSpec$Builder;->a()Landroidx/media3/datasource/DataSpec;

    move-result-object v4

    move-object v15, v4

    const/4 v3, 0x0

    :goto_0
    :try_start_0
    new-instance v5, Landroidx/media3/datasource/DataSourceInputStream;

    invoke-direct {v5, v1, v15}, Landroidx/media3/datasource/DataSourceInputStream;-><init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    invoke-static {v5}, Lcom/google/common/io/ByteStreams;->b(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_1
    .catch Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v6, v3

    :try_start_2
    new-instance v3, Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-object v7, v1, Landroidx/media3/datasource/StatsDataSource;->c:Landroid/net/Uri;

    iget-object v8, v1, Landroidx/media3/datasource/StatsDataSource;->d:Ljava/util/Map;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    array-length v11, v0
    :try_end_2
    .catch Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    int-to-long v13, v11

    move-object v12, v5

    move v11, v6

    move-object v6, v4

    const-wide/16 v4, -0x1

    move/from16 v16, v11

    move-object/from16 v17, v12

    const-wide/16 v11, 0x0

    move/from16 v2, v16

    :try_start_3
    invoke-direct/range {v3 .. v14}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(JLandroidx/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    new-instance v4, Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response$Builder;

    invoke-direct {v4, v0}, Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response$Builder;-><init>([B)V

    iput-object v3, v4, Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response$Builder;->b:Landroidx/media3/exoplayer/source/LoadEventInfo;

    new-instance v0, Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response;

    invoke-direct {v0, v4}, Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response;-><init>(Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response$Builder;)V
    :try_end_3
    .catch Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static/range {v17 .. v17}, Landroidx/media3/common/util/Util;->h(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    move-object v9, v0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v6, v4

    move-object/from16 v17, v5

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v17, v5

    move v2, v6

    move-object v6, v4

    goto :goto_2

    :catch_3
    move-exception v0

    move v2, v3

    move-object v6, v4

    move-object/from16 v17, v5

    :goto_2
    :try_start_5
    iget v3, v0, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;->d:I

    const/16 v4, 0x133

    const/4 v5, 0x0

    if-eq v3, v4, :cond_0

    const/16 v4, 0x134

    if-ne v3, v4, :cond_1

    :cond_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    iget-object v3, v0, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;->e:Ljava/util/Map;

    if-eqz v3, :cond_1

    const-string v4, "Location"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    goto :goto_3

    :cond_1
    const/4 v4, 0x0

    :goto_3
    if-eqz v5, :cond_2

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v15}, Landroidx/media3/datasource/DataSpec;->a()Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v0

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/datasource/DataSpec$Builder;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroidx/media3/datasource/DataSpec$Builder;->a()Landroidx/media3/datasource/DataSpec;

    move-result-object v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static/range {v17 .. v17}, Landroidx/media3/common/util/Util;->h(Ljava/io/Closeable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-object v4, v6

    goto/16 :goto_0

    :cond_2
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_4
    :try_start_8
    invoke-static/range {v17 .. v17}, Landroidx/media3/common/util/Util;->h(Ljava/io/Closeable;)V

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_4
    move-exception v0

    move-object v6, v4

    goto :goto_1

    :goto_5
    new-instance v3, Landroidx/media3/exoplayer/drm/MediaDrmCallbackException;

    iget-object v5, v1, Landroidx/media3/datasource/StatsDataSource;->c:Landroid/net/Uri;

    iget-object v0, v1, Landroidx/media3/datasource/StatsDataSource;->a:Landroidx/media3/datasource/DataSource;

    invoke-interface {v0}, Landroidx/media3/datasource/DataSource;->f()Ljava/util/Map;

    move-result-object v0

    iget-wide v7, v1, Landroidx/media3/datasource/StatsDataSource;->b:J

    move-object v4, v6

    move-object v6, v0

    invoke-direct/range {v3 .. v9}, Landroidx/media3/exoplayer/drm/MediaDrmCallbackException;-><init>(Landroidx/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JLjava/lang/Throwable;)V

    throw v3
.end method

.method public static b(Ljava/lang/Throwable;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    instance-of v0, p0, Ljava/lang/NoSuchMethodError;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Landroid/media/NotProvisionedException;.<init>("

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Ljava/lang/Throwable;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    instance-of v0, p0, Ljava/lang/NoSuchMethodError;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Landroid/media/ResourceBusyException;.<init>("

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
