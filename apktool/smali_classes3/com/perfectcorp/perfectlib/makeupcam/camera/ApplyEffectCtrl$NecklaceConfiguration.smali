.class final Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$NecklaceConfiguration;
.super Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NecklaceConfiguration"
.end annotation


# instance fields
.field public n:Lcom/perfectcorp/perfectlib/internal/NecklaceObject3dModel;

.field public final synthetic o:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;)V
    .locals 3

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$NecklaceConfiguration;->o:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->NECKLACE:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    invoke-direct {p0, p1, v0, p2, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$NecklaceConfiguration;->n:Lcom/perfectcorp/perfectlib/internal/NecklaceObject3dModel;

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->i:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->a(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->f:Lcom/perfectcorp/perfectlib/internal/NecklaceFilter;

    invoke-virtual {p0, v1}, Lcom/cyberlink/clgpuimage/CLMakeupLivePluginFilter;->SetEnabled(Z)V

    return-void
.end method


# virtual methods
.method public final m(Ljava/util/List;Ljava/util/List;)V
    .locals 4

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$NecklaceConfiguration;->o:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object p2, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->f:Lcom/perfectcorp/perfectlib/internal/NecklaceFilter;

    const-string v0, "ApplyEffectCtrl"

    if-nez p2, :cond_0

    const-string p0, "no necklace filter."

    invoke-static {v0, p0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$NecklaceConfiguration;->n:Lcom/perfectcorp/perfectlib/internal/NecklaceObject3dModel;

    if-nez p2, :cond_1

    const-string p0, "no necklaceObject3dModel."

    invoke-static {v0, p0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object p2, Lcom/perfectcorp/common/debug/PerformanceCounter;->b:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {p2}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object p2

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    iget-object p2, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->f:Lcom/perfectcorp/perfectlib/internal/NecklaceFilter;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$NecklaceConfiguration;->n:Lcom/perfectcorp/perfectlib/internal/NecklaceObject3dModel;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/internal/NecklaceObject3dModel;->necklace_models:Ljava/util/List;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/internal/NecklaceObject3dModel;->necklace_texture_maps:Ljava/util/Map;

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/internal/NecklaceObject3dModel;->necklace_occluder:Ljava/util/List;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/internal/NecklaceObject3dModel;->necklace_HDR_texture_map:Ljava/util/Map;

    invoke-virtual {p2, v1, v2, v3, v0}, Lcom/perfectcorp/perfectlib/internal/NecklaceFilter;->SetNecklaceModels(Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;)V

    new-instance p2, Li7;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Li7;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;I)V

    invoke-virtual {p0, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->f(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    invoke-interface {p0}, Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;->J0()J

    return-void
.end method

.method public final o(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;I)V
    .locals 4

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$NecklaceConfiguration;->o:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->f:Lcom/perfectcorp/perfectlib/internal/NecklaceFilter;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->g:Lcom/perfectcorp/perfectlib/AccessoryCamWrapper;

    if-eqz v1, :cond_2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/perfectcorp/common/debug/PerformanceCounter;->b:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v1}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v1

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    invoke-virtual {p1, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->a:Ljava/lang/String;

    iget-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual {p2, p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->E:Ljava/lang/String;

    new-instance p2, Ljava/io/File;

    invoke-interface {v2}, Lcom/perfectcorp/perfectlib/AccessoryCamWrapper;->getNecklaceVersion()I

    move-result v1

    const/16 v3, 0x7d0

    if-gt v1, v3, :cond_1

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->l:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->m:Ljava/lang/String;

    :goto_0
    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/perfectcorp/common/io/IO;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p1, p2}, Lcom/perfectcorp/perfectlib/AccessoryCamWrapper;->loadObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/internal/NecklaceObject3dModel;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$NecklaceConfiguration;->n:Lcom/perfectcorp/perfectlib/internal/NecklaceObject3dModel;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    return-void

    :cond_2
    :goto_1
    const-string p0, "no necklace filter."

    const/4 p1, 0x3

    const-string p2, "ApplyEffectCtrl"

    invoke-static {p1, p2, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method
