.class Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$1;
.super Landroidx/media3/exoplayer/image/ImageOutputBuffer;
.source "SourceFile"


# instance fields
.field public final synthetic f:Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$1;->f:Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder;

    invoke-direct {p0}, Landroidx/media3/exoplayer/image/ImageOutputBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method public final h()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$1;->f:Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder;

    invoke-virtual {v0, p0}, Landroidx/media3/decoder/SimpleDecoder;->m(Landroidx/media3/decoder/DecoderOutputBuffer;)V

    return-void
.end method
