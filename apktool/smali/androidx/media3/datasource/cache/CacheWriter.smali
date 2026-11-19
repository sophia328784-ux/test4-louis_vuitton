.class public final Landroidx/media3/datasource/cache/CacheWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/datasource/cache/CacheWriter$ProgressListener;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/datasource/cache/CacheDataSource;

.field public final b:Landroidx/media3/datasource/cache/Cache;

.field public final c:Landroidx/media3/datasource/DataSpec;

.field public final d:Ljava/lang/String;

.field public final e:[B

.field public final f:Landroidx/media3/datasource/cache/CacheWriter$ProgressListener;

.field public g:J

.field public h:J

.field public i:J


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/cache/CacheDataSource;Landroidx/media3/datasource/DataSpec;[BLandroidx/media3/datasource/cache/CacheWriter$ProgressListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/datasource/cache/CacheWriter;->a:Landroidx/media3/datasource/cache/CacheDataSource;

    iget-object v0, p1, Landroidx/media3/datasource/cache/CacheDataSource;->a:Landroidx/media3/datasource/cache/Cache;

    iput-object v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->b:Landroidx/media3/datasource/cache/Cache;

    iput-object p2, p0, Landroidx/media3/datasource/cache/CacheWriter;->c:Landroidx/media3/datasource/DataSpec;

    if-nez p3, :cond_0

    const/high16 p3, 0x20000

    new-array p3, p3, [B

    :cond_0
    iput-object p3, p0, Landroidx/media3/datasource/cache/CacheWriter;->e:[B

    iput-object p4, p0, Landroidx/media3/datasource/cache/CacheWriter;->f:Landroidx/media3/datasource/cache/CacheWriter$ProgressListener;

    iget-object p1, p1, Landroidx/media3/datasource/cache/CacheDataSource;->e:Landroidx/media3/datasource/cache/CacheKeyFactory;

    invoke-interface {p1, p2}, Landroidx/media3/datasource/cache/CacheKeyFactory;->b(Landroidx/media3/datasource/DataSpec;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/datasource/cache/CacheWriter;->d:Ljava/lang/String;

    iget-wide p1, p2, Landroidx/media3/datasource/DataSpec;->f:J

    iput-wide p1, p0, Landroidx/media3/datasource/cache/CacheWriter;->g:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/datasource/cache/CacheWriter;->c:Landroidx/media3/datasource/DataSpec;

    iget-wide v3, v1, Landroidx/media3/datasource/DataSpec;->f:J

    iget-wide v5, v1, Landroidx/media3/datasource/DataSpec;->g:J

    iget-object v2, v0, Landroidx/media3/datasource/cache/CacheWriter;->b:Landroidx/media3/datasource/cache/Cache;

    iget-object v7, v0, Landroidx/media3/datasource/cache/CacheWriter;->d:Ljava/lang/String;

    invoke-interface/range {v2 .. v7}, Landroidx/media3/datasource/cache/Cache;->g(JJLjava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Landroidx/media3/datasource/cache/CacheWriter;->i:J

    iget-wide v2, v1, Landroidx/media3/datasource/DataSpec;->g:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    iget-wide v6, v1, Landroidx/media3/datasource/DataSpec;->f:J

    add-long/2addr v6, v2

    iput-wide v6, v0, Landroidx/media3/datasource/cache/CacheWriter;->h:J

    goto :goto_0

    :cond_0
    iget-object v2, v0, Landroidx/media3/datasource/cache/CacheWriter;->b:Landroidx/media3/datasource/cache/Cache;

    iget-object v3, v0, Landroidx/media3/datasource/cache/CacheWriter;->d:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroidx/media3/datasource/cache/Cache;->a(Ljava/lang/String;)Landroidx/media3/datasource/cache/DefaultContentMetadata;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/datasource/cache/DefaultContentMetadata;->b()J

    move-result-wide v2

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    move-wide v2, v4

    :cond_1
    iput-wide v2, v0, Landroidx/media3/datasource/cache/CacheWriter;->h:J

    :goto_0
    iget-object v2, v0, Landroidx/media3/datasource/cache/CacheWriter;->f:Landroidx/media3/datasource/cache/CacheWriter$ProgressListener;

    if-eqz v2, :cond_3

    iget-wide v6, v0, Landroidx/media3/datasource/cache/CacheWriter;->h:J

    cmp-long v3, v6, v4

    if-nez v3, :cond_2

    move-wide v6, v4

    goto :goto_1

    :cond_2
    iget-wide v8, v1, Landroidx/media3/datasource/DataSpec;->f:J

    sub-long/2addr v6, v8

    :goto_1
    iget-wide v8, v0, Landroidx/media3/datasource/cache/CacheWriter;->i:J

    invoke-interface {v2, v6, v7, v8, v9}, Landroidx/media3/datasource/cache/CacheWriter$ProgressListener;->a(JJ)V

    :cond_3
    :goto_2
    iget-wide v6, v0, Landroidx/media3/datasource/cache/CacheWriter;->h:J

    cmp-long v3, v6, v4

    if-eqz v3, :cond_5

    iget-wide v8, v0, Landroidx/media3/datasource/cache/CacheWriter;->g:J

    cmp-long v8, v8, v6

    if-gez v8, :cond_4

    goto :goto_3

    :cond_4
    return-void

    :cond_5
    :goto_3
    const-wide v8, 0x7fffffffffffffffL

    if-nez v3, :cond_6

    move-wide v13, v8

    goto :goto_4

    :cond_6
    iget-wide v10, v0, Landroidx/media3/datasource/cache/CacheWriter;->g:J

    sub-long/2addr v6, v10

    move-wide v13, v6

    :goto_4
    iget-object v15, v0, Landroidx/media3/datasource/cache/CacheWriter;->d:Ljava/lang/String;

    iget-wide v11, v0, Landroidx/media3/datasource/cache/CacheWriter;->g:J

    iget-object v10, v0, Landroidx/media3/datasource/cache/CacheWriter;->b:Landroidx/media3/datasource/cache/Cache;

    invoke-interface/range {v10 .. v15}, Landroidx/media3/datasource/cache/Cache;->c(JJLjava/lang/String;)J

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmp-long v3, v6, v10

    if-lez v3, :cond_7

    iget-wide v8, v0, Landroidx/media3/datasource/cache/CacheWriter;->g:J

    add-long/2addr v8, v6

    iput-wide v8, v0, Landroidx/media3/datasource/cache/CacheWriter;->g:J

    move-wide/from16 v16, v4

    goto/16 :goto_10

    :cond_7
    neg-long v6, v6

    cmp-long v3, v6, v8

    if-nez v3, :cond_8

    move-wide v6, v4

    :cond_8
    iget-wide v8, v0, Landroidx/media3/datasource/cache/CacheWriter;->g:J

    add-long v10, v8, v6

    iget-wide v12, v0, Landroidx/media3/datasource/cache/CacheWriter;->h:J

    cmp-long v3, v10, v12

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v3, :cond_a

    cmp-long v3, v6, v4

    if-nez v3, :cond_9

    goto :goto_5

    :cond_9
    move v3, v11

    goto :goto_6

    :cond_a
    :goto_5
    move v3, v10

    :goto_6
    cmp-long v12, v6, v4

    iget-object v13, v0, Landroidx/media3/datasource/cache/CacheWriter;->a:Landroidx/media3/datasource/cache/CacheDataSource;

    if-eqz v12, :cond_b

    invoke-virtual {v1}, Landroidx/media3/datasource/DataSpec;->a()Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v12

    iput-wide v8, v12, Landroidx/media3/datasource/DataSpec$Builder;->f:J

    iput-wide v6, v12, Landroidx/media3/datasource/DataSpec$Builder;->g:J

    invoke-virtual {v12}, Landroidx/media3/datasource/DataSpec$Builder;->a()Landroidx/media3/datasource/DataSpec;

    move-result-object v6

    :try_start_0
    invoke-virtual {v13, v6}, Landroidx/media3/datasource/cache/CacheDataSource;->a(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    invoke-static {v13}, Landroidx/media3/datasource/DataSourceUtil;->a(Landroidx/media3/datasource/DataSource;)V

    :cond_b
    move-wide v6, v4

    move v10, v11

    :goto_7
    if-nez v10, :cond_c

    invoke-virtual {v1}, Landroidx/media3/datasource/DataSpec;->a()Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v6

    iput-wide v8, v6, Landroidx/media3/datasource/DataSpec$Builder;->f:J

    iput-wide v4, v6, Landroidx/media3/datasource/DataSpec$Builder;->g:J

    invoke-virtual {v6}, Landroidx/media3/datasource/DataSpec$Builder;->a()Landroidx/media3/datasource/DataSpec;

    move-result-object v6

    :try_start_1
    invoke-virtual {v13, v6}, Landroidx/media3/datasource/cache/CacheDataSource;->a(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    move-exception v0

    invoke-static {v13}, Landroidx/media3/datasource/DataSourceUtil;->a(Landroidx/media3/datasource/DataSource;)V

    throw v0

    :cond_c
    :goto_8
    if-eqz v3, :cond_f

    cmp-long v10, v6, v4

    if-eqz v10, :cond_f

    add-long/2addr v6, v8

    :try_start_2
    iget-wide v14, v0, Landroidx/media3/datasource/cache/CacheWriter;->h:J

    cmp-long v10, v14, v6

    if-nez v10, :cond_d

    goto :goto_a

    :cond_d
    iput-wide v6, v0, Landroidx/media3/datasource/cache/CacheWriter;->h:J

    if-eqz v2, :cond_f

    cmp-long v10, v6, v4

    if-nez v10, :cond_e

    move-wide v6, v4

    goto :goto_9

    :cond_e
    iget-wide v14, v1, Landroidx/media3/datasource/DataSpec;->f:J

    sub-long/2addr v6, v14

    :goto_9
    iget-wide v14, v0, Landroidx/media3/datasource/cache/CacheWriter;->i:J

    invoke-interface {v2, v6, v7, v14, v15}, Landroidx/media3/datasource/cache/CacheWriter$ProgressListener;->a(JJ)V

    :cond_f
    :goto_a
    move v6, v11

    move v7, v6

    :cond_10
    :goto_b
    const/4 v10, -0x1

    if-eq v6, v10, :cond_13

    iget-object v6, v0, Landroidx/media3/datasource/cache/CacheWriter;->e:[B

    array-length v12, v6

    invoke-virtual {v13, v6, v11, v12}, Landroidx/media3/datasource/cache/CacheDataSource;->read([BII)I

    move-result v6

    if-eq v6, v10, :cond_10

    int-to-long v14, v6

    move-wide/from16 v16, v4

    iget-wide v4, v0, Landroidx/media3/datasource/cache/CacheWriter;->i:J

    add-long/2addr v4, v14

    iput-wide v4, v0, Landroidx/media3/datasource/cache/CacheWriter;->i:J

    if-eqz v2, :cond_12

    iget-wide v14, v0, Landroidx/media3/datasource/cache/CacheWriter;->h:J

    cmp-long v10, v14, v16

    if-nez v10, :cond_11

    move-wide/from16 v14, v16

    goto :goto_c

    :cond_11
    iget-wide v11, v1, Landroidx/media3/datasource/DataSpec;->f:J

    sub-long/2addr v14, v11

    :goto_c
    invoke-interface {v2, v14, v15, v4, v5}, Landroidx/media3/datasource/cache/CacheWriter$ProgressListener;->a(JJ)V

    :cond_12
    add-int/2addr v7, v6

    move-wide/from16 v4, v16

    const/4 v11, 0x0

    goto :goto_b

    :catch_2
    move-exception v0

    goto :goto_e

    :cond_13
    move-wide/from16 v16, v4

    if-eqz v3, :cond_16

    int-to-long v3, v7

    add-long/2addr v3, v8

    iget-wide v5, v0, Landroidx/media3/datasource/cache/CacheWriter;->h:J

    cmp-long v5, v5, v3

    if-nez v5, :cond_14

    goto :goto_f

    :cond_14
    iput-wide v3, v0, Landroidx/media3/datasource/cache/CacheWriter;->h:J

    if-eqz v2, :cond_16

    cmp-long v5, v3, v16

    if-nez v5, :cond_15

    move-wide/from16 v3, v16

    goto :goto_d

    :cond_15
    iget-wide v5, v1, Landroidx/media3/datasource/DataSpec;->f:J

    sub-long/2addr v3, v5

    :goto_d
    iget-wide v5, v0, Landroidx/media3/datasource/cache/CacheWriter;->i:J

    invoke-interface {v2, v3, v4, v5, v6}, Landroidx/media3/datasource/cache/CacheWriter$ProgressListener;->a(JJ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_f

    :goto_e
    invoke-static {v13}, Landroidx/media3/datasource/DataSourceUtil;->a(Landroidx/media3/datasource/DataSource;)V

    throw v0

    :cond_16
    :goto_f
    invoke-virtual {v13}, Landroidx/media3/datasource/cache/CacheDataSource;->close()V

    int-to-long v3, v7

    add-long/2addr v8, v3

    iput-wide v8, v0, Landroidx/media3/datasource/cache/CacheWriter;->g:J

    :goto_10
    move-wide/from16 v4, v16

    goto/16 :goto_2
.end method
