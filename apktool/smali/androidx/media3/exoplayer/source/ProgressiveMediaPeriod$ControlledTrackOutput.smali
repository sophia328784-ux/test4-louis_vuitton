.class Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;
.super Landroidx/media3/extractor/ForwardingTrackOutput;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ControlledTrackOutput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;
    }
.end annotation


# instance fields
.field public final b:Landroidx/media3/exoplayer/source/SampleQueue;

.field public final c:Landroidx/media3/extractor/DiscardingTrackOutput;

.field public final d:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/SampleQueue;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/media3/extractor/ForwardingTrackOutput;-><init>(Landroidx/media3/extractor/TrackOutput;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->b:Landroidx/media3/exoplayer/source/SampleQueue;

    new-instance p1, Landroidx/media3/extractor/DiscardingTrackOutput;

    invoke-direct {p1}, Landroidx/media3/extractor/DiscardingTrackOutput;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->c:Landroidx/media3/extractor/DiscardingTrackOutput;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;->PASS_THROUGH:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->d:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/common/util/ParsableByteArray;II)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->h()Landroidx/media3/extractor/TrackOutput;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/extractor/TrackOutput;->a(Landroidx/media3/common/util/ParsableByteArray;II)V

    return-void
.end method

.method public final c(Landroidx/media3/common/DataReader;IZ)I
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->h()Landroidx/media3/extractor/TrackOutput;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/extractor/TrackOutput;->c(Landroidx/media3/common/DataReader;IZ)I

    move-result p0

    return p0
.end method

.method public final d(Landroidx/media3/common/DataReader;IZ)I
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->h()Landroidx/media3/extractor/TrackOutput;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/extractor/TrackOutput;->d(Landroidx/media3/common/DataReader;IZ)I

    move-result p0

    return p0
.end method

.method public final f(ILandroidx/media3/common/util/ParsableByteArray;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->h()Landroidx/media3/extractor/TrackOutput;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    return-void
.end method

.method public final g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V
    .locals 7

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->h()Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroidx/media3/extractor/TrackOutput;->g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    sget-object p3, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;->DISCARD_AFTER_NEXT_SAMPLE_METADATA:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;

    if-ne p2, p3, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->b:Landroidx/media3/exoplayer/source/SampleQueue;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/source/SampleQueue;->z(Z)V

    sget-object p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;->DISCARDING:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final h()Landroidx/media3/extractor/TrackOutput;
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;->DISCARDING:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->c:Landroidx/media3/extractor/DiscardingTrackOutput;

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->b:Landroidx/media3/exoplayer/source/SampleQueue;

    return-object p0
.end method
