.class public final Landroidx/media3/decoder/CryptoInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;
    }
.end annotation


# instance fields
.field public a:[B

.field public b:[B

.field public c:I

.field public d:[I

.field public e:[I

.field public f:I

.field public g:I

.field public h:I

.field public final i:Landroid/media/MediaCodec$CryptoInfo;

.field public final j:Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    iput-object v0, p0, Landroidx/media3/decoder/CryptoInfo;->i:Landroid/media/MediaCodec$CryptoInfo;

    new-instance v1, Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;

    invoke-direct {v1, v0}, Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;-><init>(Landroid/media/MediaCodec$CryptoInfo;)V

    iput-object v1, p0, Landroidx/media3/decoder/CryptoInfo;->j:Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;

    return-void
.end method


# virtual methods
.method public final a(I[I[I[B[BIII)V
    .locals 1

    iput p1, p0, Landroidx/media3/decoder/CryptoInfo;->f:I

    iput-object p2, p0, Landroidx/media3/decoder/CryptoInfo;->d:[I

    iput-object p3, p0, Landroidx/media3/decoder/CryptoInfo;->e:[I

    iput-object p4, p0, Landroidx/media3/decoder/CryptoInfo;->b:[B

    iput-object p5, p0, Landroidx/media3/decoder/CryptoInfo;->a:[B

    iput p6, p0, Landroidx/media3/decoder/CryptoInfo;->c:I

    iput p7, p0, Landroidx/media3/decoder/CryptoInfo;->g:I

    iput p8, p0, Landroidx/media3/decoder/CryptoInfo;->h:I

    iget-object v0, p0, Landroidx/media3/decoder/CryptoInfo;->i:Landroid/media/MediaCodec$CryptoInfo;

    iput p1, v0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    iput-object p2, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    iput-object p3, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    iput-object p4, v0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    iput-object p5, v0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    iput p6, v0, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    iget-object p0, p0, Landroidx/media3/decoder/CryptoInfo;->j:Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;->b:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-virtual {p1, p7, p8}, Landroid/media/MediaCodec$CryptoInfo$Pattern;->set(II)V

    iget-object p0, p0, Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;->a:Landroid/media/MediaCodec$CryptoInfo;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec$CryptoInfo;->setPattern(Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    return-void
.end method
