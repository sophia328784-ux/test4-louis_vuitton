.class final Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MediaPlaylistBundle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media3/exoplayer/upstream/Loader$Callback<",
        "Landroidx/media3/exoplayer/upstream/ParsingLoadable<",
        "Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:Landroid/net/Uri;

.field public final c:Ljava/lang/String;

.field public final d:Landroidx/media3/exoplayer/upstream/Loader;

.field public final e:Landroidx/media3/datasource/DataSource;

.field public f:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

.field public g:J

.field public h:J

.field public i:J

.field public j:J

.field public k:Z

.field public l:Ljava/io/IOException;

.field public m:Z

.field public final synthetic n:Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->n:Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->b:Landroid/net/Uri;

    iput-object p3, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->c:Ljava/lang/String;

    iget-object p2, p1, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->i:Lcom/google/common/base/Supplier;

    if-eqz p2, :cond_0

    new-instance p3, Landroidx/media3/exoplayer/upstream/Loader;

    invoke-interface {p2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/exoplayer/util/ReleasableExecutor;

    invoke-direct {p3, p2}, Landroidx/media3/exoplayer/upstream/Loader;-><init>(Landroidx/media3/exoplayer/util/ReleasableExecutor;)V

    goto :goto_0

    :cond_0
    new-instance p3, Landroidx/media3/exoplayer/upstream/Loader;

    const-string p2, "DefaultHlsPlaylistTracker:MediaPlaylist"

    invoke-direct {p3, p2}, Landroidx/media3/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object p3, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->d:Landroidx/media3/exoplayer/upstream/Loader;

    iget-object p1, p1, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->b:Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;

    invoke-interface {p1}, Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;->a()Landroidx/media3/datasource/DataSource;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->e:Landroidx/media3/datasource/DataSource;

    return-void
.end method


# virtual methods
.method public final a()Landroid/net/Uri;
    .locals 8

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->f:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->b:Landroid/net/Uri;

    if-eqz v0, :cond_5

    iget-object v0, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->v:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;

    iget-wide v2, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;->a:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-boolean v0, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;->e:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->f:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    iget-object v2, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->v:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;

    iget-boolean v2, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;->e:Z

    if-eqz v2, :cond_2

    iget-wide v2, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->k:J

    iget-object v1, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->r:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v6, v1

    add-long/2addr v2, v6

    const-string v1, "_HLS_msn"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->f:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    iget-wide v2, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->n:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-object v1, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->s:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Lcom/google/common/collect/Iterables;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;

    iget-boolean v1, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;->n:Z

    if-eqz v1, :cond_1

    add-int/lit8 v2, v2, -0x1

    :cond_1
    const-string v1, "_HLS_part"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_2
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->f:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->v:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;

    iget-wide v1, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;->a:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_4

    iget-boolean p0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;->b:Z

    if-eqz p0, :cond_3

    const-string p0, "v2"

    goto :goto_0

    :cond_3
    const-string p0, "YES"

    :goto_0
    const-string v1, "_HLS_skip"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_4
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_1
    return-object v1
.end method

.method public final b(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p1

    check-cast v2, Landroidx/media3/exoplayer/upstream/ParsingLoadable;

    new-instance v3, Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-wide v4, v2, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->a:J

    iget v15, v2, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->c:I

    iget-object v6, v2, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->b:Landroidx/media3/datasource/DataSpec;

    iget-object v2, v2, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->d:Landroidx/media3/datasource/StatsDataSource;

    iget-object v7, v2, Landroidx/media3/datasource/StatsDataSource;->c:Landroid/net/Uri;

    iget-object v8, v2, Landroidx/media3/datasource/StatsDataSource;->d:Ljava/util/Map;

    iget-wide v13, v2, Landroidx/media3/datasource/StatsDataSource;->b:J

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(JLandroidx/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget-object v2, v2, Landroidx/media3/datasource/StatsDataSource;->c:Landroid/net/Uri;

    const-string v4, "_HLS_msn"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    instance-of v6, v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$DeltaUpdateException;

    sget-object v7, Landroidx/media3/exoplayer/upstream/Loader;->e:Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    iget-object v8, v0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->b:Landroid/net/Uri;

    iget-object v9, v0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->n:Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    if-nez v2, :cond_1

    if-eqz v6, :cond_3

    :cond_1
    instance-of v2, v1, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    iget v2, v2, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;->d:I

    goto :goto_1

    :cond_2
    const v2, 0x7fffffff

    :goto_1
    if-nez v6, :cond_a

    const/16 v6, 0x190

    if-eq v2, v6, :cond_a

    const/16 v6, 0x1f7

    if-ne v2, v6, :cond_3

    goto :goto_6

    :cond_3
    new-instance v0, Landroidx/media3/exoplayer/source/MediaLoadData;

    invoke-direct {v0, v15}, Landroidx/media3/exoplayer/source/MediaLoadData;-><init>(I)V

    new-instance v2, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;

    move/from16 v6, p7

    invoke-direct {v2, v3, v0, v1, v6}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;-><init>(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;I)V

    iget-object v0, v9, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v6, v5

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;

    invoke-interface {v10, v8, v2, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;->b(Landroid/net/Uri;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;Z)Z

    move-result v10

    xor-int/2addr v10, v4

    or-int/2addr v6, v10

    goto :goto_2

    :cond_4
    iget-object v0, v9, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->d:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    if-eqz v6, :cond_6

    invoke-interface {v0, v2}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->a(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)J

    move-result-wide v6

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v6, v10

    if-eqz v2, :cond_5

    new-instance v2, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    invoke-direct {v2, v5, v6, v7}, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;-><init>(IJ)V

    :goto_3
    move-object v7, v2

    goto :goto_4

    :cond_5
    sget-object v2, Landroidx/media3/exoplayer/upstream/Loader;->f:Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    goto :goto_3

    :cond_6
    :goto_4
    iget v2, v7, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->a:I

    if-eqz v2, :cond_8

    if-ne v2, v4, :cond_7

    goto :goto_5

    :cond_7
    move v4, v5

    :cond_8
    :goto_5
    xor-int/lit8 v2, v4, 0x1

    iget-object v5, v9, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->j:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v5, v3, v15, v1, v2}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->e(Landroidx/media3/exoplayer/source/LoadEventInfo;ILjava/io/IOException;Z)V

    if-nez v4, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_9
    return-object v7

    :cond_a
    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->i:J

    invoke-virtual {v0, v8}, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->d(Landroid/net/Uri;)V

    iget-object v0, v9, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->j:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    sget-object v2, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v15, v1, v4}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->e(Landroidx/media3/exoplayer/source/LoadEventInfo;ILjava/io/IOException;Z)V

    return-object v7
.end method

.method public final c(Landroid/net/Uri;)V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->n:Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->c:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;

    iget-object v2, v0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->n:Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    iget-object v3, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->f:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    invoke-interface {v1, v2, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;->b(Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;

    move-result-object v1

    new-instance v2, Landroidx/media3/datasource/DataSpec$Builder;

    invoke-direct {v2}, Landroidx/media3/datasource/DataSpec$Builder;-><init>()V

    iput-object p1, v2, Landroidx/media3/datasource/DataSpec$Builder;->a:Landroid/net/Uri;

    const/4 p1, 0x1

    iput p1, v2, Landroidx/media3/datasource/DataSpec$Builder;->i:I

    invoke-virtual {v2}, Landroidx/media3/datasource/DataSpec$Builder;->a()Landroidx/media3/datasource/DataSpec;

    move-result-object v2

    iget-object v3, v0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->h:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    if-eqz v3, :cond_1

    new-instance v4, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;

    const-string v5, "h"

    invoke-direct {v4, v3, v5}, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;-><init>(Landroidx/media3/exoplayer/upstream/CmcdConfiguration;Ljava/lang/String;)V

    const-string v3, "m"

    iput-object v3, v4, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->j:Ljava/lang/String;

    iget-object v3, v0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->u:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    if-eqz v3, :cond_0

    iget-boolean v3, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->o:Z

    xor-int/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v4, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->f:Ljava/lang/Boolean;

    :cond_0
    invoke-virtual {v4}, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->a()Landroidx/media3/exoplayer/upstream/CmcdData;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/media3/exoplayer/upstream/CmcdData;->a(Landroidx/media3/datasource/DataSpec;)Landroidx/media3/datasource/DataSpec;

    move-result-object v2

    :cond_1
    new-instance p1, Landroidx/media3/exoplayer/upstream/ParsingLoadable;

    iget-object v3, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->e:Landroidx/media3/datasource/DataSource;

    const/4 v4, 0x4

    invoke-direct {p1, v3, v2, v4, v1}, Landroidx/media3/exoplayer/upstream/ParsingLoadable;-><init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;ILandroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;)V

    iget-object v0, v0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->d:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget v1, p1, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->c:I

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->b(I)I

    move-result v0

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->d:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v1, p1, p0, v0}, Landroidx/media3/exoplayer/upstream/Loader;->e(Landroidx/media3/exoplayer/upstream/Loader$Loadable;Landroidx/media3/exoplayer/upstream/Loader$Callback;I)V

    return-void
.end method

.method public final d(Landroid/net/Uri;)V
    .locals 6

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->j:J

    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->k:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->d:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->b()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, v0, Landroidx/media3/exoplayer/upstream/Loader;->c:Ljava/io/IOException;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->i:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    const/4 v4, 0x1

    iput-boolean v4, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->k:Z

    iget-object v4, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->n:Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    iget-object v4, v4, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->l:Landroid/os/Handler;

    new-instance v5, Landroidx/media3/exoplayer/hls/playlist/a;

    invoke-direct {v5, p0, p1}, Landroidx/media3/exoplayer/hls/playlist/a;-><init>(Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;Landroid/net/Uri;)V

    sub-long/2addr v2, v0

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->c(Landroid/net/Uri;)V

    :cond_2
    return-void
.end method

.method public final e(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Landroidx/media3/exoplayer/source/LoadEventInfo;)V
    .locals 73

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->f:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->g:J

    iget-object v6, v0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->n:Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    iget-object v7, v6, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v3, :cond_5

    iget-wide v10, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->k:J

    iget-wide v12, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->k:J

    cmp-long v10, v10, v12

    if-lez v10, :cond_0

    goto :goto_0

    :cond_0
    if-gez v10, :cond_2

    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    :cond_2
    iget-object v10, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->r:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    iget-object v11, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->r:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v10, v11

    if-eqz v10, :cond_4

    if-lez v10, :cond_1

    :cond_3
    :goto_0
    const/4 v10, 0x1

    goto :goto_1

    :cond_4
    iget-object v10, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->s:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    iget-object v11, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->s:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-gt v10, v11, :cond_3

    if-ne v10, v11, :cond_1

    iget-boolean v10, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->o:Z

    if-eqz v10, :cond_1

    iget-boolean v10, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->o:Z

    if-nez v10, :cond_1

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :goto_1
    iget-wide v11, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->k:J

    iget-object v13, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->r:Lcom/google/common/collect/ImmutableList;

    const-wide/16 v41, 0x0

    if-nez v10, :cond_8

    iget-boolean v10, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->o:Z

    if-eqz v10, :cond_7

    iget-boolean v10, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->o:Z

    if-eqz v10, :cond_6

    move-object v13, v3

    move-object/from16 v72, v7

    const/4 v7, 0x0

    const/16 v71, 0x1

    goto/16 :goto_d

    :cond_6
    new-instance v43, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    iget v10, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->d:I

    iget-object v11, v3, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;->a:Ljava/lang/String;

    iget-object v12, v3, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;->b:Ljava/util/List;

    iget-wide v14, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->e:J

    iget-boolean v13, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->g:Z

    const/16 v71, 0x1

    iget-wide v8, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->h:J

    move-object/from16 v72, v7

    iget-boolean v7, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->i:Z

    move/from16 v52, v7

    iget v7, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->j:I

    move/from16 v53, v7

    move-wide/from16 v50, v8

    iget-wide v7, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->k:J

    iget v9, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->l:I

    move-wide/from16 v54, v7

    iget-wide v7, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->m:J

    move-wide/from16 v57, v7

    iget-wide v7, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->n:J

    move-wide/from16 v59, v7

    iget-boolean v7, v3, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;->c:Z

    iget-boolean v8, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->p:Z

    move/from16 v61, v7

    iget-object v7, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->q:Landroidx/media3/common/DrmInitData;

    move-object/from16 v64, v7

    iget-object v7, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->r:Lcom/google/common/collect/ImmutableList;

    move-object/from16 v65, v7

    iget-object v7, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->s:Lcom/google/common/collect/ImmutableList;

    move-object/from16 v66, v7

    iget-object v7, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->v:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;

    move-object/from16 v67, v7

    iget-object v7, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->t:Lcom/google/common/collect/ImmutableMap;

    move-object/from16 v68, v7

    iget-object v7, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->w:Lcom/google/common/collect/ImmutableList;

    move-object/from16 v69, v7

    iget-object v7, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->x:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    const/16 v62, 0x1

    move-object/from16 v70, v7

    move/from16 v63, v8

    move/from16 v56, v9

    move/from16 v44, v10

    move-object/from16 v45, v11

    move-object/from16 v46, v12

    move/from16 v49, v13

    move-wide/from16 v47, v14

    invoke-direct/range {v43 .. v70}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;-><init>(ILjava/lang/String;Ljava/util/List;JZJZIJIJJZZZLandroidx/media3/common/DrmInitData;Ljava/util/List;Ljava/util/List;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;Ljava/util/Map;Ljava/util/List;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;)V

    move-object/from16 v13, v43

    :goto_2
    const/4 v7, 0x0

    goto/16 :goto_d

    :cond_7
    move-object/from16 v72, v7

    const/16 v71, 0x1

    move-object v13, v3

    goto :goto_2

    :cond_8
    move-object/from16 v72, v7

    const/16 v71, 0x1

    iget-boolean v7, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->p:Z

    if-eqz v7, :cond_9

    iget-wide v7, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->h:J

    :goto_3
    move-wide/from16 v20, v7

    goto :goto_8

    :cond_9
    iget-object v7, v6, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->u:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    if-eqz v7, :cond_a

    iget-wide v7, v7, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->h:J

    goto :goto_4

    :cond_a
    move-wide/from16 v7, v41

    :goto_4
    if-nez v3, :cond_b

    move-wide/from16 v17, v7

    goto :goto_7

    :cond_b
    iget-wide v9, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->h:J

    iget-wide v14, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->k:J

    move-wide/from16 v17, v7

    iget-object v7, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->r:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    move-wide/from16 v19, v9

    sub-long v9, v11, v14

    long-to-int v9, v9

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_c

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    goto :goto_5

    :cond_c
    const/4 v7, 0x0

    :goto_5
    if-eqz v7, :cond_d

    iget-wide v7, v7, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->f:J

    :goto_6
    add-long v7, v19, v7

    goto :goto_3

    :cond_d
    int-to-long v7, v8

    sub-long v9, v11, v14

    cmp-long v7, v7, v9

    if-nez v7, :cond_e

    iget-wide v7, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->u:J

    goto :goto_6

    :cond_e
    :goto_7
    move-wide/from16 v20, v17

    :goto_8
    iget-boolean v7, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->i:Z

    if-eqz v7, :cond_f

    iget v7, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->j:I

    move/from16 v23, v7

    move-object/from16 v35, v13

    const/4 v8, 0x0

    goto :goto_c

    :cond_f
    iget-object v7, v6, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->u:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    if-eqz v7, :cond_10

    iget v7, v7, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->j:I

    goto :goto_9

    :cond_10
    const/4 v7, 0x0

    :goto_9
    if-nez v3, :cond_12

    :cond_11
    const/4 v8, 0x0

    goto :goto_b

    :cond_12
    iget-wide v8, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->k:J

    sub-long/2addr v11, v8

    long-to-int v8, v11

    iget-object v9, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->r:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_13

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    goto :goto_a

    :cond_13
    const/4 v8, 0x0

    :goto_a
    if-eqz v8, :cond_11

    iget v7, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->j:I

    iget v8, v8, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->e:I

    add-int/2addr v7, v8

    const/4 v8, 0x0

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    iget v9, v9, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->e:I

    sub-int/2addr v7, v9

    :goto_b
    move/from16 v23, v7

    move-object/from16 v35, v13

    :goto_c
    new-instance v13, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    iget v14, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->d:I

    iget-object v15, v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;->a:Ljava/lang/String;

    iget-object v7, v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;->b:Ljava/util/List;

    iget-wide v9, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->e:J

    iget-boolean v11, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->g:Z

    move-wide/from16 v17, v9

    iget-wide v8, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->k:J

    iget v10, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->l:I

    move-object v12, v7

    move-wide/from16 v24, v8

    iget-wide v7, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->m:J

    move-wide/from16 v27, v7

    iget-wide v7, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->n:J

    iget-boolean v9, v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;->c:Z

    move-wide/from16 v29, v7

    iget-boolean v7, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->o:Z

    iget-boolean v8, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->p:Z

    move/from16 v32, v7

    iget-object v7, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->q:Landroidx/media3/common/DrmInitData;

    move-object/from16 v34, v7

    iget-object v7, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->s:Lcom/google/common/collect/ImmutableList;

    move-object/from16 v36, v7

    iget-object v7, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->v:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;

    move-object/from16 v37, v7

    iget-object v7, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->t:Lcom/google/common/collect/ImmutableMap;

    move-object/from16 v38, v7

    iget-object v7, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->w:Lcom/google/common/collect/ImmutableList;

    move-object/from16 v39, v7

    iget-object v7, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->x:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    const/16 v22, 0x1

    move-object/from16 v40, v7

    move/from16 v33, v8

    move/from16 v31, v9

    move/from16 v26, v10

    move/from16 v19, v11

    move-object/from16 v16, v12

    const/4 v7, 0x0

    invoke-direct/range {v13 .. v40}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;-><init>(ILjava/lang/String;Ljava/util/List;JZJZIJIJJZZZLandroidx/media3/common/DrmInitData;Ljava/util/List;Ljava/util/List;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;Ljava/util/Map;Ljava/util/List;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;)V

    :goto_d
    iput-object v13, v0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->f:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    iget-object v8, v0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->b:Landroid/net/Uri;

    if-eq v13, v3, :cond_16

    iput-object v7, v0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->l:Ljava/io/IOException;

    iput-wide v4, v0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->h:J

    iget-object v1, v6, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->t:Landroid/net/Uri;

    invoke-virtual {v8, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, v6, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->u:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    if-nez v1, :cond_14

    iget-boolean v1, v13, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->o:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v6, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->v:Z

    iget-wide v9, v13, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->h:J

    iput-wide v9, v6, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->w:J

    :cond_14
    iput-object v13, v6, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->u:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    iget-object v1, v6, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->m:Landroidx/media3/exoplayer/hls/HlsMediaSource;

    invoke-virtual {v1, v13}, Landroidx/media3/exoplayer/hls/HlsMediaSource;->y(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)V

    :cond_15
    invoke-virtual/range {v72 .. v72}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;

    invoke-interface {v7}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;->h()V

    goto :goto_e

    :cond_16
    iget-boolean v9, v13, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->o:Z

    if-nez v9, :cond_19

    iget-wide v9, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->k:J

    iget-object v1, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->r:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v11, v1

    add-long/2addr v9, v11

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->f:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    iget-wide v11, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->k:J

    cmp-long v9, v9, v11

    if-gez v9, :cond_17

    new-instance v14, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistResetException;

    invoke-direct {v14, v8}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistResetException;-><init>(Landroid/net/Uri;)V

    move/from16 v9, v71

    goto :goto_10

    :cond_17
    iget-wide v9, v0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->h:J

    sub-long v9, v4, v9

    long-to-double v9, v9

    iget-wide v11, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->m:J

    invoke-static {v11, v12}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v11

    long-to-double v11, v11

    iget-wide v13, v6, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->g:D

    mul-double/2addr v11, v13

    cmpl-double v1, v9, v11

    if-lez v1, :cond_18

    new-instance v14, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistStuckException;

    invoke-direct {v14, v8}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistStuckException;-><init>(Landroid/net/Uri;)V

    :goto_f
    const/4 v9, 0x0

    goto :goto_10

    :cond_18
    move-object v14, v7

    goto :goto_f

    :goto_10
    if-eqz v14, :cond_19

    iput-object v14, v0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->l:Ljava/io/IOException;

    new-instance v1, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;

    new-instance v7, Landroidx/media3/exoplayer/source/MediaLoadData;

    const/4 v10, 0x4

    invoke-direct {v7, v10}, Landroidx/media3/exoplayer/source/MediaLoadData;-><init>(I)V

    move/from16 v10, v71

    invoke-direct {v1, v2, v7, v14, v10}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;-><init>(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;I)V

    invoke-virtual/range {v72 .. v72}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_11
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_19

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;

    invoke-interface {v10, v8, v1, v9}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;->b(Landroid/net/Uri;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;Z)Z

    goto :goto_11

    :cond_19
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->f:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    iget-object v7, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->v:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;

    iget-wide v9, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->m:J

    iget-boolean v7, v7, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;->e:Z

    const-wide/16 v11, 0x2

    if-nez v7, :cond_1b

    if-eq v1, v3, :cond_1a

    :goto_12
    move-wide/from16 v41, v9

    goto :goto_13

    :cond_1a
    div-long/2addr v9, v11

    goto :goto_12

    :cond_1b
    if-ne v1, v3, :cond_1d

    iget-wide v13, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->n:J

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v13, v15

    if-eqz v1, :cond_1c

    div-long/2addr v13, v11

    move-wide/from16 v41, v13

    goto :goto_13

    :cond_1c
    div-long/2addr v9, v11

    goto :goto_12

    :cond_1d
    :goto_13
    invoke-static/range {v41 .. v42}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v9

    add-long/2addr v9, v4

    iget-wide v1, v2, Landroidx/media3/exoplayer/source/LoadEventInfo;->e:J

    sub-long/2addr v9, v1

    iput-wide v9, v0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->i:J

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->f:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    iget-boolean v1, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->o:Z

    if-nez v1, :cond_1f

    iget-object v1, v6, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->t:Landroid/net/Uri;

    invoke-virtual {v8, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    iget-boolean v1, v0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->m:Z

    if-eqz v1, :cond_1f

    :cond_1e
    invoke-virtual {v0}, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->d(Landroid/net/Uri;)V

    :cond_1f
    return-void
.end method

.method public final l(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJI)V
    .locals 15

    move-object/from16 v0, p1

    check-cast v0, Landroidx/media3/exoplayer/upstream/ParsingLoadable;

    if-nez p6, :cond_0

    new-instance v1, Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-wide v2, v0, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->a:J

    iget-object v4, v0, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->b:Landroidx/media3/datasource/DataSpec;

    move-wide/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(JLandroidx/media3/datasource/DataSpec;J)V

    move-object v4, v1

    goto :goto_0

    :cond_0
    new-instance v2, Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-wide v3, v0, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->a:J

    iget-object v5, v0, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->b:Landroidx/media3/datasource/DataSpec;

    iget-object v1, v0, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->d:Landroidx/media3/datasource/StatsDataSource;

    iget-object v6, v1, Landroidx/media3/datasource/StatsDataSource;->c:Landroid/net/Uri;

    iget-object v7, v1, Landroidx/media3/datasource/StatsDataSource;->d:Ljava/util/Map;

    iget-wide v12, v1, Landroidx/media3/datasource/StatsDataSource;->b:J

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v2 .. v13}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(JLandroidx/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    move-object v4, v2

    :goto_0
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->n:Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    iget-object v3, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->j:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget v5, v0, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->c:I

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v14, p6

    invoke-virtual/range {v3 .. v14}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->f(Landroidx/media3/exoplayer/source/LoadEventInfo;IILandroidx/media3/common/Format;ILjava/lang/Object;JJI)V

    return-void
.end method

.method public final q(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJ)V
    .locals 14

    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/upstream/ParsingLoadable;

    iget-object v1, v0, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->f:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;

    new-instance v2, Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-wide v3, v0, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->a:J

    iget-object v5, v0, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->b:Landroidx/media3/datasource/DataSpec;

    iget-object v0, v0, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->d:Landroidx/media3/datasource/StatsDataSource;

    iget-object v6, v0, Landroidx/media3/datasource/StatsDataSource;->c:Landroid/net/Uri;

    iget-object v7, v0, Landroidx/media3/datasource/StatsDataSource;->d:Ljava/util/Map;

    iget-wide v12, v0, Landroidx/media3/datasource/StatsDataSource;->b:J

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v2 .. v13}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(JLandroidx/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    instance-of v0, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    if-eqz v0, :cond_0

    check-cast v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    invoke-virtual {p0, v1, v2}, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->e(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Landroidx/media3/exoplayer/source/LoadEventInfo;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->n:Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    iget-object v0, v0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->j:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x4

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    move-object v2, v0

    invoke-virtual/range {v2 .. v12}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->c(Landroidx/media3/exoplayer/source/LoadEventInfo;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    goto :goto_0

    :cond_0
    const-string v0, "Loaded playlist has unexpected type."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->b(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->l:Ljava/io/IOException;

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->n:Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    iget-object v1, v1, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->j:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-virtual {v1, v2, v4, v0, v3}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->e(Landroidx/media3/exoplayer/source/LoadEventInfo;ILjava/io/IOException;Z)V

    :goto_0
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->n:Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->d:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final w(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJZ)V
    .locals 12

    check-cast p1, Landroidx/media3/exoplayer/upstream/ParsingLoadable;

    new-instance v0, Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-wide v1, p1, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->a:J

    iget-object v3, p1, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->b:Landroidx/media3/datasource/DataSpec;

    iget-object p1, p1, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->d:Landroidx/media3/datasource/StatsDataSource;

    iget-object v4, p1, Landroidx/media3/datasource/StatsDataSource;->c:Landroid/net/Uri;

    iget-object v5, p1, Landroidx/media3/datasource/StatsDataSource;->d:Ljava/util/Map;

    iget-wide v10, p1, Landroidx/media3/datasource/StatsDataSource;->b:J

    move-wide v6, p2

    move-wide/from16 v8, p4

    invoke-direct/range {v0 .. v11}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(JLandroidx/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->n:Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->d:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->j:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x4

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->b(Landroidx/media3/exoplayer/source/LoadEventInfo;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    return-void
.end method
