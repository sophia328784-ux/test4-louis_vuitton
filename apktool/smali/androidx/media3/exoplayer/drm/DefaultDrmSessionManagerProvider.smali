.class public final Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Landroidx/media3/common/MediaItem$DrmConfiguration;

.field public c:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;->a:Ljava/lang/Object;

    return-void
.end method

.method public static b(Landroidx/media3/common/MediaItem$DrmConfiguration;)Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;
    .locals 13

    new-instance v0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    invoke-direct {v0}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->b:Ljava/lang/String;

    new-instance v5, Landroidx/media3/exoplayer/drm/HttpMediaDrmCallback;

    iget-object v2, p0, Landroidx/media3/common/MediaItem$DrmConfiguration;->b:Landroid/net/Uri;

    if-nez v2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-boolean v3, p0, Landroidx/media3/common/MediaItem$DrmConfiguration;->f:Z

    invoke-direct {v5, v2, v3, v0}, Landroidx/media3/exoplayer/drm/HttpMediaDrmCallback;-><init>(Ljava/lang/String;ZLandroidx/media3/datasource/DataSource$Factory;)V

    iget-object v0, p0, Landroidx/media3/common/MediaItem$DrmConfiguration;->c:Lcom/google/common/collect/ImmutableMap;

    iget-object v2, v0, Lcom/google/common/collect/ImmutableMap;->b:Lcom/google/common/collect/ImmutableSet;

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->d()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    iput-object v2, v0, Lcom/google/common/collect/ImmutableMap;->b:Lcom/google/common/collect/ImmutableSet;

    :cond_1
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableCollection;->p()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v5, Landroidx/media3/exoplayer/drm/HttpMediaDrmCallback;->d:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v6, v5, Landroidx/media3/exoplayer/drm/HttpMediaDrmCallback;->d:Ljava/util/HashMap;

    invoke-virtual {v6, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    new-instance v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;

    invoke-direct {v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;-><init>()V

    iget-object v2, p0, Landroidx/media3/common/MediaItem$DrmConfiguration;->a:Ljava/util/UUID;

    sget-object v3, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->d:Laz;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->b:Ljava/util/UUID;

    iput-object v3, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->c:Laz;

    iget-boolean v2, p0, Landroidx/media3/common/MediaItem$DrmConfiguration;->d:Z

    iput-boolean v2, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->d:Z

    iget-boolean v2, p0, Landroidx/media3/common/MediaItem$DrmConfiguration;->e:Z

    iput-boolean v2, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->e:Z

    iget-object v2, p0, Landroidx/media3/common/MediaItem$DrmConfiguration;->g:Lcom/google/common/collect/ImmutableList;

    invoke-static {v2}, Lcom/google/common/primitives/Ints;->g(Ljava/util/Collection;)[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v6, v4

    :goto_2
    if-ge v6, v3, :cond_5

    aget v7, v2, v6

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v7, v8, :cond_4

    if-ne v7, v9, :cond_3

    goto :goto_3

    :cond_3
    move v9, v4

    :cond_4
    :goto_3
    invoke-static {v9}, Lcom/google/common/base/Preconditions;->g(Z)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, [I

    new-instance v2, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    iget-object v3, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->b:Ljava/util/UUID;

    iget-object v4, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->c:Laz;

    iget-object v6, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->a:Ljava/util/HashMap;

    iget-boolean v7, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->d:Z

    iget-boolean v9, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->e:Z

    iget-object v10, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->f:Landroidx/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;

    iget-wide v11, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->g:J

    invoke-direct/range {v2 .. v12}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;-><init>(Ljava/util/UUID;Landroidx/media3/exoplayer/drm/ExoMediaDrm$Provider;Landroidx/media3/exoplayer/drm/HttpMediaDrmCallback;Ljava/util/HashMap;Z[IZLandroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;J)V

    iget-object p0, p0, Landroidx/media3/common/MediaItem$DrmConfiguration;->h:[B

    if-eqz p0, :cond_6

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    :cond_6
    iget-object p0, v2, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->m:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iput-object v1, v2, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->v:[B

    return-object v2
.end method


# virtual methods
.method public final a(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/drm/DrmSessionManager;
    .locals 2

    iget-object v0, p1, Landroidx/media3/common/MediaItem;->b:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroidx/media3/common/MediaItem;->b:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object p1, p1, Landroidx/media3/common/MediaItem$LocalConfiguration;->c:Landroidx/media3/common/MediaItem$DrmConfiguration;

    if-nez p1, :cond_0

    sget-object p0, Landroidx/media3/exoplayer/drm/DrmSessionManager;->a:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;->b:Landroidx/media3/common/MediaItem$DrmConfiguration;

    invoke-virtual {p1, v1}, Landroidx/media3/common/MediaItem$DrmConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;->b:Landroidx/media3/common/MediaItem$DrmConfiguration;

    invoke-static {p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;->b(Landroidx/media3/common/MediaItem$DrmConfiguration;)Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;->c:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;->c:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
