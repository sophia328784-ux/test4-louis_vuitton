.class public abstract Landroidx/media3/exoplayer/trackselection/TrackSelector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/trackselection/TrackSelector$InvalidationListener;,
        Landroidx/media3/exoplayer/trackselection/TrackSelector$Factory;
    }
.end annotation


# instance fields
.field public a:Landroidx/media3/exoplayer/trackselection/TrackSelector$InvalidationListener;

.field public b:Landroidx/media3/exoplayer/upstream/BandwidthMeter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Landroidx/media3/common/TrackSelectionParameters;
    .locals 0

    sget-object p0, Landroidx/media3/common/TrackSelectionParameters;->J:Landroidx/media3/common/TrackSelectionParameters;

    return-object p0
.end method

.method public c()Landroidx/media3/exoplayer/RendererCapabilities$Listener;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract d(Ljava/lang/Object;)V
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/trackselection/TrackSelector;->a:Landroidx/media3/exoplayer/trackselection/TrackSelector$InvalidationListener;

    iput-object v0, p0, Landroidx/media3/exoplayer/trackselection/TrackSelector;->b:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    return-void
.end method

.method public abstract f([Landroidx/media3/exoplayer/RendererCapabilities;Landroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
.end method

.method public g(Landroidx/media3/common/AudioAttributes;)V
    .locals 0

    return-void
.end method

.method public h(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 0

    return-void
.end method
