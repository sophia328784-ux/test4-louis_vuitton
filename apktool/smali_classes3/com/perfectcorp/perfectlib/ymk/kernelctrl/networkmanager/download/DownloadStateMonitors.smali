.class public abstract Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadStateMonitors;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadStateMonitors$a;,
        Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadStateMonitors$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/perfectcorp/common/network/DownloadStateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadStateMonitors$b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadStateMonitors;->a:Lcom/perfectcorp/common/network/DownloadStateMonitor;

    return-void
.end method

.method public static a(JLcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;Ljava/lang/String;)Lcom/perfectcorp/common/network/DownloadStateMonitor;
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadStateMonitors$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadStateMonitors$a;-><init>(JLcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKDownloadLookEvent$Source;Ljava/lang/String;)V

    return-object v0
.end method
