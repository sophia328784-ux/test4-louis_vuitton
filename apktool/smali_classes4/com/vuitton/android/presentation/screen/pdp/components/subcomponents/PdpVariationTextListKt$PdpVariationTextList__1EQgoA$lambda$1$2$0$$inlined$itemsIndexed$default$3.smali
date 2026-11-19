.class public final Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt$PdpVariationTextList__1EQgoA$lambda$1$2$0$$inlined$itemsIndexed$default$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function4<",
        "Landroidx/compose/foundation/lazy/LazyItemScope;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt$PdpVariationTextList__1EQgoA$lambda$1$2$0$$inlined$itemsIndexed$default$3;->b:Ljava/util/List;

    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt$PdpVariationTextList__1EQgoA$lambda$1$2$0$$inlined$itemsIndexed$default$3;->c:Z

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt$PdpVariationTextList__1EQgoA$lambda$1$2$0$$inlined$itemsIndexed$default$3;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt$PdpVariationTextList__1EQgoA$lambda$1$2$0$$inlined$itemsIndexed$default$3;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt$PdpVariationTextList__1EQgoA$lambda$1$2$0$$inlined$itemsIndexed$default$3;->f:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScope;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v8

    move-object/from16 v14, p3

    check-cast v14, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p4

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    and-int/lit8 v3, v2, 0x6

    const/4 v10, 0x2

    if-nez v3, :cond_1

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v10

    :goto_0
    or-int/2addr v1, v2

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    and-int/lit8 v2, v2, 0x30

    const/16 v3, 0x20

    if-nez v2, :cond_3

    invoke-interface {v14, v8}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    :cond_3
    and-int/lit16 v2, v1, 0x93

    const/16 v4, 0x92

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v4, :cond_4

    move v2, v6

    goto :goto_3

    :cond_4
    move v2, v5

    :goto_3
    and-int/lit8 v4, v1, 0x1

    invoke-interface {v14, v4, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt$PdpVariationTextList__1EQgoA$lambda$1$2$0$$inlined$itemsIndexed$default$3;->b:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;

    const v2, -0x3cb9716b

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    iget-object v2, v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;->e:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;

    if-eqz v2, :cond_5

    iget-boolean v2, v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;->e:Z

    if-nez v2, :cond_5

    iget-boolean v2, v0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt$PdpVariationTextList__1EQgoA$lambda$1$2$0$$inlined$itemsIndexed$default$3;->c:Z

    if-eqz v2, :cond_5

    const v2, -0x3cb85727

    const v7, 0x7f14034f

    invoke-static {v14, v2, v7, v14}, Lo60;->k(Landroidx/compose/runtime/Composer;IILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_5
    const v2, -0x3cb6fbbc

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->F()V

    const-string v2, ""

    :goto_4
    invoke-interface {v14, v4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v7, v9

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt$PdpVariationTextList__1EQgoA$lambda$1$2$0$$inlined$itemsIndexed$default$3;->d:Ljava/lang/String;

    invoke-interface {v14, v11}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v7, v9

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt$PdpVariationTextList__1EQgoA$lambda$1$2$0$$inlined$itemsIndexed$default$3;->e:Ljava/lang/String;

    invoke-interface {v14, v9}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v7, v9

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt$PdpVariationTextList__1EQgoA$lambda$1$2$0$$inlined$itemsIndexed$default$3;->f:Lkotlin/jvm/functions/Function1;

    invoke-interface {v14, v12}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v7, v9

    and-int/lit8 v9, v1, 0x70

    xor-int/lit8 v9, v9, 0x30

    if-le v9, v3, :cond_6

    invoke-interface {v14, v8}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v9

    if-nez v9, :cond_7

    :cond_6
    and-int/lit8 v1, v1, 0x30

    if-ne v1, v3, :cond_8

    :cond_7
    move v5, v6

    :cond_8
    or-int v1, v7, v5

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v1, :cond_9

    if-ne v3, v13, :cond_a

    :cond_9
    new-instance v3, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt$PdpVariationTextList$1$3$1$1$1$1;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt$PdpVariationTextList__1EQgoA$lambda$1$2$0$$inlined$itemsIndexed$default$3;->e:Ljava/lang/String;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt$PdpVariationTextList__1EQgoA$lambda$1$2$0$$inlined$itemsIndexed$default$3;->f:Lkotlin/jvm/functions/Function1;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt$PdpVariationTextList__1EQgoA$lambda$1$2$0$$inlined$itemsIndexed$default$3;->d:Ljava/lang/String;

    move-object v5, v2

    invoke-direct/range {v3 .. v9}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt$PdpVariationTextList$1$3$1$1$1$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v3, Lkotlin/jvm/functions/Function1;

    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    const-string v2, "pdp_variationTextItem_view"

    invoke-static {v1, v2, v3, v10}, Lcom/vuitton/android/presentation/extensions/ModifierExtKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/ui/Modifier;

    move-result-object v9

    iget-object v1, v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;->b:Ljava/lang/String;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    invoke-interface {v14, v12}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v14, v4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_b

    if-ne v2, v13, :cond_c

    :cond_b
    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt$PdpVariationTextList$1$3$1$1$2$1;

    invoke-direct {v2, v12, v4}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt$PdpVariationTextList$1$3$1$1$2$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;)V

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_c
    move-object v13, v2

    check-cast v13, Lkotlin/jvm/functions/Function0;

    const/4 v15, 0x0

    iget-boolean v12, v0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt$PdpVariationTextList__1EQgoA$lambda$1$2$0$$inlined$itemsIndexed$default$3;->c:Z

    move-object v10, v4

    invoke-static/range {v9 .. v15}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;ZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_5

    :cond_d
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->D()V

    :goto_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
