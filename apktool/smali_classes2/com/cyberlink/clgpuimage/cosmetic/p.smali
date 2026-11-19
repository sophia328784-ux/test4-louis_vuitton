.class final Lcom/cyberlink/clgpuimage/cosmetic/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;


# direct methods
.method public constructor <init>(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/p;->b:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iput-object p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/p;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/p;->b:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/p;->a:Ljava/util/List;

    iput-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->v0:Ljava/util/List;

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

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/p;->b:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iget v3, v2, Lcom/cyberlink/clgpuimage/GPUImageFilter;->g:I

    iget v2, v2, Lcom/cyberlink/clgpuimage/GPUImageFilter;->h:I

    invoke-virtual {v1, v3, v2}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->onOutputSizeChanged(II)V

    goto :goto_0

    :cond_0
    return-void
.end method
