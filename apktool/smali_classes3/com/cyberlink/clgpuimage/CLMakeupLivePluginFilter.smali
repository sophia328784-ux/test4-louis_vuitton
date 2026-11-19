.class public Lcom/cyberlink/clgpuimage/CLMakeupLivePluginFilter;
.super Lcom/cyberlink/clgpuimage/GPUImageFilter;


# instance fields
.field public o:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/CLMakeupLivePluginFilter;->o:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/cyberlink/clgpuimage/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/cyberlink/clgpuimage/CLMakeupLivePluginFilter;->o:Z

    return-void
.end method


# virtual methods
.method public GetEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/cyberlink/clgpuimage/CLMakeupLivePluginFilter;->o:Z

    return p0
.end method

.method public SetEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cyberlink/clgpuimage/CLMakeupLivePluginFilter;->o:Z

    return-void
.end method
