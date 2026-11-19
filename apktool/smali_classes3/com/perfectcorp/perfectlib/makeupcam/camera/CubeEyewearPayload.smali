.class public final Lcom/perfectcorp/perfectlib/makeupcam/camera/CubeEyewearPayload;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/perfectlib/makeupcam/camera/PayloadValidator;


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/CubeEyewearPayload;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/CubeEyewearPayload;->b:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    sget-object v0, Lcom/perfectcorp/common/utility/MoreCollections;->a:Ljava/util/Set;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/CubeEyewearPayload;->a:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/CubeEyewearPayload;->b:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "eyewearInfo is null"

    :goto_0
    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "textureList is empty"

    goto :goto_0
.end method
