.class public final Lcom/perfectcorp/perfectlib/makeupcam/camera/Decoder$ApngDecoder;
.super Lcom/perfectcorp/perfectlib/makeupcam/camera/Decoder$VenusDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApngDecoder"
.end annotation


# virtual methods
.method public final a(I)Z
    .locals 2

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/Decoder$VenusDecoder;->a:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-wide v0, p0, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static {v0, v1, p0, p1}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_StopDecodeApng(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;I)Z

    move-result p0

    return p0
.end method
