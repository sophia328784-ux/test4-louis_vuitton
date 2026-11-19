.class public Lcom/cyberlink/clgpuimage/GPUImage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyberlink/clgpuimage/GPUImage$ScaleType;
    }
.end annotation


# instance fields
.field public final a:Lcom/cyberlink/clgpuimage/GPUImageRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    invoke-virtual {p1}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v0, 0x30000

    if-lt p1, v0, :cond_0

    new-instance p1, Lcom/cyberlink/clgpuimage/GPUImageFilter;

    invoke-direct {p1}, Lcom/cyberlink/clgpuimage/GPUImageFilter;-><init>()V

    new-instance v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/cyberlink/clgpuimage/GPUImageRenderer;-><init>(Lcom/cyberlink/clgpuimage/GPUImageFilter;Z)V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/GPUImage;->a:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    return-void

    :cond_0
    const-string p0, "OpenGL ES 3.0 is not supported on this phone."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
