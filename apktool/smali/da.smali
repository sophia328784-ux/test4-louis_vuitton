.class public final synthetic Lda;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, Lda;->b:I

    iput-object p1, p0, Lda;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lda;->b:I

    iget-object p0, p0, Lda;->c:Landroid/content/Context;

    packed-switch v0, :pswitch_data_0

    sget v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->E:I

    new-instance v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    new-instance v1, Landroidx/media3/extractor/DefaultExtractorsFactory;

    invoke-direct {v1}, Landroidx/media3/extractor/DefaultExtractorsFactory;-><init>()V

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;Landroidx/media3/extractor/ExtractorsFactory;)V

    return-object v0

    :pswitch_0
    sget v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->E:I

    new-instance v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    new-instance v1, Landroidx/media3/extractor/DefaultExtractorsFactory;

    invoke-direct {v1}, Landroidx/media3/extractor/DefaultExtractorsFactory;-><init>()V

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;Landroidx/media3/extractor/ExtractorsFactory;)V

    return-object v0

    :pswitch_1
    sget v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->E:I

    new-instance v0, Landroidx/media3/exoplayer/DefaultRenderersFactory;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    return-object v0

    :pswitch_2
    sget v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->E:I

    sget-object v0, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->p:Lcom/google/common/collect/ImmutableList;

    const-class v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->v:Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    iget-object v3, v0, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter$Builder;->a:Landroid/content/Context;

    iget-object v4, v0, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter$Builder;->b:Ljava/util/HashMap;

    iget v5, v0, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter$Builder;->c:I

    iget-object v6, v0, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter$Builder;->d:Landroidx/media3/common/util/SystemClock;

    iget-boolean v7, v0, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter$Builder;->e:Z

    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;-><init>(Landroid/content/Context;Ljava/util/Map;ILandroidx/media3/common/util/Clock;Z)V

    sput-object v2, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->v:Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->v:Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_3
    sget v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->E:I

    new-instance v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;)V

    return-object v0

    :pswitch_4
    sget v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->E:I

    new-instance v0, Landroidx/media3/exoplayer/DefaultRenderersFactory;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    return-object v0

    :pswitch_5
    invoke-static {p0}, Landroidx/media3/common/audio/AudioManagerCompat;->a(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
