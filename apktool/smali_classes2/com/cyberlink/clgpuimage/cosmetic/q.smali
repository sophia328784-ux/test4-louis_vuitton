.class final Lcom/cyberlink/clgpuimage/cosmetic/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;


# direct methods
.method public constructor <init>(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/q;->a:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/q;->a:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iget-object v0, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->v0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyberlink/clgpuimage/CLMakeupLivePluginFilter;

    invoke-virtual {v1}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->destroy()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/q;->a:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->v0:Ljava/util/List;

    return-void
.end method
