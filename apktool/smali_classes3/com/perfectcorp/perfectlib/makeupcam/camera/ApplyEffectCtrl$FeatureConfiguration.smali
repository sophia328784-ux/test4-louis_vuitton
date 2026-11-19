.class public abstract Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FeatureConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration$UnsupportedBeautyModeException;
    }
.end annotation


# instance fields
.field public final a:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

.field public final b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

.field public final c:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

.field public final d:Z

.field public final e:Ljava/util/List;

.field public final f:Ljava/util/ArrayList;

.field public final g:Ljava/util/ArrayList;

.field public final h:Ljava/util/ArrayList;

.field public i:Z

.field public j:Z

.field public final k:Z

.field public l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

.field public m:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;


# direct methods
.method public varargs constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->f:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->g:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->h:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->a:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iget-object v2, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->i:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->h:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-boolean v2, v0, Lcom/perfectcorp/perfectlib/core/BaseVenus;->e:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-boolean v0, v0, Lcom/perfectcorp/perfectlib/core/BaseVenus;->f:Z

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->k:Z

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->c:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-nez v0, :cond_1

    iget-boolean v0, p3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->d:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->d:Z

    invoke-static {p4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->v([Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->e:Ljava/util/List;

    if-eqz v3, :cond_2

    invoke-virtual {p3, v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object v0

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->a:Ljava/lang/String;

    invoke-virtual {p3, v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object v0

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->b:Ljava/lang/String;

    invoke-virtual {p3, v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->c:Ljava/lang/String;

    invoke-virtual {p3, v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object v5

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->i:Ljava/lang/String;

    invoke-virtual {p3, v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object v6

    iget-object v6, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->j:Ljava/lang/String;

    invoke-virtual {p3, v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object v4

    iget-object v7, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->h:Ljava/lang/Object;

    move-object v4, v0

    new-instance v0, Lj7;

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lj7;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->f(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    move v9, v4

    :goto_2
    const/4 v0, 0x3

    if-ge v9, v0, :cond_3

    invoke-virtual {p3, v9}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object v0

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->a:Ljava/lang/String;

    invoke-virtual {p3, v9}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object v0

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->b:Ljava/lang/String;

    invoke-virtual {p3, v9}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object v0

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->c:Ljava/lang/String;

    invoke-virtual {p3, v9}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object v0

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->i:Ljava/lang/String;

    invoke-virtual {p3, v9}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object v0

    iget-object v6, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->j:Ljava/lang/String;

    invoke-virtual {p3, v9}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object v0

    iget-object v7, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->h:Ljava/lang/Object;

    new-instance v0, Lj7;

    const/4 v8, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lj7;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->f(Ljava/lang/Runnable;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static i(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;I)V
    .locals 4

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid ConfigurationBuilder. BeautyMode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->c:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object p0

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a()Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final b()V
    .locals 3

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->isValid()Z

    move-result v0

    iget-boolean v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->k:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->g:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->h:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->m(Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->j()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->h()V

    return-void

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->g()V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->k()V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->c()V

    return-void
.end method

.method public c()V
    .locals 5

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->c:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->a(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->e:Ljava/util/List;

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->r(I)Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->a:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    invoke-virtual {v3, v2, v1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->E(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;Z)V

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4, v1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->F(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;I)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iget-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iget-object p2, p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->h:Ljava/util/EnumMap;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->c:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {p2, p0, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final e(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;)V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->z(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->h:Ljava/util/EnumMap;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->c:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v0, p0, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final f(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public g()V
    .locals 5

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->c:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->a(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->e:Ljava/util/List;

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->r(I)Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->a:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4, v1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->F(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public h()V
    .locals 7

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->c:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->b(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->e:Ljava/util/List;

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->r(I)Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->a:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->E(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;Z)V

    iget-object v5, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->g:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3, v2, v6, v4}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->F(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;IZ)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->h:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v2, v5, v1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->F(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;IZ)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public isValid()Z
    .locals 0

    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->j:Z

    return p0
.end method

.method public j()V
    .locals 7

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->c:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->b(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->e:Ljava/util/List;

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->r(I)Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->a:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->E(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;Z)V

    iget-object v5, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->g:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-virtual {v3, v2, v4, v4}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->F(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;IZ)V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->h:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-virtual {v3, v2, v4, v1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->F(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;IZ)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public final l(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;I)Z
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->o(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;I)V

    invoke-virtual {p0, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->p(I)V

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->g:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "prepare faceIndex = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FeatureConfiguration"

    invoke-static {v1, v0, p1}, Lcom/perfectcorp/common/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->h:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public abstract m(Ljava/util/List;Ljava/util/List;)V
.end method

.method public n()V
    .locals 0

    return-void
.end method

.method public abstract o(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;I)V
.end method

.method public p(I)V
    .locals 0

    return-void
.end method
