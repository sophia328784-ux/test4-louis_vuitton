.class public abstract Lcom/perfectcorp/perfectlib/ph/camera/panel/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;
    .locals 5

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->a(Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;)Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->n:Z

    iput-boolean v1, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->b:Z

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    new-instance v2, Lcom/perfectcorp/common/network/DownloadKey$Guid;

    invoke-direct {v2, v1}, Lcom/perfectcorp/common/network/DownloadKey$Guid;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->a:Lcom/perfectcorp/common/network/DownloadTask$Key;

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;->CAM:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;

    iget-wide v3, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->j:J

    invoke-static {v3, v4, v2, v1}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadStateMonitors;->a(JLcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;Ljava/lang/String;)Lcom/perfectcorp/common/network/DownloadStateMonitor;

    move-result-object p0

    iput-object p0, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->e:Lcom/perfectcorp/common/network/DownloadStateMonitor;

    return-object v0
.end method
