.class public final Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;
.implements Landroidx/media3/exoplayer/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;,
        Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$RedundantGroupBundle;,
        Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$FirstPrimaryMediaPlaylistListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;",
        "Landroidx/media3/exoplayer/upstream/Loader$Callback<",
        "Landroidx/media3/exoplayer/upstream/ParsingLoadable<",
        "Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final x:Los;


# instance fields
.field public final b:Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;

.field public final c:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;

.field public final d:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field public final e:Ljava/util/HashMap;

.field public final f:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final g:D

.field public final h:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

.field public final i:Lcom/google/common/base/Supplier;

.field public j:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

.field public k:Landroidx/media3/exoplayer/upstream/Loader;

.field public l:Landroid/os/Handler;

.field public m:Landroidx/media3/exoplayer/hls/HlsMediaSource;

.field public n:Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

.field public o:Landroidx/media3/common/ParserException;

.field public p:Lcom/google/common/collect/ImmutableList;

.field public q:Lcom/google/common/collect/ImmutableList;

.field public r:Lcom/google/common/collect/ImmutableList;

.field public s:Lcom/google/common/collect/ImmutableList;

.field public t:Landroid/net/Uri;

.field public u:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

.field public v:Z

.field public w:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Los;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Los;-><init>(I)V

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->x:Los;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;Landroidx/media3/exoplayer/upstream/CmcdConfiguration;DLcom/google/common/base/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;",
            "Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;",
            "Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;",
            "Landroidx/media3/exoplayer/upstream/CmcdConfiguration;",
            "D",
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/util/ReleasableExecutor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->b:Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;

    iput-object p3, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->c:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->d:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iput-object p4, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->h:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    iput-wide p5, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->g:D

    iput-object p7, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->i:Lcom/google/common/base/Supplier;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->e:Ljava/util/HashMap;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->w:J

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;Landroidx/media3/exoplayer/upstream/CmcdConfiguration;Lcom/google/common/base/Supplier;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;",
            "Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;",
            "Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;",
            "Landroidx/media3/exoplayer/upstream/CmcdConfiguration;",
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/util/ReleasableExecutor;",
            ">;)V"
        }
    .end annotation

    const-wide/high16 v5, 0x400c000000000000L    # 3.5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    .line 37
    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;-><init>(Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;Landroidx/media3/exoplayer/upstream/CmcdConfiguration;DLcom/google/common/base/Supplier;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;J)Z
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->e:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$RedundantGroupBundle;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$RedundantGroupBundle;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->q(Z)V

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide p0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->j:J

    cmp-long p0, p2, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public final b(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .locals 14

    move-object/from16 v0, p6

    move-object v1, p1

    check-cast v1, Landroidx/media3/exoplayer/upstream/ParsingLoadable;

    new-instance v2, Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-wide v3, v1, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->a:J

    iget-object v5, v1, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->b:Landroidx/media3/datasource/DataSpec;

    iget-object v6, v1, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->d:Landroidx/media3/datasource/StatsDataSource;

    iget-object v7, v6, Landroidx/media3/datasource/StatsDataSource;->c:Landroid/net/Uri;

    move-object v8, v7

    iget-object v7, v6, Landroidx/media3/datasource/StatsDataSource;->d:Ljava/util/Map;

    iget-wide v12, v6, Landroidx/media3/datasource/StatsDataSource;->b:J

    move-wide/from16 v10, p4

    move-object v6, v8

    move-wide/from16 v8, p2

    invoke-direct/range {v2 .. v13}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(JLandroidx/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    new-instance v3, Landroidx/media3/exoplayer/source/MediaLoadData;

    iget v1, v1, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->c:I

    invoke-direct {v3, v1}, Landroidx/media3/exoplayer/source/MediaLoadData;-><init>(I)V

    new-instance v4, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;

    move/from16 v5, p7

    invoke-direct {v4, v2, v3, v0, v5}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;-><init>(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;I)V

    iget-object v3, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->d:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    invoke-interface {v3, v4}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->a(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)J

    move-result-wide v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v3, v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->j:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {p0, v2, v1, v0, v5}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->e(Landroidx/media3/exoplayer/source/LoadEventInfo;ILjava/io/IOException;Z)V

    if-eqz v5, :cond_1

    sget-object p0, Landroidx/media3/exoplayer/upstream/Loader;->f:Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    return-object p0

    :cond_1
    new-instance p0, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    invoke-direct {p0, v6, v3, v4}, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;-><init>(IJ)V

    return-object p0
.end method

.method public final c(Landroid/net/Uri;)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->e:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$RedundantGroupBundle;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$RedundantGroupBundle;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->m:Z

    :cond_0
    return-void
.end method

.method public final d(Landroid/net/Uri;)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->e:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$RedundantGroupBundle;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$RedundantGroupBundle;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->d:Landroidx/media3/exoplayer/upstream/Loader;

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/upstream/Loader;->c(I)V

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->l:Ljava/io/IOException;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final e(I)Lcom/google/common/collect/ImmutableList;
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->s:Lcom/google/common/collect/ImmutableList;

    return-object p0

    :cond_1
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->r:Lcom/google/common/collect/ImmutableList;

    return-object p0

    :cond_2
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->q:Lcom/google/common/collect/ImmutableList;

    return-object p0

    :cond_3
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->p:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public final f()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->w:J

    return-wide v0
.end method

.method public final g()Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->n:Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    return-object p0
.end method

.method public final h(Landroid/net/Uri;)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->e:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$RedundantGroupBundle;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$RedundantGroupBundle;->b(Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$RedundantGroupBundle;Landroid/net/Uri;Z)V

    :cond_0
    return-void
.end method

.method public final i(Landroid/net/Uri;)Z
    .locals 6

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->e:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$RedundantGroupBundle;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$RedundantGroupBundle;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->f:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->f:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    iget-wide v2, p1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->u:J

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->f:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    iget-boolean v4, p1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->o:Z

    const/4 v5, 0x1

    if-nez v4, :cond_3

    iget p1, p1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->d:I

    const/4 v4, 0x2

    if-eq p1, v4, :cond_3

    if-eq p1, v5, :cond_3

    iget-wide p0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->g:J

    add-long/2addr p0, v2

    cmp-long p0, p0, v0

    if-lez p0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    return v5
.end method

.method public final j(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final k(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

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

.method public final m()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->v:Z

    return p0
.end method

.method public final n(Landroid/net/Uri;J)Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->e:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$RedundantGroupBundle;

    if-eqz p0, :cond_0

    invoke-static {p0, p1, p2, p3}, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$RedundantGroupBundle;->c(Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$RedundantGroupBundle;Landroid/net/Uri;J)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final o(Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;J)Z
    .locals 4

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;->c()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$RedundantGroupBundle;

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$RedundantGroupBundle;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;

    iget-wide v2, v2, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->j:J

    cmp-long v2, p2, v2

    if-gtz v2, :cond_0

    move v2, v0

    goto :goto_1

    :cond_0
    move v2, p1

    :goto_1
    and-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    return p1
.end method

.method public final p(Landroid/net/Uri;)Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->e:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$RedundantGroupBundle;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$RedundantGroupBundle;->a:Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final q(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJ)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    check-cast v0, Landroidx/media3/exoplayer/upstream/ParsingLoadable;

    iget-object v2, v0, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->f:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;

    instance-of v3, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    if-eqz v3, :cond_0

    iget-object v4, v2, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;->a:Ljava/lang/String;

    sget-object v5, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->n:Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    new-instance v4, Landroidx/media3/common/Format$Builder;

    invoke-direct {v4}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v5, "0"

    iput-object v5, v4, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    const-string v5, "application/x-mpegURL"

    invoke-static {v5}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroidx/media3/common/Format$Builder;->m:Ljava/lang/String;

    new-instance v8, Landroidx/media3/common/Format;

    invoke-direct {v8, v4}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    new-instance v6, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v14}, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;-><init>(Landroid/net/Uri;Landroidx/media3/common/Format;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    new-instance v7, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    sget-object v9, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/16 v17, 0x0

    sget-object v18, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const-string v8, ""

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v9

    move-object v12, v9

    move-object v13, v9

    move-object v14, v9

    move-object/from16 v19, v9

    invoke-direct/range {v7 .. v19}, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/media3/common/Format;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    move-object v7, v2

    check-cast v7, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    :goto_0
    iput-object v7, v1, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->n:Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    :try_start_0
    iget-object v4, v7, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->e:Ljava/util/List;

    invoke-static {v4}, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;->b(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    iput-object v4, v1, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->p:Lcom/google/common/collect/ImmutableList;

    iget-object v4, v7, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->f:Ljava/util/List;

    invoke-static {v4}, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;->a(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    iput-object v4, v1, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->q:Lcom/google/common/collect/ImmutableList;

    iget-object v4, v7, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->g:Ljava/util/List;

    invoke-static {v4}, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;->a(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    iput-object v4, v1, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->r:Lcom/google/common/collect/ImmutableList;

    iget-object v4, v7, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->h:Ljava/util/List;

    invoke-static {v4}, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;->a(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    iput-object v4, v1, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->s:Lcom/google/common/collect/ImmutableList;
    :try_end_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v4, v1, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->p:Lcom/google/common/collect/ImmutableList;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;->c()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v1, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->t:Landroid/net/Uri;

    iget-object v4, v1, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v6, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$FirstPrimaryMediaPlaylistListener;

    invoke-direct {v6, v1}, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$FirstPrimaryMediaPlaylistListener;-><init>(Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;)V

    invoke-virtual {v4, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v1, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->p:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v4}, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->s(Ljava/util/List;)V

    iget-object v4, v1, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->q:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v4}, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->s(Ljava/util/List;)V

    iget-object v4, v1, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->r:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v4}, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->s(Ljava/util/List;)V

    iget-object v4, v1, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->s:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v4}, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->s(Ljava/util/List;)V

    new-instance v6, Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-wide v7, v0, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->a:J

    iget-object v9, v0, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->b:Landroidx/media3/datasource/DataSpec;

    iget-object v4, v0, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->d:Landroidx/media3/datasource/StatsDataSource;

    iget-object v10, v4, Landroidx/media3/datasource/StatsDataSource;->c:Landroid/net/Uri;

    iget-object v11, v4, Landroidx/media3/datasource/StatsDataSource;->d:Ljava/util/Map;

    iget-wide v12, v4, Landroidx/media3/datasource/StatsDataSource;->b:J

    move-wide/from16 v14, p4

    move-wide/from16 v16, v12

    move-wide/from16 v12, p2

    invoke-direct/range {v6 .. v17}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(JLandroidx/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget-object v4, v1, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->e:Ljava/util/HashMap;

    iget-object v7, v1, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->t:Landroid/net/Uri;

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$RedundantGroupBundle;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v3, :cond_1

    iget-object v0, v0, Landroidx/media3/exoplayer/upstream/ParsingLoadable;->d:Landroidx/media3/datasource/StatsDataSource;

    iget-object v0, v0, Landroidx/media3/datasource/StatsDataSource;->c:Landroid/net/Uri;

    check-cast v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    iget-object v3, v4, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$RedundantGroupBundle;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->q(Z)V

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v2, v6}, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->e(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Landroidx/media3/exoplayer/source/LoadEventInfo;)V

    goto :goto_1

    :cond_1
    iget-object v0, v1, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->t:Landroid/net/Uri;

    invoke-static {v4, v0, v5}, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$RedundantGroupBundle;->b(Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$RedundantGroupBundle;Landroid/net/Uri;Z)V

    :goto_1
    iget-object v0, v1, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->d:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v7, v6

    iget-object v6, v1, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->j:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x4

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v16}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->c(Landroidx/media3/exoplayer/source/LoadEventInfo;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    return-void

    :catch_0
    move-exception v0

    iput-object v0, v1, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->o:Landroidx/media3/common/ParserException;

    return-void
.end method

.method public final r(Landroid/net/Uri;Z)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$RedundantGroupBundle;

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {v1, p1}, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$RedundantGroupBundle;->a(Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$RedundantGroupBundle;Landroid/net/Uri;)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->u(Landroid/net/Uri;)V

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$RedundantGroupBundle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$RedundantGroupBundle;->b:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->m:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    iput-boolean v0, p2, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->m:Z

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$RedundantGroupBundle;->a(Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$RedundantGroupBundle;Landroid/net/Uri;)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-boolean p2, p2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->o:Z

    if-nez p2, :cond_2

    invoke-static {p0, p1, v0}, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$RedundantGroupBundle;->b(Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$RedundantGroupBundle;Landroid/net/Uri;Z)V

    :cond_2
    :goto_0
    return-object v1
.end method

.method public final s(Ljava/util/List;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;

    new-instance v2, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$RedundantGroupBundle;

    invoke-direct {v2, p0, v1}, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$RedundantGroupBundle;-><init>(Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;)V

    iget-object v1, v1, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableSet;->s(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableCollection;->p()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iget-object v4, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->e:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final t(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->u:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    if-eqz p0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->v:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;->e:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->t:Lcom/google/common/collect/ImmutableMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;->b:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_HLS_msn"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget p0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;->c:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const-string v0, "_HLS_part"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method public final u(Landroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->t:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->n:Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    iget-object v0, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->e:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    iget-object v2, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->a:Landroid/net/Uri;

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->u:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->o:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->t:Landroid/net/Uri;

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$RedundantGroupBundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$RedundantGroupBundle;->a(Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$RedundantGroupBundle;Landroid/net/Uri;)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-boolean v2, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->o:Z

    if-eqz v2, :cond_1

    iput-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->u:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->m:Landroidx/media3/exoplayer/hls/HlsMediaSource;

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/hls/HlsMediaSource;->y(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->t(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    iget-object v0, v0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$RedundantGroupBundle;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->q(Z)V

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p0}, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->d(Landroid/net/Uri;)V

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final v()V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->t:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->u:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->n:Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->p:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->q:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->r:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->s:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->o:Landroidx/media3/common/ParserException;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->w:J

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->k:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/upstream/Loader;->d(Landroidx/media3/exoplayer/upstream/Loader$ReleaseCallback;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->k:Landroidx/media3/exoplayer/upstream/Loader;

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->e:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$RedundantGroupBundle;

    iget-object v3, v3, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$RedundantGroupBundle;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;

    iget-object v4, v4, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->d:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v4, v0}, Landroidx/media3/exoplayer/upstream/Loader;->d(Landroidx/media3/exoplayer/upstream/Loader$ReleaseCallback;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->l:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->l:Landroid/os/Handler;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

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
