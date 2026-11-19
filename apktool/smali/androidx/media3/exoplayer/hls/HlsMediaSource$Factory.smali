.class public final Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaSourceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/hls/HlsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# static fields
.field public static final synthetic p:I


# instance fields
.field public final c:Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;

.field public d:Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;

.field public e:Landroidx/media3/extractor/text/SubtitleParser$Factory;

.field public f:Z

.field public g:I

.field public final h:Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistParserFactory;

.field public final i:Los;

.field public final j:Landroidx/media3/exoplayer/source/DefaultCompositeSequenceableLoaderFactory;

.field public final k:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;

.field public final l:Landroidx/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;

.field public final m:Z

.field public final n:I

.field public final o:J


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSource$Factory;)V
    .locals 1

    .line 58
    new-instance v0, Landroidx/media3/exoplayer/hls/DefaultHlsDataSourceFactory;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/hls/DefaultHlsDataSourceFactory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;-><init>(Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->c:Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;

    new-instance p1, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;

    invoke-direct {p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->k:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;

    new-instance p1, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistParserFactory;

    invoke-direct {p1}, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistParserFactory;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->h:Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistParserFactory;

    sget-object p1, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->x:Los;

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->i:Los;

    new-instance p1, Landroidx/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {p1}, Landroidx/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->l:Landroidx/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;

    new-instance p1, Landroidx/media3/exoplayer/source/DefaultCompositeSequenceableLoaderFactory;

    invoke-direct {p1}, Landroidx/media3/exoplayer/source/DefaultCompositeSequenceableLoaderFactory;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->j:Landroidx/media3/exoplayer/source/DefaultCompositeSequenceableLoaderFactory;

    const/4 p1, 0x1

    iput p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->n:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->o:J

    iput-boolean p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->m:Z

    const/4 v0, 0x3

    iput v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->g:I

    iput-boolean p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->f:Z

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/extractor/text/SubtitleParser$Factory;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->e:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    return-void
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->g:I

    return-void
.end method

.method public final c(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 15

    move-object/from16 v1, p1

    iget-object v0, v1, Landroidx/media3/common/MediaItem;->b:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->d:Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;

    invoke-direct {v0}, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->d:Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->e:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->d:Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;

    iput-object v0, v2, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->b:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    :cond_1
    iget-object v3, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->d:Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;

    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->f:Z

    iput-boolean v0, v3, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->c:Z

    iget v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->g:I

    iput v0, v3, Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;->d:I

    iget-object v0, v1, Landroidx/media3/common/MediaItem;->b:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v0, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    iget-object v4, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->h:Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistParserFactory;

    if-nez v2, :cond_2

    new-instance v2, Landroidx/media3/exoplayer/hls/playlist/FilteringHlsPlaylistParserFactory;

    invoke-direct {v2, v4, v0}, Landroidx/media3/exoplayer/hls/playlist/FilteringHlsPlaylistParserFactory;-><init>(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;Ljava/util/List;)V

    move-object v8, v2

    goto :goto_0

    :cond_2
    move-object v8, v4

    :goto_0
    new-instance v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->k:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;->a(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/drm/DrmSessionManager;

    move-result-object v2

    iget-object v4, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->i:Los;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    iget-object v6, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->c:Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;

    iget-object v7, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->l:Landroidx/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;-><init>(Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;Landroidx/media3/exoplayer/upstream/CmcdConfiguration;Lcom/google/common/base/Supplier;)V

    iget-boolean v11, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->m:Z

    iget v12, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->n:I

    move-object v6, v2

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->c:Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;

    iget-object v4, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->j:Landroidx/media3/exoplayer/source/DefaultCompositeSequenceableLoaderFactory;

    iget-wide v13, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->o:J

    move-object v8, v5

    move-object v5, v9

    move-wide v9, v13

    invoke-direct/range {v0 .. v12}, Landroidx/media3/exoplayer/hls/HlsMediaSource;-><init>(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;Landroidx/media3/exoplayer/hls/DefaultHlsExtractorFactory;Landroidx/media3/exoplayer/source/DefaultCompositeSequenceableLoaderFactory;Landroidx/media3/exoplayer/upstream/CmcdConfiguration;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;JZI)V

    return-object v0
.end method

.method public final d(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->f:Z

    return-void
.end method
