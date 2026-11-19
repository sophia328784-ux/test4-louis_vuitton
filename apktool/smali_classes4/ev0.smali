.class public final synthetic Lev0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/collections/builders/ListBuilder;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;

.field public final synthetic f:Lkotlin/jvm/functions/Function0;

.field public final synthetic g:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(ILkotlin/collections/builders/ListBuilder;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lev0;->b:I

    iput-object p2, p0, Lev0;->c:Lkotlin/collections/builders/ListBuilder;

    iput-object p3, p0, Lev0;->d:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lev0;->e:Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;

    iput-object p5, p0, Lev0;->f:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lev0;->g:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/pager/PagerScope;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v11, p3

    check-cast v11, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    add-int/lit8 v1, v2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, v0, Lev0;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const v3, 0x7f140376

    invoke-static {v3, v1, v11}, Landroidx/compose/ui/res/StringResources_androidKt;->b(I[Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v4, "FeaturesSection$lambda$3$0"

    invoke-direct {v3, v4}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v4, :cond_0

    if-ne v5, v6, :cond_1

    :cond_0
    new-instance v5, Lnj0;

    const/16 v4, 0x11

    invoke-direct {v5, v1, v4}, Lnj0;-><init>(Ljava/lang/String;I)V

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x1

    invoke-static {v3, v1, v5}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const v4, 0x3f2aaaab

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroidx/compose/foundation/layout/AspectRatioKt;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v7, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->u:J

    sget-object v4, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v3, v7, v8, v4}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    iget-object v3, v0, Lev0;->c:Lkotlin/collections/builders/ListBuilder;

    invoke-virtual {v3, v2}, Lkotlin/collections/builders/ListBuilder;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/services/models/ServiceFeatureSlideType;

    sget-object v3, Lcom/vuitton/android/presentation/screen/services/components/ServicesScreenKt$WhenMappings;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    iget-object v3, v0, Lev0;->e:Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;

    if-eq v2, v1, :cond_d

    const/4 v4, 0x2

    const/4 v7, 0x0

    if-eq v2, v4, :cond_7

    const/4 v4, 0x3

    if-ne v2, v4, :cond_6

    const v2, -0xf9d3bb5

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    iget-object v0, v0, Lev0;->g:Lkotlin/jvm/functions/Function0;

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_2

    if-ne v4, v6, :cond_3

    :cond_2
    new-instance v4, Lsq0;

    const/16 v2, 0xf

    invoke-direct {v4, v0, v2}, Lsq0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    move-object/from16 v16, v4

    check-cast v16, Lkotlin/jvm/functions/Function0;

    const/16 v17, 0x1f

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-object v2, v3, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->f:Lcom/vuitton/android/presentation/screen/services/models/ServicesUrls;

    if-eqz v2, :cond_4

    iget-object v7, v2, Lcom/vuitton/android/presentation/screen/services/models/ServicesUrls;->a:Ljava/lang/String;

    :cond_4
    if-eqz v7, :cond_5

    move v9, v1

    goto :goto_0

    :cond_5
    move v9, v5

    :goto_0
    const/4 v12, 0x0

    const/16 v13, 0xb0

    const v4, 0x7f08029a

    const v5, 0x7f1411d0

    const v6, 0x7f1411cf

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v3, v0

    invoke-static/range {v3 .. v13}, Lcom/vuitton/android/presentation/screen/services/components/FeatureSlideshowItemKt;->a(Landroidx/compose/ui/Modifier;IIILjava/lang/Integer;IZLjava/lang/String;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->F()V

    goto/16 :goto_4

    :cond_6
    const v0, -0x81db9a

    invoke-static {v11, v0}, Lo60;->v(Landroidx/compose/runtime/Composer;I)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_7
    const v1, -0xfaf59b8

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    iget-object v1, v3, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->h:Lcom/vuitton/android/presentation/screen/services/models/ServicesFeatureFlags;

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/services/models/ServicesFeatureFlags;->d:Z

    if-eqz v1, :cond_8

    const v2, 0x7f1411c2

    :goto_1
    move v5, v2

    goto :goto_2

    :cond_8
    const v2, 0x7f140906

    goto :goto_1

    :goto_2
    if-eqz v1, :cond_9

    const v1, 0x7f1411b1

    goto :goto_3

    :cond_9
    const v1, 0x7f1411b0

    :goto_3
    iget-object v0, v0, Lev0;->f:Lkotlin/jvm/functions/Function0;

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_a

    if-ne v4, v6, :cond_b

    :cond_a
    new-instance v4, Lsq0;

    const/16 v2, 0xe

    invoke-direct {v4, v0, v2}, Lsq0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_b
    move-object/from16 v16, v4

    check-cast v16, Lkotlin/jvm/functions/Function0;

    const/16 v17, 0x1f

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-object v2, v3, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->h:Lcom/vuitton/android/presentation/screen/services/models/ServicesFeatureFlags;

    iget-boolean v2, v2, Lcom/vuitton/android/presentation/screen/services/models/ServicesFeatureFlags;->d:Z

    if-eqz v2, :cond_c

    const v2, 0x7f1411b2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :cond_c
    iget v8, v3, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->k:I

    const/4 v12, 0x0

    const/16 v13, 0xc0

    const v4, 0x7f080295

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v0

    move v6, v1

    invoke-static/range {v3 .. v13}, Lcom/vuitton/android/presentation/screen/services/components/FeatureSlideshowItemKt;->a(Landroidx/compose/ui/Modifier;IIILjava/lang/Integer;IZLjava/lang/String;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_4

    :cond_d
    const v1, -0xfb92744

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    iget-object v0, v0, Lev0;->d:Lkotlin/jvm/functions/Function0;

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_e

    if-ne v2, v6, :cond_f

    :cond_e
    new-instance v2, Lsq0;

    const/16 v1, 0xd

    invoke-direct {v2, v0, v1}, Lsq0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_f
    move-object/from16 v16, v2

    check-cast v16, Lkotlin/jvm/functions/Function0;

    const/16 v17, 0x1f

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget v8, v3, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->l:I

    const/high16 v12, 0xc00000

    const/16 v13, 0x50

    const v4, 0x7f080297

    const v5, 0x7f1411c2

    const v6, 0x7f1411c5

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-string v10, "careservicesBookAppointment_button"

    move-object v3, v0

    invoke-static/range {v3 .. v13}, Lcom/vuitton/android/presentation/screen/services/components/FeatureSlideshowItemKt;->a(Landroidx/compose/ui/Modifier;IIILjava/lang/Integer;IZLjava/lang/String;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->F()V

    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
