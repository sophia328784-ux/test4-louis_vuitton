.class final Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Real3DEyewearConfiguration;
.super Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Real3DEyewearConfiguration"
.end annotation


# instance fields
.field public final n:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader;

.field public volatile o:Lcom/perfectcorp/perfectlib/makeupcam/camera/Real3DEyewearPayload;

.field public final synthetic p:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;)V
    .locals 4

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Real3DEyewearConfiguration;->p:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->REAL_3D_EYEWEAR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    invoke-direct {p0, p1, v0, p2, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;)V

    new-instance p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->h:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-object v2, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->E:Ljava/lang/Object;

    invoke-direct {p2, v0, v2, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader;-><init>(Lcom/perfectcorp/perfectlib/core/BaseVenus;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Real3DEyewearConfiguration;->n:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader;

    new-instance p2, Li7;

    invoke-direct {p2, p1, v1}, Li7;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;I)V

    invoke-virtual {p0, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->f(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final k()V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Real3DEyewearConfiguration;->p:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->g()V

    return-void
.end method

.method public final m(Ljava/util/List;Ljava/util/List;)V
    .locals 8

    sget-object p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->G:Ljava/util/List;

    sget-object p1, Lcom/perfectcorp/common/debug/PerformanceCounter;->b:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {p1}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Real3DEyewearConfiguration;->p:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Real3DEyewearConfiguration;->n:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader;->d:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader;->f:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader;->e:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Real3DEyewearConfiguration;->o:Lcom/perfectcorp/perfectlib/makeupcam/camera/Real3DEyewearPayload;

    iget-object v4, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/Real3DEyewearPayload;->b:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearGlassInfo;

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Real3DEyewearConfiguration;->o:Lcom/perfectcorp/perfectlib/makeupcam/camera/Real3DEyewearPayload;

    iget-object v5, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/Real3DEyewearPayload;->a:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Real3DEyewearConfiguration;->n:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader;

    iget-object p2, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader;->h:Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;

    iget v6, p2, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;->value:I

    iget-object v7, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader;->g:Ljava/util/HashMap;

    invoke-virtual/range {v0 .. v7}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->W(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearGlassInfo;Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;ILjava/util/HashMap;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    invoke-interface {p0}, Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;->J0()J

    return-void
.end method

.method public final o(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;I)V
    .locals 9

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->G:Ljava/util/List;

    sget-object v0, Lcom/perfectcorp/common/debug/PerformanceCounter;->b:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v0}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual {p1, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Real3DEyewearConfiguration;->n:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->E:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->H:Ljava/lang/String;

    iget-object v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader;->b:Ljava/lang/String;

    iget-object v5, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader;->e:Ljava/util/ArrayList;

    iget-object v6, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader;->d:Ljava/util/ArrayList;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader;->h:Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;

    invoke-virtual {v1, v3, v6, v2, v8}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader;->d(Ljava/lang/String;Ljava/util/ArrayList;ZLcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader;->f:Ljava/util/HashMap;

    invoke-static {v2, v6, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader;->c(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;

    invoke-direct {v2}, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;-><init>()V

    invoke-virtual {v1, v0, v5, v3, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader;->d(Ljava/lang/String;Ljava/util/ArrayList;ZLcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;-><init>()V

    invoke-virtual {v1, v4, v5, v3, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader;->d(Ljava/lang/String;Ljava/util/ArrayList;ZLcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;)V

    :goto_0
    iget-object v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader;->a:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader;->g:Ljava/util/HashMap;

    invoke-static {v0, v2, v6, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Object3dLoader;->a(Lcom/perfectcorp/perfectlib/core/BaseVenus;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    goto :goto_1

    :cond_1
    const-string p0, "default occluder file doesn\'t exist defaultOccluderPath="

    const-string p1, ", customOccluderPath="

    invoke-static {p0, v4, p1, v0}, Lfc;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_1
    invoke-virtual {p1, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->h:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/Real3DEyewearPayload;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Real3DEyewearConfiguration;->o:Lcom/perfectcorp/perfectlib/makeupcam/camera/Real3DEyewearPayload;

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Real3DEyewearConfiguration;->o:Lcom/perfectcorp/perfectlib/makeupcam/camera/Real3DEyewearPayload;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/Real3DEyewearPayload;->a()V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    return-void

    :cond_3
    const-string p0, "obb file not exist. path="

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Laz;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
