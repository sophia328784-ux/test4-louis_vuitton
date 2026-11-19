.class final Lcom/perfectcorp/perfectlib/makeupcam/camera/d$c;
.super Lcom/perfectcorp/perfectlib/makeupcam/camera/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->a:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iget v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->g:I

    iget v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->d:I

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->h:Ljava/nio/ByteBuffer;

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->f:I

    invoke-virtual {v0, v3, p0, v1, v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->U(Ljava/nio/ByteBuffer;III)V

    return-void
.end method
