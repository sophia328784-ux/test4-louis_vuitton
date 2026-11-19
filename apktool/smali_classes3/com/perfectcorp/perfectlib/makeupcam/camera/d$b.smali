.class final Lcom/perfectcorp/perfectlib/makeupcam/camera/d$b;
.super Lcom/perfectcorp/perfectlib/makeupcam/camera/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# virtual methods
.method public final a()V
    .locals 7

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->a:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iget v5, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->d:I

    iget v6, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->e:I

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->h:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->f:I

    iget v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->g:I

    invoke-virtual/range {v1 .. v6}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->V(Ljava/nio/ByteBuffer;IIII)V

    return-void
.end method
