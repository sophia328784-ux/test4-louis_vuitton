.class public interface abstract Landroidx/media3/exoplayer/source/ShuffleOrder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;
    }
.end annotation


# virtual methods
.method public abstract a(II)Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;
.end method

.method public abstract b(I)I
.end method

.method public abstract c(I)I
.end method

.method public d()Landroidx/media3/exoplayer/source/ShuffleOrder;
    .locals 0

    return-object p0
.end method

.method public abstract e()I
.end method

.method public abstract f()Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;
.end method

.method public abstract g()I
.end method

.method public abstract getLength()I
.end method

.method public h(I)Landroidx/media3/exoplayer/source/ShuffleOrder;
    .locals 1

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/ShuffleOrder;->f()Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->i(II)Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    move-result-object p0

    return-object p0
.end method

.method public abstract i(II)Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;
.end method
