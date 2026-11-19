.class public final Lcom/perfectcorp/perfectlib/makeupcam/camera/Real3DEyewearPayload;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/perfectlib/makeupcam/camera/PayloadValidator;


# instance fields
.field public final a:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;

.field public final b:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearGlassInfo;


# direct methods
.method public constructor <init>(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearGlassInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/Real3DEyewearPayload;->a:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/Real3DEyewearPayload;->b:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearGlassInfo;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/Real3DEyewearPayload;->a:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/Real3DEyewearPayload;->b:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearGlassInfo;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "eyewearGlassInfo is null"

    :goto_0
    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "eyewearSetting is null"

    goto :goto_0
.end method
