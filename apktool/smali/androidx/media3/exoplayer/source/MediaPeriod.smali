.class public interface abstract Landroidx/media3/exoplayer/source/MediaPeriod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/SequenceableLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/MediaPeriod$Callback;
    }
.end annotation


# virtual methods
.method public abstract d(JLandroidx/media3/exoplayer/SeekParameters;)J
.end method

.method public abstract e(J)J
.end method

.method public abstract f([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J
.end method

.method public abstract g()J
.end method

.method public i(J)J
    .locals 0

    const-wide/high16 p0, -0x8000000000000000L

    return-wide p0
.end method

.method public abstract k()V
.end method

.method public abstract o(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V
.end method

.method public abstract p()Landroidx/media3/exoplayer/source/TrackGroupArray;
.end method

.method public abstract u(JZ)V
.end method
