.class final Lcom/perfectcorp/perfectlib/makeupcam/camera/a$a;
.super Lcom/perfectcorp/perfectlib/makeupcam/camera/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/c;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c;->a:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;->a(Ljava/lang/String;)Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;

    move-result-object v1

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->f:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->d:I

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->e:I

    invoke-virtual {v0, v2, v3, p0, v1}, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->m(Ljava/nio/Buffer;IILcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;)V

    return-void
.end method
