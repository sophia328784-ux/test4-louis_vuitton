.class final Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadStateMonitors$a;
.super Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadStateMonitors$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadStateMonitors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public b:J

.field public final c:J

.field public final d:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;

.field public final e:Ljava/lang/String;

.field public volatile f:Z


# direct methods
.method public constructor <init>(JLcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadStateMonitors$a;->e:Ljava/lang/String;

    iput-wide p1, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadStateMonitors$a;->c:J

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadStateMonitors$a;->d:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-wide v0, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadStateMonitors$a;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Builder;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;->START_DOWNLOAD:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadStateMonitors$a;->d:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;

    invoke-direct {v0, v1, v2}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Builder;-><init>(Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;)V

    iget-wide v1, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadStateMonitors$a;->c:J

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Builder;->b(J)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadStateMonitors$a;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Builder;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadStateMonitors$a;->b:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Builder;->e:J

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Builder;->a()V

    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadStateMonitors$a;->b:J

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadStateMonitors$a;->f:Z

    return-void
.end method

.method public final d()V
    .locals 5

    iget-wide v0, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadStateMonitors$a;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Builder;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;->COMPLETE_DOWNLOAD:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadStateMonitors$a;->d:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;

    invoke-direct {v0, v1, v2}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Builder;-><init>(Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;)V

    iget-wide v1, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadStateMonitors$a;->c:J

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Builder;->b(J)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadStateMonitors$a;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Builder;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadStateMonitors$a;->b:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Builder;->e:J

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Builder;->a()V

    return-void
.end method

.method public final e()V
    .locals 3

    iget-boolean v0, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadStateMonitors$a;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Builder;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;->FAIL_DOWNLOAD:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadStateMonitors$a;->d:Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;

    invoke-direct {v0, v1, v2}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Builder;-><init>(Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Status;Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;)V

    iget-wide v1, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadStateMonitors$a;->c:J

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Builder;->b(J)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadStateMonitors$a;->e:Ljava/lang/String;

    iput-object p0, v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Builder;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Builder;->a()V

    return-void
.end method
