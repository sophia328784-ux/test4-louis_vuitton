.class public final Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaSourceFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;,
        Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$UnknownSubtitlesExtractor;,
        Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$AdsLoaderProvider;
    }
.end annotation


# static fields
.field public static final synthetic l:I


# instance fields
.field public final c:Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

.field public final d:Landroidx/media3/datasource/DataSource$Factory;

.field public e:Landroidx/media3/extractor/text/SubtitleParser$Factory;

.field public final f:J

.field public final g:J

.field public final h:J

.field public final i:F

.field public final j:F

.field public k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 55
    new-instance v0, Landroidx/media3/datasource/DefaultDataSource$Factory;

    invoke-direct {v0, p1}, Landroidx/media3/datasource/DefaultDataSource$Factory;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/extractor/ExtractorsFactory;)V
    .locals 1

    .line 52
    new-instance v0, Landroidx/media3/datasource/DefaultDataSource$Factory;

    invoke-direct {v0, p1}, Landroidx/media3/datasource/DefaultDataSource$Factory;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;-><init>(Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/extractor/ExtractorsFactory;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/DataSource$Factory;)V
    .locals 1

    .line 53
    new-instance v0, Landroidx/media3/extractor/DefaultExtractorsFactory;

    invoke-direct {v0}, Landroidx/media3/extractor/DefaultExtractorsFactory;-><init>()V

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;-><init>(Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/extractor/ExtractorsFactory;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/extractor/ExtractorsFactory;)V
    .locals 1

    .line 54
    new-instance v0, Landroidx/media3/extractor/text/DefaultSubtitleParserFactory;

    invoke-direct {v0}, Landroidx/media3/extractor/text/DefaultSubtitleParserFactory;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;-><init>(Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/extractor/ExtractorsFactory;Landroidx/media3/extractor/text/SubtitleParser$Factory;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/extractor/ExtractorsFactory;Landroidx/media3/extractor/text/SubtitleParser$Factory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->d:Landroidx/media3/datasource/DataSource$Factory;

    iput-object p3, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->e:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    new-instance v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    invoke-direct {v0, p2, p3}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;-><init>(Landroidx/media3/extractor/ExtractorsFactory;Landroidx/media3/extractor/text/SubtitleParser$Factory;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->c:Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    iget-object p2, v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->d:Landroidx/media3/datasource/DataSource$Factory;

    if-eq p1, p2, :cond_0

    iput-object p1, v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->d:Landroidx/media3/datasource/DataSource$Factory;

    iget-object p1, v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    iget-object p1, v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->f:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->g:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->h:J

    const p1, -0x800001

    iput p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->i:F

    iput p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->j:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->k:Z

    return-void
.end method

.method public static e(Ljava/lang/Class;Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 1

    :try_start_0
    const-class v0, Landroidx/media3/datasource/DataSource$Factory;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/source/MediaSource$Factory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lbm;->i(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Landroidx/media3/extractor/text/SubtitleParser$Factory;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->e:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->c:Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->f:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->a:Landroidx/media3/extractor/ExtractorsFactory;

    invoke-interface {v0, p1}, Landroidx/media3/extractor/ExtractorsFactory;->a(Landroidx/media3/extractor/text/SubtitleParser$Factory;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->c:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/MediaSource$Factory;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->a(Landroidx/media3/extractor/text/SubtitleParser$Factory;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->c:Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    iput p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->g:I

    iget-object p0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->a:Landroidx/media3/extractor/ExtractorsFactory;

    invoke-interface {p0, p1}, Landroidx/media3/extractor/ExtractorsFactory;->b(I)V

    return-void
.end method

.method public final c(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 10

    iget-object v0, p1, Landroidx/media3/common/MediaItem;->b:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Landroidx/media3/common/MediaItem;->b:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v0, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "ssai"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    throw v1

    :cond_1
    :goto_0
    iget-object v0, p1, Landroidx/media3/common/MediaItem;->b:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v0, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->b:Ljava/lang/String;

    const-string v2, "application/x-image-uri"

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget-object v2, p1, Landroidx/media3/common/MediaItem;->b:Landroidx/media3/common/MediaItem$LocalConfiguration;

    if-nez v0, :cond_10

    iget-object v0, v2, Landroidx/media3/common/MediaItem$LocalConfiguration;->a:Landroid/net/Uri;

    iget-object v2, v2, Landroidx/media3/common/MediaItem$LocalConfiguration;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Landroidx/media3/common/util/Util;->H(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    iget-object v2, p1, Landroidx/media3/common/MediaItem;->b:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-wide v2, v2, Landroidx/media3/common/MediaItem$LocalConfiguration;->i:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->c:Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->a:Landroidx/media3/extractor/ExtractorsFactory;

    instance-of v6, v2, Landroidx/media3/extractor/DefaultExtractorsFactory;

    if-eqz v6, :cond_2

    check-cast v2, Landroidx/media3/extractor/DefaultExtractorsFactory;

    monitor-enter v2

    :try_start_0
    iput v3, v2, Landroidx/media3/extractor/DefaultExtractorsFactory;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_1
    iget-object v2, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->c:Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->a:Landroidx/media3/extractor/ExtractorsFactory;

    instance-of v6, v2, Landroidx/media3/extractor/DefaultExtractorsFactory;

    if-eqz v6, :cond_3

    check-cast v2, Landroidx/media3/extractor/DefaultExtractorsFactory;

    monitor-enter v2

    :try_start_2
    iput v3, v2, Landroidx/media3/extractor/DefaultExtractorsFactory;->g:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v2

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_3
    :goto_2
    :try_start_4
    iget-object v2, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->c:Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    invoke-virtual {v2, v0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->a(I)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    iget-object v1, p1, Landroidx/media3/common/MediaItem;->c:Landroidx/media3/common/MediaItem$LiveConfiguration;

    invoke-virtual {v1}, Landroidx/media3/common/MediaItem$LiveConfiguration;->a()Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/media3/common/MediaItem;->c:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget-wide v6, v2, Landroidx/media3/common/MediaItem$LiveConfiguration;->a:J

    cmp-long v6, v6, v4

    if-nez v6, :cond_4

    iget-wide v6, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->f:J

    iput-wide v6, v1, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->a:J

    :cond_4
    iget v6, v2, Landroidx/media3/common/MediaItem$LiveConfiguration;->d:F

    const v7, -0x800001

    cmpl-float v6, v6, v7

    if-nez v6, :cond_5

    iget v6, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->i:F

    iput v6, v1, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->d:F

    :cond_5
    iget v6, v2, Landroidx/media3/common/MediaItem$LiveConfiguration;->e:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_6

    iget v6, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->j:F

    iput v6, v1, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->e:F

    :cond_6
    iget-wide v6, v2, Landroidx/media3/common/MediaItem$LiveConfiguration;->b:J

    cmp-long v6, v6, v4

    if-nez v6, :cond_7

    iget-wide v6, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->g:J

    iput-wide v6, v1, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->b:J

    :cond_7
    iget-wide v6, v2, Landroidx/media3/common/MediaItem$LiveConfiguration;->c:J

    cmp-long v2, v6, v4

    if-nez v2, :cond_8

    iget-wide v4, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->h:J

    iput-wide v4, v1, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->c:J

    :cond_8
    invoke-virtual {v1}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->a()Landroidx/media3/common/MediaItem$LiveConfiguration;

    move-result-object v1

    iget-object v2, p1, Landroidx/media3/common/MediaItem;->c:Landroidx/media3/common/MediaItem$LiveConfiguration;

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaItem$LiveConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p1}, Landroidx/media3/common/MediaItem;->a()Landroidx/media3/common/MediaItem$Builder;

    move-result-object p1

    invoke-virtual {v1}, Landroidx/media3/common/MediaItem$LiveConfiguration;->a()Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    move-result-object v1

    iput-object v1, p1, Landroidx/media3/common/MediaItem$Builder;->m:Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    invoke-virtual {p1}, Landroidx/media3/common/MediaItem$Builder;->a()Landroidx/media3/common/MediaItem;

    move-result-object p1

    :cond_9
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->c(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v0

    iget-object v1, p1, Landroidx/media3/common/MediaItem;->b:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v1, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->g:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v3

    new-array v2, v2, [Landroidx/media3/exoplayer/source/MediaSource;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_c

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->k:Z

    if-eqz v0, :cond_b

    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    iget-object v5, v5, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->b:Ljava/lang/String;

    invoke-static {v5}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    iget-object v5, v5, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->c:Ljava/lang/String;

    iput-object v5, v0, Landroidx/media3/common/Format$Builder;->d:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    iget v5, v5, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->d:I

    iput v5, v0, Landroidx/media3/common/Format$Builder;->e:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    iget v5, v5, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->e:I

    iput v5, v0, Landroidx/media3/common/Format$Builder;->f:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    iget-object v5, v5, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->f:Ljava/lang/String;

    iput-object v5, v0, Landroidx/media3/common/Format$Builder;->b:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    iget-object v5, v5, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->g:Ljava/lang/String;

    iput-object v5, v0, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    new-instance v5, Landroidx/media3/common/Format;

    invoke-direct {v5, v0}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    new-instance v0, Landroidx/media3/exoplayer/source/a;

    invoke-direct {v0, p0, v5}, Landroidx/media3/exoplayer/source/a;-><init>(Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;Landroidx/media3/common/Format;)V

    new-instance v6, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;

    iget-object v7, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->d:Landroidx/media3/datasource/DataSource$Factory;

    invoke-direct {v6, v7, v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/extractor/ExtractorsFactory;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->e:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    invoke-interface {v0, v5}, Landroidx/media3/extractor/text/SubtitleParser$Factory;->b(Landroidx/media3/common/Format;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v5}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object v0

    const-string v7, "application/x-media3-cues"

    invoke-static {v7}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    iget-object v7, v5, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    iput-object v7, v0, Landroidx/media3/common/Format$Builder;->j:Ljava/lang/String;

    iget-object v7, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->e:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    invoke-interface {v7, v5}, Landroidx/media3/extractor/text/SubtitleParser$Factory;->a(Landroidx/media3/common/Format;)I

    move-result v5

    iput v5, v0, Landroidx/media3/common/Format$Builder;->L:I

    new-instance v5, Landroidx/media3/common/Format;

    invoke-direct {v5, v0}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    :cond_a
    iput-object v5, v6, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->h:Landroidx/media3/common/Format;

    add-int/lit8 v0, v4, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    iget-object v5, v5, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->a:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v7}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    invoke-virtual {v7, v5}, Landroidx/media3/common/MediaItem$Builder;->b(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroidx/media3/common/MediaItem$Builder;->a()Landroidx/media3/common/MediaItem;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->e(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/ProgressiveMediaSource;

    move-result-object v5

    aput-object v5, v2, v0

    goto :goto_4

    :cond_b
    new-instance v0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource$Factory;

    iget-object v5, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->d:Landroidx/media3/datasource/DataSource$Factory;

    invoke-direct {v0, v5}, Landroidx/media3/exoplayer/source/SingleSampleMediaSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    add-int/lit8 v5, v4, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    new-instance v7, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;

    iget-object v8, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource$Factory;->a:Landroidx/media3/datasource/DataSource$Factory;

    iget-object v9, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource$Factory;->b:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource$Factory;->c:Z

    invoke-direct {v7, v6, v8, v9, v0}, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;-><init>(Landroidx/media3/common/MediaItem$SubtitleConfiguration;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Z)V

    aput-object v7, v2, v5

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    :cond_c
    new-instance v0, Landroidx/media3/exoplayer/source/MergingMediaSource;

    invoke-direct {v0, v2}, Landroidx/media3/exoplayer/source/MergingMediaSource;-><init>([Landroidx/media3/exoplayer/source/MediaSource;)V

    :cond_d
    iget-object p0, p1, Landroidx/media3/common/MediaItem;->e:Landroidx/media3/common/MediaItem$ClippingProperties;

    iget-wide v1, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->b:J

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-nez v1, :cond_e

    iget-wide v1, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->d:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, v1, v4

    if-nez v1, :cond_e

    iget-boolean v1, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->f:Z

    if-nez v1, :cond_e

    goto :goto_5

    :cond_e
    new-instance v1, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;

    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;-><init>(Landroidx/media3/exoplayer/source/MediaSource;)V

    iget-wide v4, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->b:J

    invoke-virtual {v1, v4, v5}, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->a(J)V

    iget-wide v4, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->d:J

    iget-boolean v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->h:Z

    xor-int/2addr v0, v3

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iput-wide v4, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->c:J

    iget-boolean v0, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->g:Z

    xor-int/2addr v0, v3

    iget-boolean v2, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->h:Z

    xor-int/2addr v2, v3

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->q(Z)V

    iput-boolean v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->d:Z

    iget-boolean v0, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->e:Z

    iget-boolean v2, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->h:Z

    xor-int/2addr v2, v3

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->q(Z)V

    iput-boolean v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->e:Z

    iget-boolean v0, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->f:Z

    iget-boolean v2, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->h:Z

    xor-int/2addr v2, v3

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->q(Z)V

    iput-boolean v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->f:Z

    iget-boolean p0, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->h:Z

    iget-boolean v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->h:Z

    xor-int/2addr v0, v3

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iput-boolean p0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->g:Z

    iget-boolean p0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->h:Z

    xor-int/2addr p0, v3

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iput-boolean v3, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;->h:Z

    new-instance v0, Landroidx/media3/exoplayer/source/ClippingMediaSource;

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/source/ClippingMediaSource;-><init>(Landroidx/media3/exoplayer/source/ClippingMediaSource$Builder;)V

    :goto_5
    iget-object p0, p1, Landroidx/media3/common/MediaItem;->b:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Landroidx/media3/common/MediaItem;->b:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object p0, p0, Landroidx/media3/common/MediaItem$LocalConfiguration;->d:Landroidx/media3/common/MediaItem$AdsConfiguration;

    if-nez p0, :cond_f

    return-object v0

    :cond_f
    const-string p0, "Playing media without ads. Configure ad support by calling setAdsLoaderProvider and setAdViewProvider."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lbm;->i(Ljava/lang/Throwable;)V

    return-object v1

    :cond_10
    iget-wide p0, v2, Landroidx/media3/common/MediaItem$LocalConfiguration;->i:J

    sget-object p0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    throw v1
.end method

.method public final d(Z)V
    .locals 1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->k:Z

    iget-object p0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->c:Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->e:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->a:Landroidx/media3/extractor/ExtractorsFactory;

    invoke-interface {v0, p1}, Landroidx/media3/extractor/ExtractorsFactory;->e(Z)V

    iget-object p0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->c:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/MediaSource$Factory;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->d(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
