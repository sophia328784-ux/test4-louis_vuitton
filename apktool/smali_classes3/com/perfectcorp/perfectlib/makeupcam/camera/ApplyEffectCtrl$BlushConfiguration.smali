.class final Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;
.super Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BlushConfiguration"
.end annotation


# instance fields
.field public n:Landroid/util/Pair;

.field public o:Ljava/util/ArrayList;

.field public final p:[[[B

.field public final q:[[Landroid/graphics/Bitmap;

.field public final r:[[I

.field public final s:[[I

.field public final t:[[I

.field public final u:[[I

.field public final v:[[I

.field public final w:[[I

.field public final x:[[Landroid/graphics/Point;

.field public y:Z

.field public final synthetic z:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;)V
    .locals 2

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->z:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->BLUSH:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;->BLUSH3D:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    filled-new-array {v1}, [Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    move-result-object v1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;[Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->o:Ljava/util/ArrayList;

    iget p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->d:I

    new-array p2, p1, [[[B

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->p:[[[B

    new-array p2, p1, [[Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->q:[[Landroid/graphics/Bitmap;

    new-array p2, p1, [[I

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->r:[[I

    new-array p2, p1, [[I

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->s:[[I

    new-array p2, p1, [[I

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->t:[[I

    new-array p2, p1, [[I

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->u:[[I

    new-array p2, p1, [[I

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->v:[[I

    new-array p2, p1, [[I

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->w:[[I

    new-array p1, p1, [[Landroid/graphics/Point;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->x:[[Landroid/graphics/Point;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->y:Z

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 7

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->c:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->a(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->z:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    sget-object v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;->BLUSH3DV2_LAYER1:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->E(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;Z)V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    sget-object v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;->BLUSH3DV2_LAYER2:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    invoke-virtual {v0, v3, v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->E(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;Z)V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    sget-object v4, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;->BLUSH3DV2_LAYER3:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    invoke-virtual {v0, v4, v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->E(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;Z)V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    sget-object v5, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;->BLUSH3D:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    invoke-virtual {v0, v5, v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->E(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;Z)V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    const/4 v6, -0x1

    invoke-virtual {v0, v1, v6, v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->F(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;IZ)V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    invoke-virtual {v0, v3, v6, v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->F(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;IZ)V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    invoke-virtual {v0, v4, v6, v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->F(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;IZ)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    invoke-virtual {p0, v5, v6, v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->F(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;IZ)V

    return-void
.end method

.method public final h()V
    .locals 12

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->c:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->b(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    iget-boolean v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->y:Z

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->z:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v6, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iget-object v7, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    sget-object v8, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;->BLUSH3DV2_LAYER1:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    if-lez v0, :cond_0

    move v9, v3

    goto :goto_0

    :cond_0
    move v9, v4

    :goto_0
    invoke-virtual {v6, v8, v9}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->E(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;Z)V

    sget-object v6, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;->BLUSH3DV2_LAYER2:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    if-ge v3, v0, :cond_1

    move v9, v3

    goto :goto_1

    :cond_1
    move v9, v4

    :goto_1
    invoke-virtual {v7, v6, v9}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->E(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;Z)V

    sget-object v9, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;->BLUSH3DV2_LAYER3:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    if-ge v1, v0, :cond_2

    move v10, v3

    goto :goto_2

    :cond_2
    move v10, v4

    :goto_2
    invoke-virtual {v7, v9, v10}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->E(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;Z)V

    sget-object v10, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;->BLUSH3D:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    invoke-virtual {v7, v10, v4}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->E(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;Z)V

    if-lez v0, :cond_3

    move v11, v3

    goto :goto_3

    :cond_3
    move v11, v4

    :goto_3
    invoke-virtual {v7, v8, v2, v11}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->F(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;IZ)V

    if-ge v3, v0, :cond_4

    move v8, v3

    goto :goto_4

    :cond_4
    move v8, v4

    :goto_4
    invoke-virtual {v7, v6, v2, v8}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->F(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;IZ)V

    if-ge v1, v0, :cond_5

    move v0, v3

    goto :goto_5

    :cond_5
    move v0, v4

    :goto_5
    invoke-virtual {v7, v9, v2, v0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->F(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;IZ)V

    invoke-virtual {v7, v10, v2, v4}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->F(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;IZ)V

    goto :goto_6

    :cond_6
    iget-object v0, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iget-object v6, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    sget-object v7, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;->BLUSH3DV2_LAYER1:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    invoke-virtual {v0, v7, v4}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->E(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;Z)V

    sget-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;->BLUSH3DV2_LAYER2:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    invoke-virtual {v6, v0, v4}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->E(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;Z)V

    sget-object v8, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;->BLUSH3DV2_LAYER3:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    invoke-virtual {v6, v8, v4}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->E(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;Z)V

    sget-object v9, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;->BLUSH3D:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    invoke-virtual {v6, v9, v3}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->E(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;Z)V

    invoke-virtual {v6, v7, v2, v4}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->F(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;IZ)V

    invoke-virtual {v6, v0, v2, v4}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->F(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;IZ)V

    invoke-virtual {v6, v8, v2, v4}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->F(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;IZ)V

    invoke-virtual {v6, v9, v2, v3}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->F(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;IZ)V

    :goto_6
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-boolean v6, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->y:Z

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->o:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v7, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iget-object v8, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    sget-object v9, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;->BLUSH3DV2_LAYER1:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-lez v6, :cond_7

    move v11, v3

    goto :goto_8

    :cond_7
    move v11, v4

    :goto_8
    invoke-virtual {v7, v9, v10, v11}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->F(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;IZ)V

    sget-object v7, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;->BLUSH3DV2_LAYER2:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ge v3, v6, :cond_8

    move v10, v3

    goto :goto_9

    :cond_8
    move v10, v4

    :goto_9
    invoke-virtual {v8, v7, v9, v10}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->F(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;IZ)V

    sget-object v7, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;->BLUSH3DV2_LAYER3:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ge v1, v6, :cond_9

    move v6, v3

    goto :goto_a

    :cond_9
    move v6, v4

    :goto_a
    invoke-virtual {v8, v7, v9, v6}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->F(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;IZ)V

    sget-object v6, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;->BLUSH3D:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v8, v6, v2, v4}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->F(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;IZ)V

    goto :goto_7

    :cond_a
    iget-object v6, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iget-object v7, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    sget-object v8, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;->BLUSH3DV2_LAYER1:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v6, v8, v9, v4}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->F(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;IZ)V

    sget-object v6, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;->BLUSH3DV2_LAYER2:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v6, v8, v4}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->F(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;IZ)V

    sget-object v6, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;->BLUSH3DV2_LAYER3:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v6, v8, v4}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->F(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;IZ)V

    sget-object v6, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;->BLUSH3D:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v7, v6, v2, v3}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->F(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;IZ)V

    goto :goto_7

    :cond_b
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->h:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iget-object v2, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    sget-object v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;->BLUSH3DV2_LAYER1:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v3, v6, v4}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->F(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;IZ)V

    sget-object v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;->BLUSH3DV2_LAYER2:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->F(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;IZ)V

    sget-object v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;->BLUSH3DV2_LAYER3:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->F(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;IZ)V

    sget-object v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;->BLUSH3D:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v1, v0, v4}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->F(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;IZ)V

    goto :goto_b

    :cond_c
    return-void
.end method

.method public final m(Ljava/util/List;Ljava/util/List;)V
    .locals 26

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->z:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/perfectcorp/common/debug/PerformanceCounter;->b:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v2}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v4

    iput-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    invoke-virtual {v2}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v2

    iput-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->m:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    iget-boolean v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->y:Z

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->v:[[I

    iget-object v6, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->u:[[I

    iget-object v7, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->s:[[I

    iget-object v8, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->r:[[I

    iget-object v9, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->t:[[I

    const/4 v10, 0x3

    const/4 v11, -0x1

    iget-boolean v13, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->d:Z

    if-eqz v2, :cond_6

    new-array v2, v10, [I

    iget-object v15, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->w:[[I

    const/16 v16, 0x0

    iget-object v12, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->x:[[Landroid/graphics/Point;

    const/16 v17, 0x2

    iget-object v14, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->q:[[Landroid/graphics/Bitmap;

    const/16 v18, 0x1

    if-eqz v13, :cond_2

    move/from16 v4, v16

    :goto_0
    if-ge v4, v10, :cond_1

    iget-object v13, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->o:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    iget-object v10, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    if-lt v4, v13, :cond_0

    const/16 v22, 0x0

    const/16 v24, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v23, v4

    move-object/from16 v19, v10

    invoke-virtual/range {v19 .. v24}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->R(Landroid/graphics/Bitmap;IIII)V

    goto :goto_1

    :cond_0
    aget-object v13, v9, v16

    aget v13, v13, v4

    invoke-virtual {v10, v13, v4, v11}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->O(III)V

    aget-object v10, v8, v16

    aget v10, v10, v4

    int-to-float v10, v10

    invoke-virtual {v3, v4, v11, v10}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->N(IIF)V

    aget-object v10, v7, v16

    aget v10, v10, v4

    invoke-virtual {v3, v10, v4, v11}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->q0(III)V

    aget-object v10, v6, v16

    aget v10, v10, v4

    int-to-float v10, v10

    invoke-virtual {v3, v4, v11, v10}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->p0(IIF)V

    aget-object v10, v5, v16

    aget v10, v10, v4

    invoke-virtual {v3, v10, v4, v11}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->u0(III)V

    iget-object v10, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    aget-object v13, v14, v16

    aget-object v20, v13, v4

    aget-object v13, v12, v16

    aget-object v13, v13, v4

    iget v11, v13, Landroid/graphics/Point;->x:I

    iget v13, v13, Landroid/graphics/Point;->y:I

    const/16 v24, -0x1

    move/from16 v23, v4

    move-object/from16 v19, v10

    move/from16 v21, v11

    move/from16 v22, v13

    invoke-virtual/range {v19 .. v24}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->R(Landroid/graphics/Bitmap;IIII)V

    aget-object v4, v15, v16

    aget v4, v4, v23

    aput v4, v2, v23

    :goto_1
    add-int/lit8 v4, v23, 0x1

    const/4 v10, 0x3

    const/4 v11, -0x1

    goto :goto_0

    :cond_1
    aget v1, v2, v16

    int-to-float v1, v1

    aget v4, v2, v18

    int-to-float v4, v4

    aget v2, v2, v17

    int-to-float v2, v2

    const/4 v5, -0x1

    invoke-virtual {v3, v1, v4, v2, v5}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->I(FFFI)V

    goto/16 :goto_9

    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v11, v16

    :goto_3
    const/4 v13, 0x3

    if-ge v11, v13, :cond_4

    iget-object v13, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->o:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    iget-object v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    if-lt v11, v13, :cond_3

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v20, 0x0

    move-object/from16 v19, v4

    move/from16 v23, v11

    invoke-virtual/range {v19 .. v24}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->R(Landroid/graphics/Bitmap;IIII)V

    move-object/from16 v25, v2

    move/from16 v4, v24

    goto :goto_4

    :cond_3
    move-object v13, v4

    move/from16 v4, v24

    aget-object v19, v9, v4

    move-object/from16 v25, v2

    aget v2, v19, v11

    invoke-virtual {v13, v2, v11, v4}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->O(III)V

    aget-object v2, v8, v4

    aget v2, v2, v11

    int-to-float v2, v2

    invoke-virtual {v3, v11, v4, v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->N(IIF)V

    aget-object v2, v7, v4

    aget v2, v2, v11

    invoke-virtual {v3, v2, v11, v4}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->q0(III)V

    aget-object v2, v6, v4

    aget v2, v2, v11

    int-to-float v2, v2

    invoke-virtual {v3, v11, v4, v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->p0(IIF)V

    aget-object v2, v5, v4

    aget v2, v2, v11

    invoke-virtual {v3, v2, v11, v4}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->u0(III)V

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    aget-object v13, v14, v4

    aget-object v20, v13, v11

    aget-object v13, v12, v4

    aget-object v13, v13, v11

    move-object/from16 v19, v2

    iget v2, v13, Landroid/graphics/Point;->x:I

    iget v13, v13, Landroid/graphics/Point;->y:I

    move/from16 v21, v2

    move/from16 v23, v11

    move/from16 v22, v13

    invoke-virtual/range {v19 .. v24}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->R(Landroid/graphics/Bitmap;IIII)V

    aget-object v2, v15, v4

    aget v2, v2, v23

    aput v2, v25, v23

    :goto_4
    add-int/lit8 v11, v23, 0x1

    move/from16 v24, v4

    move-object/from16 v2, v25

    goto :goto_3

    :cond_4
    move-object/from16 v25, v2

    move/from16 v4, v24

    aget v2, v25, v16

    int-to-float v2, v2

    aget v11, v25, v18

    int-to-float v11, v11

    aget v13, v25, v17

    int-to-float v13, v13

    invoke-virtual {v3, v2, v11, v13, v4}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->I(FFFI)V

    move-object/from16 v2, v25

    goto/16 :goto_2

    :cond_5
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->J(FI)V

    goto :goto_5

    :cond_6
    const/16 v16, 0x0

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->p:[[[B

    if-eqz v13, :cond_7

    aget-object v2, v2, v16

    aget-object v2, v2, v16

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->B(I[B)V

    aget-object v2, v8, v16

    aget v2, v2, v16

    int-to-float v2, v2

    invoke-virtual {v3, v2, v4}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->J(FI)V

    aget-object v2, v7, v16

    aget v2, v2, v16

    invoke-virtual {v3, v2, v4}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->o0(II)V

    aget-object v2, v9, v16

    aget v2, v2, v16

    invoke-virtual {v3, v2, v4}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->M(II)V

    aget-object v2, v6, v16

    aget v2, v2, v16

    int-to-float v2, v2

    invoke-virtual {v3, v2, v4}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->n0(FI)V

    aget-object v2, v5, v16

    aget v2, v2, v16

    invoke-virtual {v3, v2, v4}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->t0(II)V

    move/from16 v9, v16

    :goto_6
    const/4 v13, 0x3

    if-ge v9, v13, :cond_a

    iget-object v5, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->R(Landroid/graphics/Bitmap;IIII)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_7
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aget-object v11, v2, v10

    aget-object v11, v11, v16

    invoke-virtual {v3, v10, v11}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->B(I[B)V

    aget-object v11, v8, v10

    aget v11, v11, v16

    int-to-float v11, v11

    invoke-virtual {v3, v11, v10}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->J(FI)V

    aget-object v11, v7, v10

    aget v11, v11, v16

    invoke-virtual {v3, v11, v10}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->o0(II)V

    aget-object v11, v9, v10

    aget v11, v11, v16

    invoke-virtual {v3, v11, v10}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->M(II)V

    aget-object v11, v6, v10

    aget v11, v11, v16

    int-to-float v11, v11

    invoke-virtual {v3, v11, v10}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->n0(FI)V

    aget-object v11, v5, v10

    aget v11, v11, v16

    invoke-virtual {v3, v11, v10}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->t0(II)V

    move/from16 v11, v16

    const/4 v13, 0x3

    :goto_7
    if-ge v11, v13, :cond_8

    iget-object v12, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v18, 0x0

    move/from16 v22, v10

    move/from16 v21, v11

    move-object/from16 v17, v12

    invoke-virtual/range {v17 .. v22}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->R(Landroid/graphics/Bitmap;IIII)V

    add-int/lit8 v11, v21, 0x1

    goto :goto_7

    :cond_9
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->J(FI)V

    goto :goto_8

    :cond_a
    :goto_9
    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->m:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    invoke-interface {v1}, Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;->J0()J

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    invoke-interface {v0}, Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;->J0()J

    return-void
.end method

.method public final o(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;I)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static/range {p1 .. p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->i(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;I)V

    sget-object v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->G:Ljava/util/List;

    sget-object v3, Lcom/perfectcorp/common/debug/PerformanceCounter;->b:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v3}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v3

    iput-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    invoke-virtual/range {p1 .. p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->a:Ljava/lang/String;

    invoke-virtual/range {p1 .. p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object v4

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-virtual/range {p1 .. p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;->f(I)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;

    move-result-object v5

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->h:Ljava/lang/Object;

    check-cast v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    const-string v6, "N/A"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    iget-object v3, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload;->a:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload$Setting;

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload$Setting;->a:Ljava/lang/String;

    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [I

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [I

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [I

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [I

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [I

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [I

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [Landroid/graphics/Point;

    iget-object v12, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v12, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_3

    move v14, v7

    :goto_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_3

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;

    iget-object v15, v15, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->f:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$Position;

    sget-object v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$Position;->NONE:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$Position;

    if-ne v15, v7, :cond_2

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;

    iget-object v7, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->b:Ljava/lang/String;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x0

    goto :goto_0

    :cond_3
    iput-object v13, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->o:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-nez v7, :cond_9

    iput-boolean v13, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->y:Z

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    iget-object v13, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->q:[[Landroid/graphics/Bitmap;

    iget-object v14, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->o:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_6

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Landroid/graphics/Bitmap;

    move-object/from16 v17, v5

    const/4 v15, 0x0

    :goto_1
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v15, v5, :cond_5

    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v6

    move-object/from16 v6, v18

    check-cast v6, Ljava/lang/String;

    move-object/from16 v18, v8

    sget-object v8, Lcom/perfectcorp/perfectlib/makeupcam/utility/BitmapUtils;->b:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v5, v6, v8}, Lcom/perfectcorp/perfectlib/makeupcam/utility/BitmapUtils;->a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    sget-object v8, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne v6, v8, :cond_4

    aput-object v5, v12, v15

    goto :goto_2

    :cond_4
    invoke-static {v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourModel;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v6

    move-object/from16 v20, v5

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    move-object/from16 v21, v6

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v5, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static/range {v21 .. v21}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    aput-object v5, v12, v15

    :goto_2
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v8, v18

    move-object/from16 v6, v19

    goto :goto_1

    :cond_5
    :goto_3
    move-object/from16 v19, v6

    move-object/from16 v18, v8

    goto :goto_4

    :cond_6
    move-object/from16 v17, v5

    goto :goto_3

    :goto_4
    aput-object v12, v13, v2

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->q:[[Landroid/graphics/Bitmap;

    aget-object v5, v5, v2

    array-length v5, v5

    iget-object v6, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual {v6, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Landroid/graphics/Point;

    const/4 v8, 0x0

    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v8, v12, :cond_7

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;

    iget-object v12, v12, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->w:Landroid/graphics/Point;

    aput-object v12, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    :goto_6
    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-ge v3, v8, :cond_8

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget v8, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->d:I

    aput v8, v17, v3

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget v8, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->e:I

    aput v8, v19, v3

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget-object v8, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;

    iget v8, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->n:I

    aput v8, v18, v3

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget-object v8, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;

    iget v8, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->l:I

    aput v8, v9, v3

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget-object v8, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;

    iget v8, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->i:I

    aput v8, v10, v3

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget-object v8, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;

    iget-object v8, v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->r:Ljava/lang/String;

    invoke-static {v8}, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload;->b(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;->a()I

    move-result v8

    aput v8, v11, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_8
    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->r:[[I

    aput-object v19, v3, v2

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->s:[[I

    aput-object v17, v3, v2

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->v:[[I

    aput-object v18, v3, v2

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->w:[[I

    aput-object v9, v3, v2

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->u:[[I

    aput-object v10, v3, v2

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->t:[[I

    aput-object v11, v3, v2

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->x:[[Landroid/graphics/Point;

    aput-object v6, v3, v2

    new-instance v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration$1;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;I)V

    :goto_7
    invoke-virtual {v0, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->f(Ljava/lang/Runnable;)V

    goto/16 :goto_b

    :cond_9
    move-object/from16 v17, v5

    move-object/from16 v19, v6

    move-object/from16 v18, v8

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    goto :goto_8

    :cond_a
    const/4 v5, 0x0

    move-object v4, v12

    :goto_8
    if-eqz v4, :cond_10

    iget v6, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->d:I

    aput v6, v17, v5

    iget v6, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->e:I

    aput v6, v19, v5

    iget-object v6, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;

    iget v7, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->n:I

    aput v7, v18, v5

    iget v7, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->l:I

    aput v7, v9, v5

    iget v7, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->i:I

    aput v7, v10, v5

    iget-object v6, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->r:Ljava/lang/String;

    invoke-static {v6}, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload;->b(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;->a()I

    move-result v6

    aput v6, v11, v5

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual {v5, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_d

    move-object v5, v12

    const/4 v6, 0x0

    :goto_9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_e

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;

    iget-object v7, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->f:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$Position;

    sget-object v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$Position;->LEFT:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$Position;

    if-ne v7, v8, :cond_b

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;

    iget-object v7, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->b:Ljava/lang/String;

    move-object v12, v7

    :cond_b
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;

    iget-object v7, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->f:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$Position;

    sget-object v8, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$Position;->RIGHT:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$Position;

    if-ne v7, v8, :cond_c

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->b:Ljava/lang/String;

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_d
    move-object v5, v12

    :cond_e
    const-string v3, "blush left model image can\'t be found"

    invoke-static {v12, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "blush right model image can\'t be found"

    invoke-static {v5, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v12, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    iput-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->n:Landroid/util/Pair;

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->z:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->C:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v5, Lcom/perfectcorp/common/debug/PerformanceCounter;->b:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v5}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v5

    iput-object v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->m:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->n:Landroid/util/Pair;

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    iget-object v6, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->m:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    invoke-interface {v6}, Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;->J0()J

    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, [[B

    array-length v7, v6

    const/4 v8, 0x0

    :goto_a
    if-ge v8, v7, :cond_f

    aget-object v12, v6, v8

    const-string v14, "image == null"

    invoke-static {v12, v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :catchall_0
    move-exception v0

    goto :goto_c

    :cond_f
    const v6, 0x131dc0

    new-array v6, v6, [B

    iget-object v7, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->z:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v7, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->h:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-object v8, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v12, v8

    check-cast v12, Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    check-cast v8, Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v14, v5

    check-cast v14, [[B

    const/16 v16, 0x0

    aget-object v25, v14, v16

    check-cast v5, [[B

    aget-object v26, v5, v13

    iget-wide v14, v7, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    move-object/from16 v27, v6

    move-object/from16 v22, v7

    move/from16 v24, v8

    move/from16 v23, v12

    move-wide/from16 v20, v14

    invoke-static/range {v20 .. v27}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_InitializeBlushTexture(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;II[B[B[B)Z

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->p:[[[B

    new-array v6, v13, [[B

    aput-object v6, v5, v2

    const/16 v16, 0x0

    aput-object v27, v6, v16

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->r:[[I

    aput-object v19, v5, v2

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->s:[[I

    aput-object v17, v5, v2

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->v:[[I

    aput-object v18, v5, v2

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->w:[[I

    aput-object v9, v5, v2

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->u:[[I

    aput-object v10, v5, v2

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;->t:[[I

    aput-object v11, v5, v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration$2;

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration$2;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$BlushConfiguration;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationBuilder;ILcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;)V

    goto/16 :goto_7

    :goto_b
    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$FeatureConfiguration;->l:Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    invoke-interface {v0}, Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;->J0()J

    return-void

    :goto_c
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_10
    const-string v0, "Blush\'s color is not valid!"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method
