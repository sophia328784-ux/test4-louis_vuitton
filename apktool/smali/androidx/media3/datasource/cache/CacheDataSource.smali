.class public final Landroidx/media3/datasource/cache/CacheDataSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/datasource/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/datasource/cache/CacheDataSource$EventListener;,
        Landroidx/media3/datasource/cache/CacheDataSource$CacheIgnoredReason;,
        Landroidx/media3/datasource/cache/CacheDataSource$Flags;,
        Landroidx/media3/datasource/cache/CacheDataSource$Factory;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/datasource/cache/Cache;

.field public final b:Landroidx/media3/datasource/DataSource;

.field public final c:Landroidx/media3/datasource/TeeDataSource;

.field public final d:Landroidx/media3/datasource/DataSource;

.field public final e:Landroidx/media3/datasource/cache/CacheKeyFactory;

.field public final f:Landroidx/media3/datasource/cache/CacheDataSource$EventListener;

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public j:Landroid/net/Uri;

.field public k:Landroidx/media3/datasource/DataSpec;

.field public l:Landroidx/media3/datasource/DataSpec;

.field public m:Landroidx/media3/datasource/DataSource;

.field public n:J

.field public o:J

.field public p:J

.field public q:Landroidx/media3/datasource/cache/CacheSpan;

.field public r:Z

.field public s:Z

.field public t:J

.field public u:J


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/DataSource;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/datasource/cache/CacheDataSource;-><init>(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/DataSource;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/DataSource;I)V
    .locals 7

    .line 65
    new-instance v3, Landroidx/media3/datasource/FileDataSource;

    invoke-direct {v3}, Landroidx/media3/datasource/FileDataSource;-><init>()V

    new-instance v4, Landroidx/media3/datasource/cache/CacheDataSink;

    const-wide/32 v0, 0x500000

    invoke-direct {v4, p1, v0, v1}, Landroidx/media3/datasource/cache/CacheDataSink;-><init>(Landroidx/media3/datasource/cache/Cache;J)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Landroidx/media3/datasource/cache/CacheDataSource;-><init>(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSink;ILandroidx/media3/datasource/cache/CacheDataSource$EventListener;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSink;ILandroidx/media3/datasource/cache/CacheDataSource$EventListener;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 66
    invoke-direct/range {v0 .. v7}, Landroidx/media3/datasource/cache/CacheDataSource;-><init>(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSink;ILandroidx/media3/datasource/cache/CacheDataSource$EventListener;Landroidx/media3/datasource/cache/CacheKeyFactory;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSink;ILandroidx/media3/datasource/cache/CacheDataSource$EventListener;Landroidx/media3/datasource/cache/CacheKeyFactory;)V
    .locals 9

    const/16 v7, -0x3e8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    move-object v8, p6

    move-object/from16 v5, p7

    .line 67
    invoke-direct/range {v0 .. v8}, Landroidx/media3/datasource/cache/CacheDataSource;-><init>(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSink;Landroidx/media3/datasource/cache/CacheKeyFactory;IILandroidx/media3/datasource/cache/CacheDataSource$EventListener;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSink;Landroidx/media3/datasource/cache/CacheKeyFactory;IILandroidx/media3/datasource/cache/CacheDataSource$EventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->a:Landroidx/media3/datasource/cache/Cache;

    iput-object p3, p0, Landroidx/media3/datasource/cache/CacheDataSource;->b:Landroidx/media3/datasource/DataSource;

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    sget-object p5, Landroidx/media3/datasource/cache/CacheKeyFactory;->c0:Lmd;

    :goto_0
    iput-object p5, p0, Landroidx/media3/datasource/cache/CacheDataSource;->e:Landroidx/media3/datasource/cache/CacheKeyFactory;

    and-int/lit8 p1, p6, 0x1

    const/4 p3, 0x0

    const/4 p5, 0x1

    if-eqz p1, :cond_1

    move p1, p5

    goto :goto_1

    :cond_1
    move p1, p3

    :goto_1
    iput-boolean p1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->g:Z

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_2

    move p1, p5

    goto :goto_2

    :cond_2
    move p1, p3

    :goto_2
    iput-boolean p1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->h:Z

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_3

    move p3, p5

    :cond_3
    iput-boolean p3, p0, Landroidx/media3/datasource/cache/CacheDataSource;->i:Z

    const/4 p1, 0x0

    if-eqz p2, :cond_5

    iput-object p2, p0, Landroidx/media3/datasource/cache/CacheDataSource;->d:Landroidx/media3/datasource/DataSource;

    if-eqz p4, :cond_4

    new-instance p1, Landroidx/media3/datasource/TeeDataSource;

    invoke-direct {p1, p2, p4}, Landroidx/media3/datasource/TeeDataSource;-><init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSink;)V

    :cond_4
    iput-object p1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->c:Landroidx/media3/datasource/TeeDataSource;

    goto :goto_3

    :cond_5
    sget-object p2, Landroidx/media3/datasource/PlaceholderDataSource;->a:Landroidx/media3/datasource/PlaceholderDataSource;

    iput-object p2, p0, Landroidx/media3/datasource/cache/CacheDataSource;->d:Landroidx/media3/datasource/DataSource;

    iput-object p1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->c:Landroidx/media3/datasource/TeeDataSource;

    :goto_3
    iput-object p8, p0, Landroidx/media3/datasource/cache/CacheDataSource;->f:Landroidx/media3/datasource/cache/CacheDataSource$EventListener;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/datasource/DataSpec;)J
    .locals 13

    iget-object v0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->a:Landroidx/media3/datasource/cache/Cache;

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Landroidx/media3/datasource/cache/CacheDataSource;->e:Landroidx/media3/datasource/cache/CacheKeyFactory;

    invoke-interface {v2, p1}, Landroidx/media3/datasource/cache/CacheKeyFactory;->b(Landroidx/media3/datasource/DataSpec;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/media3/datasource/DataSpec;->a()Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v3

    iget-wide v4, p1, Landroidx/media3/datasource/DataSpec;->f:J

    iget-wide v6, p1, Landroidx/media3/datasource/DataSpec;->g:J

    iput-object v2, v3, Landroidx/media3/datasource/DataSpec$Builder;->h:Ljava/lang/String;

    invoke-virtual {v3}, Landroidx/media3/datasource/DataSpec$Builder;->a()Landroidx/media3/datasource/DataSpec;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->k:Landroidx/media3/datasource/DataSpec;

    iget-object v3, p1, Landroidx/media3/datasource/DataSpec;->a:Landroid/net/Uri;

    invoke-interface {v0, v2}, Landroidx/media3/datasource/cache/Cache;->a(Ljava/lang/String;)Landroidx/media3/datasource/cache/DefaultContentMetadata;

    move-result-object v8

    const-string v9, "exo_redir"

    iget-object v8, v8, Landroidx/media3/datasource/cache/DefaultContentMetadata;->b:Ljava/util/Map;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    new-instance v10, Ljava/lang/String;

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v8, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    :cond_0
    move-object v10, v9

    :goto_0
    if-nez v10, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    :goto_1
    if-eqz v9, :cond_2

    move-object v3, v9

    :cond_2
    iput-object v3, p0, Landroidx/media3/datasource/cache/CacheDataSource;->j:Landroid/net/Uri;

    iput-wide v4, p0, Landroidx/media3/datasource/cache/CacheDataSource;->o:J

    iget-boolean v3, p0, Landroidx/media3/datasource/cache/CacheDataSource;->h:Z

    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Landroidx/media3/datasource/cache/CacheDataSource;->r:Z

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    iget-boolean v3, p0, Landroidx/media3/datasource/cache/CacheDataSource;->i:Z

    if-eqz v3, :cond_4

    cmp-long v3, v6, v9

    if-nez v3, :cond_4

    :goto_2
    move v3, v1

    goto :goto_3

    :cond_4
    move v3, v8

    :goto_3
    iput-boolean v3, p0, Landroidx/media3/datasource/cache/CacheDataSource;->s:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroidx/media3/datasource/cache/CacheDataSource;->f:Landroidx/media3/datasource/cache/CacheDataSource$EventListener;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Landroidx/media3/datasource/cache/CacheDataSource$EventListener;->a()V

    :cond_5
    iget-boolean v3, p0, Landroidx/media3/datasource/cache/CacheDataSource;->s:Z

    const-wide/16 v11, 0x0

    if-eqz v3, :cond_6

    iput-wide v9, p0, Landroidx/media3/datasource/cache/CacheDataSource;->p:J

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_6

    :cond_6
    invoke-interface {v0, v2}, Landroidx/media3/datasource/cache/Cache;->a(Ljava/lang/String;)Landroidx/media3/datasource/cache/DefaultContentMetadata;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/datasource/cache/DefaultContentMetadata;->b()J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/media3/datasource/cache/CacheDataSource;->p:J

    cmp-long v0, v2, v9

    if-eqz v0, :cond_8

    sub-long/2addr v2, v4

    iput-wide v2, p0, Landroidx/media3/datasource/cache/CacheDataSource;->p:J

    cmp-long v0, v2, v11

    if-ltz v0, :cond_7

    goto :goto_4

    :cond_7
    new-instance p1, Landroidx/media3/datasource/DataSourceException;

    const/16 v0, 0x7d8

    invoke-direct {p1, v0}, Landroidx/media3/datasource/DataSourceException;-><init>(I)V

    throw p1

    :cond_8
    :goto_4
    cmp-long v0, v6, v9

    if-eqz v0, :cond_a

    iget-wide v2, p0, Landroidx/media3/datasource/cache/CacheDataSource;->p:J

    cmp-long v4, v2, v9

    if-nez v4, :cond_9

    move-wide v2, v6

    goto :goto_5

    :cond_9
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :goto_5
    iput-wide v2, p0, Landroidx/media3/datasource/cache/CacheDataSource;->p:J

    :cond_a
    iget-wide v2, p0, Landroidx/media3/datasource/cache/CacheDataSource;->p:J

    cmp-long v4, v2, v11

    if-gtz v4, :cond_b

    cmp-long v2, v2, v9

    if-nez v2, :cond_c

    :cond_b
    invoke-virtual {p0, p1, v8}, Landroidx/media3/datasource/cache/CacheDataSource;->p(Landroidx/media3/datasource/DataSpec;Z)V

    :cond_c
    if-eqz v0, :cond_d

    return-wide v6

    :cond_d
    iget-wide p0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->p:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide p0

    :goto_6
    iget-object v0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->m:Landroidx/media3/datasource/DataSource;

    iget-object v2, p0, Landroidx/media3/datasource/cache/CacheDataSource;->b:Landroidx/media3/datasource/DataSource;

    if-eq v0, v2, :cond_e

    instance-of v0, p1, Landroidx/media3/datasource/cache/Cache$CacheException;

    if-eqz v0, :cond_f

    :cond_e
    iput-boolean v1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->r:Z

    :cond_f
    throw p1
.end method

.method public final c(Landroidx/media3/datasource/TransferListener;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->b:Landroidx/media3/datasource/DataSource;

    invoke-interface {v0, p1}, Landroidx/media3/datasource/DataSource;->c(Landroidx/media3/datasource/TransferListener;)V

    iget-object p0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->d:Landroidx/media3/datasource/DataSource;

    invoke-interface {p0, p1}, Landroidx/media3/datasource/DataSource;->c(Landroidx/media3/datasource/TransferListener;)V

    return-void
.end method

.method public final close()V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->k:Landroidx/media3/datasource/DataSpec;

    iput-object v0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->j:Landroid/net/Uri;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->o:J

    iget-object v2, p0, Landroidx/media3/datasource/cache/CacheDataSource;->f:Landroidx/media3/datasource/cache/CacheDataSource$EventListener;

    if-eqz v2, :cond_0

    iget-wide v3, p0, Landroidx/media3/datasource/cache/CacheDataSource;->t:J

    cmp-long v3, v3, v0

    if-lez v3, :cond_0

    iget-object v3, p0, Landroidx/media3/datasource/cache/CacheDataSource;->a:Landroidx/media3/datasource/cache/Cache;

    invoke-interface {v3}, Landroidx/media3/datasource/cache/Cache;->b()J

    invoke-interface {v2}, Landroidx/media3/datasource/cache/CacheDataSource$EventListener;->b()V

    iput-wide v0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->t:J

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/media3/datasource/cache/CacheDataSource;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->m:Landroidx/media3/datasource/DataSource;

    iget-object v2, p0, Landroidx/media3/datasource/cache/CacheDataSource;->b:Landroidx/media3/datasource/DataSource;

    if-eq v1, v2, :cond_1

    instance-of v1, v0, Landroidx/media3/datasource/cache/Cache$CacheException;

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->r:Z

    :cond_2
    throw v0
.end method

.method public final f()Ljava/util/Map;
    .locals 2

    iget-object v0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->m:Landroidx/media3/datasource/DataSource;

    iget-object v1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->b:Landroidx/media3/datasource/DataSource;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->d:Landroidx/media3/datasource/DataSource;

    invoke-interface {p0}, Landroidx/media3/datasource/DataSource;->f()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->j:Landroid/net/Uri;

    return-object p0
.end method

.method public final o()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/datasource/cache/CacheDataSource;->a:Landroidx/media3/datasource/cache/Cache;

    iget-object v1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->m:Landroidx/media3/datasource/DataSource;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1}, Landroidx/media3/datasource/DataSource;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v2, p0, Landroidx/media3/datasource/cache/CacheDataSource;->l:Landroidx/media3/datasource/DataSpec;

    iput-object v2, p0, Landroidx/media3/datasource/cache/CacheDataSource;->m:Landroidx/media3/datasource/DataSource;

    iget-object v1, p0, Landroidx/media3/datasource/cache/CacheDataSource;->q:Landroidx/media3/datasource/cache/CacheSpan;

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Landroidx/media3/datasource/cache/Cache;->f(Landroidx/media3/datasource/cache/CacheSpan;)V

    iput-object v2, p0, Landroidx/media3/datasource/cache/CacheDataSource;->q:Landroidx/media3/datasource/cache/CacheSpan;

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    iput-object v2, p0, Landroidx/media3/datasource/cache/CacheDataSource;->l:Landroidx/media3/datasource/DataSpec;

    iput-object v2, p0, Landroidx/media3/datasource/cache/CacheDataSource;->m:Landroidx/media3/datasource/DataSource;

    iget-object v3, p0, Landroidx/media3/datasource/cache/CacheDataSource;->q:Landroidx/media3/datasource/cache/CacheSpan;

    if-eqz v3, :cond_2

    invoke-interface {v0, v3}, Landroidx/media3/datasource/cache/Cache;->f(Landroidx/media3/datasource/cache/CacheSpan;)V

    iput-object v2, p0, Landroidx/media3/datasource/cache/CacheDataSource;->q:Landroidx/media3/datasource/cache/CacheSpan;

    :cond_2
    throw v1
.end method

.method public final p(Landroidx/media3/datasource/DataSpec;Z)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v7, v1, Landroidx/media3/datasource/DataSpec;->h:Ljava/lang/String;

    sget-object v2, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    iget-boolean v2, v0, Landroidx/media3/datasource/cache/CacheDataSource;->s:Z

    move v3, v2

    iget-object v2, v0, Landroidx/media3/datasource/cache/CacheDataSource;->a:Landroidx/media3/datasource/cache/Cache;

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-wide v3, v0, Landroidx/media3/datasource/cache/CacheDataSource;->o:J

    iget-boolean v5, v0, Landroidx/media3/datasource/cache/CacheDataSource;->g:Z

    if-eqz v5, :cond_1

    :try_start_0
    iget-wide v5, v0, Landroidx/media3/datasource/cache/CacheDataSource;->p:J

    invoke-interface/range {v2 .. v7}, Landroidx/media3/datasource/cache/Cache;->d(JJLjava/lang/String;)Landroidx/media3/datasource/cache/CacheSpan;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    :cond_1
    iget-wide v5, v0, Landroidx/media3/datasource/cache/CacheDataSource;->p:J

    invoke-interface/range {v2 .. v7}, Landroidx/media3/datasource/cache/Cache;->e(JJLjava/lang/String;)Landroidx/media3/datasource/cache/CacheSpan;

    move-result-object v3

    :goto_0
    iget-object v4, v0, Landroidx/media3/datasource/cache/CacheDataSource;->c:Landroidx/media3/datasource/TeeDataSource;

    iget-object v5, v0, Landroidx/media3/datasource/cache/CacheDataSource;->b:Landroidx/media3/datasource/DataSource;

    iget-object v6, v0, Landroidx/media3/datasource/cache/CacheDataSource;->d:Landroidx/media3/datasource/DataSource;

    if-nez v3, :cond_2

    invoke-virtual {v1}, Landroidx/media3/datasource/DataSpec;->a()Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v11

    iget-wide v12, v0, Landroidx/media3/datasource/cache/CacheDataSource;->o:J

    iput-wide v12, v11, Landroidx/media3/datasource/DataSpec$Builder;->f:J

    iget-wide v12, v0, Landroidx/media3/datasource/cache/CacheDataSource;->p:J

    iput-wide v12, v11, Landroidx/media3/datasource/DataSpec$Builder;->g:J

    invoke-virtual {v11}, Landroidx/media3/datasource/DataSpec$Builder;->a()Landroidx/media3/datasource/DataSpec;

    move-result-object v11

    move-object v10, v4

    move-object/from16 v18, v5

    move-object v4, v6

    const-wide/16 v16, -0x1

    goto :goto_2

    :cond_2
    iget-wide v11, v3, Landroidx/media3/datasource/cache/CacheSpan;->d:J

    iget-boolean v13, v3, Landroidx/media3/datasource/cache/CacheSpan;->e:Z

    if-eqz v13, :cond_4

    iget-object v13, v3, Landroidx/media3/datasource/cache/CacheSpan;->f:Ljava/io/File;

    invoke-static {v13}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v13

    iget-wide v14, v3, Landroidx/media3/datasource/cache/CacheSpan;->c:J

    const-wide/16 v16, -0x1

    iget-wide v8, v0, Landroidx/media3/datasource/cache/CacheDataSource;->o:J

    sub-long/2addr v8, v14

    sub-long/2addr v11, v8

    move-object v10, v4

    move-object/from16 v18, v5

    iget-wide v4, v0, Landroidx/media3/datasource/cache/CacheDataSource;->p:J

    cmp-long v19, v4, v16

    if-eqz v19, :cond_3

    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    :cond_3
    invoke-virtual {v1}, Landroidx/media3/datasource/DataSpec;->a()Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v4

    iput-object v13, v4, Landroidx/media3/datasource/DataSpec$Builder;->a:Landroid/net/Uri;

    iput-wide v14, v4, Landroidx/media3/datasource/DataSpec$Builder;->b:J

    iput-wide v8, v4, Landroidx/media3/datasource/DataSpec$Builder;->f:J

    iput-wide v11, v4, Landroidx/media3/datasource/DataSpec$Builder;->g:J

    invoke-virtual {v4}, Landroidx/media3/datasource/DataSpec$Builder;->a()Landroidx/media3/datasource/DataSpec;

    move-result-object v11

    move-object/from16 v4, v18

    goto :goto_2

    :cond_4
    move-object v10, v4

    move-object/from16 v18, v5

    const-wide/16 v16, -0x1

    cmp-long v4, v11, v16

    iget-wide v8, v0, Landroidx/media3/datasource/cache/CacheDataSource;->p:J

    if-nez v4, :cond_5

    move-wide v11, v8

    goto :goto_1

    :cond_5
    cmp-long v4, v8, v16

    if-eqz v4, :cond_6

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    :cond_6
    :goto_1
    invoke-virtual {v1}, Landroidx/media3/datasource/DataSpec;->a()Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v4

    iget-wide v8, v0, Landroidx/media3/datasource/cache/CacheDataSource;->o:J

    iput-wide v8, v4, Landroidx/media3/datasource/DataSpec$Builder;->f:J

    iput-wide v11, v4, Landroidx/media3/datasource/DataSpec$Builder;->g:J

    invoke-virtual {v4}, Landroidx/media3/datasource/DataSpec$Builder;->a()Landroidx/media3/datasource/DataSpec;

    move-result-object v11

    if-eqz v10, :cond_7

    move-object v4, v10

    goto :goto_2

    :cond_7
    invoke-interface {v2, v3}, Landroidx/media3/datasource/cache/Cache;->f(Landroidx/media3/datasource/cache/CacheSpan;)V

    move-object v4, v6

    const/4 v3, 0x0

    :goto_2
    iget-boolean v5, v0, Landroidx/media3/datasource/cache/CacheDataSource;->s:Z

    if-nez v5, :cond_8

    if-ne v4, v6, :cond_8

    iget-wide v8, v0, Landroidx/media3/datasource/cache/CacheDataSource;->o:J

    const-wide/32 v12, 0x19000

    add-long/2addr v8, v12

    goto :goto_3

    :cond_8
    const-wide v8, 0x7fffffffffffffffL

    :goto_3
    iput-wide v8, v0, Landroidx/media3/datasource/cache/CacheDataSource;->u:J

    const/4 v5, 0x0

    const/4 v8, 0x1

    if-eqz p2, :cond_c

    iget-object v9, v0, Landroidx/media3/datasource/cache/CacheDataSource;->m:Landroidx/media3/datasource/DataSource;

    if-ne v9, v6, :cond_9

    move v9, v8

    goto :goto_4

    :cond_9
    move v9, v5

    :goto_4
    invoke-static {v9}, Lcom/google/common/base/Preconditions;->q(Z)V

    if-ne v4, v6, :cond_a

    return-void

    :cond_a
    :try_start_1
    invoke-virtual {v0}, Landroidx/media3/datasource/cache/CacheDataSource;->o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    iget-boolean v1, v3, Landroidx/media3/datasource/cache/CacheSpan;->e:Z

    if-nez v1, :cond_b

    invoke-interface {v2, v3}, Landroidx/media3/datasource/cache/Cache;->f(Landroidx/media3/datasource/cache/CacheSpan;)V

    :cond_b
    throw v0

    :cond_c
    :goto_5
    if-eqz v3, :cond_d

    iget-boolean v6, v3, Landroidx/media3/datasource/cache/CacheSpan;->e:Z

    if-nez v6, :cond_d

    iput-object v3, v0, Landroidx/media3/datasource/cache/CacheDataSource;->q:Landroidx/media3/datasource/cache/CacheSpan;

    :cond_d
    iput-object v4, v0, Landroidx/media3/datasource/cache/CacheDataSource;->m:Landroidx/media3/datasource/DataSource;

    iput-object v11, v0, Landroidx/media3/datasource/cache/CacheDataSource;->l:Landroidx/media3/datasource/DataSpec;

    const-wide/16 v12, 0x0

    iput-wide v12, v0, Landroidx/media3/datasource/cache/CacheDataSource;->n:J

    invoke-interface {v4, v11}, Landroidx/media3/datasource/DataSource;->a(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide v12

    new-instance v3, Landroidx/media3/datasource/cache/ContentMetadataMutations;

    invoke-direct {v3}, Landroidx/media3/datasource/cache/ContentMetadataMutations;-><init>()V

    iget-wide v14, v11, Landroidx/media3/datasource/DataSpec;->g:J

    cmp-long v6, v14, v16

    if-nez v6, :cond_e

    cmp-long v6, v12, v16

    if-eqz v6, :cond_e

    iput-wide v12, v0, Landroidx/media3/datasource/cache/CacheDataSource;->p:J

    iget-wide v14, v0, Landroidx/media3/datasource/cache/CacheDataSource;->o:J

    add-long/2addr v14, v12

    const-string v6, "exo_len"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9, v6}, Landroidx/media3/datasource/cache/ContentMetadataMutations;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_e
    iget-object v6, v0, Landroidx/media3/datasource/cache/CacheDataSource;->m:Landroidx/media3/datasource/DataSource;

    move-object/from16 v9, v18

    if-ne v6, v9, :cond_f

    move v5, v8

    :cond_f
    if-nez v5, :cond_12

    invoke-interface {v4}, Landroidx/media3/datasource/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v0, Landroidx/media3/datasource/cache/CacheDataSource;->j:Landroid/net/Uri;

    iget-object v1, v1, Landroidx/media3/datasource/DataSpec;->a:Landroid/net/Uri;

    invoke-virtual {v1, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v8, v0, Landroidx/media3/datasource/cache/CacheDataSource;->j:Landroid/net/Uri;

    goto :goto_6

    :cond_10
    const/4 v8, 0x0

    :goto_6
    const-string v1, "exo_redir"

    if-nez v8, :cond_11

    iget-object v4, v3, Landroidx/media3/datasource/cache/ContentMetadataMutations;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v3, Landroidx/media3/datasource/cache/ContentMetadataMutations;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_11
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroidx/media3/datasource/cache/ContentMetadataMutations;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_12
    :goto_7
    iget-object v0, v0, Landroidx/media3/datasource/cache/CacheDataSource;->m:Landroidx/media3/datasource/DataSource;

    if-ne v0, v10, :cond_13

    invoke-interface {v2, v7, v3}, Landroidx/media3/datasource/cache/Cache;->j(Ljava/lang/String;Landroidx/media3/datasource/cache/ContentMetadataMutations;)V

    :cond_13
    return-void
.end method

.method public final read([BII)I
    .locals 18

    move-object/from16 v1, p0

    move/from16 v0, p3

    iget-object v2, v1, Landroidx/media3/datasource/cache/CacheDataSource;->b:Landroidx/media3/datasource/DataSource;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    return v3

    :cond_0
    iget-wide v4, v1, Landroidx/media3/datasource/cache/CacheDataSource;->p:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, -0x1

    if-nez v4, :cond_1

    return v5

    :cond_1
    iget-object v4, v1, Landroidx/media3/datasource/cache/CacheDataSource;->k:Landroidx/media3/datasource/DataSpec;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v1, Landroidx/media3/datasource/cache/CacheDataSource;->l:Landroidx/media3/datasource/DataSpec;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x1

    :try_start_0
    iget-wide v10, v1, Landroidx/media3/datasource/cache/CacheDataSource;->o:J

    iget-wide v12, v1, Landroidx/media3/datasource/cache/CacheDataSource;->u:J

    cmp-long v10, v10, v12

    if-ltz v10, :cond_2

    invoke-virtual {v1, v4, v9}, Landroidx/media3/datasource/cache/CacheDataSource;->p(Landroidx/media3/datasource/DataSpec;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_2
    :goto_0
    iget-object v10, v1, Landroidx/media3/datasource/cache/CacheDataSource;->m:Landroidx/media3/datasource/DataSource;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v11, p1

    move/from16 v12, p2

    invoke-interface {v10, v11, v12, v0}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v13, v1, Landroidx/media3/datasource/cache/CacheDataSource;->m:Landroidx/media3/datasource/DataSource;

    const-wide/16 v14, -0x1

    if-eq v10, v5, :cond_6

    if-ne v13, v2, :cond_3

    move v3, v9

    :cond_3
    if-eqz v3, :cond_4

    :try_start_1
    iget-wide v3, v1, Landroidx/media3/datasource/cache/CacheDataSource;->t:J

    int-to-long v5, v10

    add-long/2addr v3, v5

    iput-wide v3, v1, Landroidx/media3/datasource/cache/CacheDataSource;->t:J

    :cond_4
    iget-wide v3, v1, Landroidx/media3/datasource/cache/CacheDataSource;->o:J

    int-to-long v5, v10

    add-long/2addr v3, v5

    iput-wide v3, v1, Landroidx/media3/datasource/cache/CacheDataSource;->o:J

    iget-wide v3, v1, Landroidx/media3/datasource/cache/CacheDataSource;->n:J

    add-long/2addr v3, v5

    iput-wide v3, v1, Landroidx/media3/datasource/cache/CacheDataSource;->n:J

    iget-wide v3, v1, Landroidx/media3/datasource/cache/CacheDataSource;->p:J

    cmp-long v0, v3, v14

    if-eqz v0, :cond_5

    sub-long/2addr v3, v5

    iput-wide v3, v1, Landroidx/media3/datasource/cache/CacheDataSource;->p:J

    return v10

    :cond_5
    move v8, v10

    goto :goto_3

    :cond_6
    if-ne v13, v2, :cond_7

    move v5, v9

    goto :goto_1

    :cond_7
    move v5, v3

    :goto_1
    if-nez v5, :cond_a

    move-wide/from16 v16, v14

    iget-wide v14, v8, Landroidx/media3/datasource/DataSpec;->g:J

    cmp-long v5, v14, v16

    if-eqz v5, :cond_8

    move v8, v10

    iget-wide v9, v1, Landroidx/media3/datasource/cache/CacheDataSource;->n:J

    cmp-long v9, v9, v14

    if-gez v9, :cond_b

    goto :goto_2

    :cond_8
    move v8, v10

    :goto_2
    iget-object v0, v4, Landroidx/media3/datasource/DataSpec;->h:Ljava/lang/String;

    sget-object v4, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    iput-wide v6, v1, Landroidx/media3/datasource/cache/CacheDataSource;->p:J

    iget-object v4, v1, Landroidx/media3/datasource/cache/CacheDataSource;->c:Landroidx/media3/datasource/TeeDataSource;

    if-ne v13, v4, :cond_9

    const/4 v3, 0x1

    :cond_9
    if-eqz v3, :cond_c

    new-instance v3, Landroidx/media3/datasource/cache/ContentMetadataMutations;

    invoke-direct {v3}, Landroidx/media3/datasource/cache/ContentMetadataMutations;-><init>()V

    iget-wide v6, v1, Landroidx/media3/datasource/cache/CacheDataSource;->o:J

    const-string v4, "exo_len"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6, v4}, Landroidx/media3/datasource/cache/ContentMetadataMutations;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v1, Landroidx/media3/datasource/cache/CacheDataSource;->a:Landroidx/media3/datasource/cache/Cache;

    invoke-interface {v4, v0, v3}, Landroidx/media3/datasource/cache/Cache;->j(Ljava/lang/String;Landroidx/media3/datasource/cache/ContentMetadataMutations;)V

    return v8

    :cond_a
    move v8, v10

    move-wide/from16 v16, v14

    :cond_b
    iget-wide v9, v1, Landroidx/media3/datasource/cache/CacheDataSource;->p:J

    cmp-long v6, v9, v6

    if-gtz v6, :cond_d

    cmp-long v6, v9, v16

    if-nez v6, :cond_c

    goto :goto_4

    :cond_c
    :goto_3
    return v8

    :cond_d
    :goto_4
    invoke-virtual {v1}, Landroidx/media3/datasource/cache/CacheDataSource;->o()V

    invoke-virtual {v1, v4, v3}, Landroidx/media3/datasource/cache/CacheDataSource;->p(Landroidx/media3/datasource/DataSpec;Z)V

    invoke-virtual/range {p0 .. p3}, Landroidx/media3/datasource/cache/CacheDataSource;->read([BII)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0

    :goto_5
    iget-object v3, v1, Landroidx/media3/datasource/cache/CacheDataSource;->m:Landroidx/media3/datasource/DataSource;

    if-eq v3, v2, :cond_e

    instance-of v2, v0, Landroidx/media3/datasource/cache/Cache$CacheException;

    if-eqz v2, :cond_f

    :cond_e
    const/4 v5, 0x1

    iput-boolean v5, v1, Landroidx/media3/datasource/cache/CacheDataSource;->r:Z

    :cond_f
    throw v0
.end method
