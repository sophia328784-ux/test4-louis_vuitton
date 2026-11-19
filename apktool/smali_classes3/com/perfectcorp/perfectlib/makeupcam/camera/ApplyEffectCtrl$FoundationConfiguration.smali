.class final Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FoundationConfiguration;
.super Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FoundationConfiguration"
.end annotation


# instance fields
.field public final n:[I

.field public o:I

.field public p:I

.field public final synthetic q:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;)V
    .locals 2

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FoundationConfiguration;->q:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->SKIN_TONER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;->FOUNDATION:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    filled-new-array {v1}, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    move-result-object v1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;)V

    const/4 p1, 0x3

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FoundationConfiguration;->n:[I

    return-void
.end method


# virtual methods
.method public final m(Ljava/util/List;Ljava/util/List;)V
    .locals 4

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FoundationConfiguration;->q:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object p2, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/perfectcorp/common/debug/PerformanceCounter;->b:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {p2}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object p2

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->T:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FoundationConfiguration;->n:[I

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter;->C1:[I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FoundationConfiguration;->o:I

    int-to-float v0, v0

    move v2, p2

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v3, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->T:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter;

    aget-object v3, v3, v2

    iput v0, v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter;->D1:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FoundationConfiguration;->p:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    int-to-float v0, v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-ge p2, v1, :cond_3

    iget-object v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->T:[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter;

    aget-object v2, v2, p2

    iput v0, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter;->E1:F

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    invoke-interface {p0}, Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;->J0()J

    return-void
.end method

.method public final o(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;I)V
    .locals 3

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->G:Ljava/util/List;

    sget-object v0, Lcom/perfectcorp/common/debug/PerformanceCounter;->b:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v0}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    invoke-virtual {p1, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->a:I

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FoundationConfiguration;->n:[I

    aput v1, v2, p2

    const/4 p2, 0x1

    iget v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->b:I

    aput v1, v2, p2

    const/4 p2, 0x2

    iget v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->c:I

    aput v1, v2, p2

    iget p2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->e:I

    iput p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FoundationConfiguration;->o:I

    iget-object p2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;

    iget p2, p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->j:I

    iput p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FoundationConfiguration;->p:I

    new-instance p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FoundationConfiguration$1;

    invoke-direct {p2, p0, p1, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FoundationConfiguration$1;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FoundationConfiguration;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;)V

    invoke-virtual {p0, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->f(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    invoke-interface {p0}, Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;->J0()J

    return-void

    :cond_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->c:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const-string p1, "FoundationConfiguration"

    invoke-static {p0, p1}, Lno0;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
