.class abstract Lcom/perfectcorp/perfectlib/makeupcam/camera/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/makeupcam/camera/d$a;,
        Lcom/perfectcorp/perfectlib/makeupcam/camera/d$c;,
        Lcom/perfectcorp/perfectlib/makeupcam/camera/d$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

.field public final b:Lcom/perfectcorp/perfectlib/makeupcam/camera/f;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:Ljava/nio/ByteBuffer;

.field public final i:Lcom/perfectcorp/perfectlib/makeupcam/camera/Decoder$ApngDecoder;

.field public final j:Z

.field public k:J


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/d$a;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/d$a;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/d$a;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/f;

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/f;

    iget v5, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/d$a;->c:I

    iput v5, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->c:I

    iget v1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/d$a;->d:I

    iput v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->d:I

    iget v1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/d$a;->e:I

    iput v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->e:I

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/Decoder$ApngDecoder;

    invoke-direct {v0, v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/Decoder$VenusDecoder;-><init>(Lcom/perfectcorp/perfectlib/core/BaseVenus;)V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->i:Lcom/perfectcorp/perfectlib/makeupcam/camera/Decoder$ApngDecoder;

    iget-boolean v1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/d$a;->h:Z

    iput-boolean v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->j:Z

    new-instance v8, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;

    invoke-direct {v8}, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;-><init>()V

    new-instance v9, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;

    invoke-direct {v9}, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;-><init>()V

    invoke-virtual {v0, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/Decoder$ApngDecoder;->a(I)Z

    iget-object v6, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/d$a;->f:Ljava/lang/String;

    iget-boolean v7, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/d$a;->g:Z

    iget-wide v2, v4, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static/range {v2 .. v9}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_AsyncDecodeApng(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;ILjava/lang/String;ZLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, v8, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;->value:I

    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->f:I

    iget p1, v9, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;->value:I

    :goto_0
    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->g:I

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Call asyncDecode() failed!!! stickerPath="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/d$a;->f:Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "DecodeInfo"

    invoke-static {v0, p1, v1, v2}, La;->A(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->f:I

    goto :goto_0

    :goto_1
    iget p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->f:I

    iget v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->g:I

    mul-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x2

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->h:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method
