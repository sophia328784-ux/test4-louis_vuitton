.class public final synthetic Lyu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Z

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;IZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lyu;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyu;->f:Ljava/lang/Object;

    iput p2, p0, Lyu;->c:I

    iput-boolean p3, p0, Lyu;->d:Z

    iput-object p4, p0, Lyu;->e:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lyu;->g:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairPhoto;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;I)V
    .locals 1

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lyu;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lyu;->d:Z

    iput-object p2, p0, Lyu;->f:Ljava/lang/Object;

    iput-object p3, p0, Lyu;->g:Ljava/lang/Object;

    iput-object p4, p0, Lyu;->e:Lkotlin/jvm/functions/Function1;

    iput p5, p0, Lyu;->c:I

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lyu;->b:I

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    iget-object v3, v0, Lyu;->g:Ljava/lang/Object;

    iget-object v4, v0, Lyu;->e:Lkotlin/jvm/functions/Function1;

    iget v5, v0, Lyu;->c:I

    iget-object v6, v0, Lyu;->f:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v6, Ljava/util/List;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedVisibilityScope;

    move-object/from16 v13, p2

    check-cast v13, Landroidx/compose/runtime/Composer;

    move-object/from16 v7, p3

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v7, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightSkuPagerKt;->a:F

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;->d:Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;->c:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightProductUiModel;

    if-eqz v1, :cond_3

    const v1, -0x77e95918

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;->d:Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;->c:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightProductUiModel;

    if-nez v3, :cond_0

    const v0, -0x77e95919

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_0

    :cond_0
    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    iget-object v8, v3, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightProductUiModel;->b:Ljava/lang/String;

    iget-object v9, v3, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightProductUiModel;->d:Ljava/lang/String;

    iget-object v10, v3, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightProductUiModel;->c:Ljava/lang/String;

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v3

    or-int/2addr v1, v3

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_1

    if-ne v3, v2, :cond_2

    :cond_1
    new-instance v3, Lis;

    const/16 v1, 0xb

    invoke-direct {v3, v5, v1, v4}, Lis;-><init>(IILkotlin/jvm/functions/Function1;)V

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    move-object v12, v3

    check-cast v12, Lkotlin/jvm/functions/Function0;

    const/4 v14, 0x0

    const/4 v7, 0x0

    iget-boolean v11, v0, Lyu;->d:Z

    invoke-static/range {v7 .. v14}, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightSkuItemKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->F()V

    :goto_0
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_2

    :cond_3
    const v0, -0x77e1cf77

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;->d:Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;->b:Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;

    if-nez v1, :cond_4

    const v0, -0x77e1cf78

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_1

    :cond_4
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    iget-object v8, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;->a:Ljava/lang/String;

    iget-object v9, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;->b:Ljava/lang/String;

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    iget-object v10, v0, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->b:Ljava/lang/String;

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;->d:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;->a:Ljava/lang/String;

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_5

    if-ne v1, v2, :cond_6

    :cond_5
    new-instance v1, Lou;

    const/4 v0, 0x6

    invoke-direct {v1, v3, v6, v5, v0}, Lou;-><init>(Lkotlin/Function;Ljava/lang/Object;II)V

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    move-object v12, v1

    check-cast v12, Lkotlin/jvm/functions/Function0;

    const/4 v14, 0x0

    const/4 v7, 0x0

    invoke-static/range {v7 .. v14}, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightDataItemKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->F()V

    :goto_1
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->F()V

    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    check-cast v6, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairPhoto;

    check-cast v3, Landroidx/compose/ui/Modifier;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object/from16 v7, p2

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v8, p3

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v9, "PhotoItem$lambda$3"

    invoke-direct {v8, v9}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v8}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x49525f8e    # 861688.9f

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-boolean v0, v0, Lyu;->d:Z

    if-nez v0, :cond_9

    if-nez v6, :cond_9

    const v0, -0x77216071

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_7

    if-ne v1, v2, :cond_8

    :cond_7
    new-instance v1, Lis;

    const/4 v0, 0x3

    invoke-direct {v1, v5, v0, v4}, Lis;-><init>(IILkotlin/jvm/functions/Function1;)V

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    move-object v14, v1

    check-cast v14, Lkotlin/jvm/functions/Function0;

    const/16 v15, 0x1f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v10

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_3

    :cond_9
    const v0, -0x771f501c

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->F()V

    :goto_3
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->F()V

    return-object v10

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
