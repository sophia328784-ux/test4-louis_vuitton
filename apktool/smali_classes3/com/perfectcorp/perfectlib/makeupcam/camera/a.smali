.class abstract Lcom/perfectcorp/perfectlib/makeupcam/camera/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/makeupcam/camera/a$a;,
        Lcom/perfectcorp/perfectlib/makeupcam/camera/a$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/makeupcam/camera/c;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Ljava/nio/ByteBuffer;

.field public final g:Lcom/perfectcorp/perfectlib/makeupcam/camera/Decoder$ApngDecoder;

.field public h:J

.field public final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/c;Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSticker;Ljava/lang/String;II)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/c;

    iput p4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->b:I

    iput p5, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->c:I

    const-string p5, "/"

    invoke-static {p3, p5}, Ln00;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p5, p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSticker;->fileName:Ljava/lang/String;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p2, p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSticker;->alignMode:Ljava/lang/String;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->i:Ljava/lang/String;

    iget-object v2, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/c;->e:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    new-instance p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/Decoder$ApngDecoder;

    invoke-direct {p1, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/Decoder$VenusDecoder;-><init>(Lcom/perfectcorp/perfectlib/core/BaseVenus;)V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/Decoder$ApngDecoder;

    new-instance v6, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;

    invoke-direct {v6}, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;-><init>()V

    new-instance v7, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;

    invoke-direct {v7}, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;-><init>()V

    invoke-virtual {p1, p4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/Decoder$ApngDecoder;->a(I)Z

    const/4 v5, 0x0

    iget-wide v0, v2, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    move v3, p4

    invoke-static/range {v0 .. v7}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_AsyncDecodeApng(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;ILjava/lang/String;ZLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, v6, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;->value:I

    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->d:I

    iget p1, v7, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;->value:I

    :goto_0
    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->e:I

    goto :goto_1

    :cond_0
    const-string p1, "Call asyncDecode() failed!!! backgroundPath="

    invoke-virtual {p1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    const-string p3, "BackgroundDecodeInfo"

    invoke-static {p2, p3, p1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->d:I

    goto :goto_0

    :goto_1
    iget p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->d:I

    iget p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->e:I

    mul-int/2addr p1, p2

    shl-int/lit8 p1, p1, 0x2

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->f:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method
