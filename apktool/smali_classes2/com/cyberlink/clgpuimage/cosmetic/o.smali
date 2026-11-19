.class final Lcom/cyberlink/clgpuimage/cosmetic/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Z

.field private synthetic c:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;


# direct methods
.method public constructor <init>(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;Ljava/util/List;Z)V
    .locals 0

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/o;->c:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iput-object p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/o;->a:Ljava/util/List;

    iput-boolean p3, p0, Lcom/cyberlink/clgpuimage/cosmetic/o;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/o;->c:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/o;->a:Ljava/util/List;

    iput-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->s0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyberlink/clgpuimage/CLMakeupLivePluginFilter;

    invoke-virtual {v1}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->init()V

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/o;->c:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iget v3, v2, Lcom/cyberlink/clgpuimage/GPUImageFilter;->g:I

    iget v2, v2, Lcom/cyberlink/clgpuimage/GPUImageFilter;->h:I

    invoke-virtual {v1, v3, v2}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->onOutputSizeChanged(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/o;->c:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iget-boolean v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->t:Z

    iget-boolean v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/o;->b:Z

    if-eq v1, v2, :cond_4

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->r:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    array-length v4, v1

    invoke-static {v4, v1, v3}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(I[II)V

    iput-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->r:[I

    :cond_1
    iget-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->q:[I

    if-eqz v1, :cond_2

    array-length v4, v1

    invoke-static {v4, v1, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    iput-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->q:[I

    :cond_2
    iput-boolean v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->s:Z

    iget-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/o;->b:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/o;->c:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->K0()V

    :cond_3
    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/o;->c:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iget-boolean p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/o;->b:Z

    iput-boolean p0, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->t:Z

    :cond_4
    return-void
.end method
