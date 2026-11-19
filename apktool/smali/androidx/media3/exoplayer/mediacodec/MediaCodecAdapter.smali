.class public interface abstract Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$OnBufferAvailableListener;,
        Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;,
        Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;,
        Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;
    }
.end annotation


# virtual methods
.method public abstract a(ILandroidx/media3/decoder/CryptoInfo;JI)V
.end method

.method public abstract b(Landroid/os/Bundle;)V
.end method

.method public abstract c(IIIJ)V
.end method

.method public d(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$OnBufferAvailableListener;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract e(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;Landroid/os/Handler;)V
.end method

.method public abstract f()Landroid/media/MediaFormat;
.end method

.method public abstract flush()V
.end method

.method public abstract g()V
.end method

.method public abstract h(I)V
.end method

.method public abstract i(I)Ljava/nio/ByteBuffer;
.end method

.method public abstract j(Landroid/view/Surface;)V
.end method

.method public k(Laa0;)V
    .locals 0

    invoke-virtual {p1}, Laa0;->run()V

    return-void
.end method

.method public abstract l(I)V
.end method

.method public abstract m(IJ)V
.end method

.method public abstract n()I
.end method

.method public abstract o(Landroid/media/MediaCodec$BufferInfo;)I
.end method

.method public abstract p(I)Ljava/nio/ByteBuffer;
.end method

.method public abstract q(Ljava/util/ArrayList;)V
.end method

.method public abstract r(Ljava/util/ArrayList;)V
.end method

.method public abstract release()V
.end method
