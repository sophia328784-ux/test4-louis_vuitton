.class public final synthetic Lv30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

.field public final synthetic e:I

.field public final synthetic f:Lkotlin/jvm/functions/Function0;

.field public final synthetic g:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/model/common/AssetUiModel;ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/State;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv30;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;

    iput-object p2, p0, Lv30;->c:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lv30;->d:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    iput p4, p0, Lv30;->e:I

    iput-object p5, p0, Lv30;->f:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lv30;->g:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lv30;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;->g:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;

    move-object/from16 v3, p1

    check-cast v3, Landroidx/compose/foundation/layout/BoxScope;

    move-object/from16 v14, p2

    check-cast v14, Landroidx/compose/runtime/Composer;

    move-object/from16 v4, p3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v3, v4, 0x11

    const/16 v5, 0x10

    const/4 v6, 0x1

    if-eq v3, v5, :cond_0

    move v3, v6

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    and-int/2addr v4, v6

    invoke-interface {v14, v4, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v3, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;->FULLSCREEN:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;

    const-string v4, "ImmersiveArticleVideoCtaView$lambda$1$0$0"

    if-eq v2, v3, :cond_1

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v4}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleHelper;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;)F

    move-result v2

    invoke-static {v3, v2, v6}, Landroidx/compose/foundation/layout/AspectRatioKt;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v2

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v4}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :goto_1
    sget-object v3, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v2, v3}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    iget-object v3, v0, Lv30;->g:Landroidx/compose/runtime/State;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-static {v2, v3, v3}, Landroidx/compose/ui/draw/ScaleKt;->a(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v4

    iget-object v2, v0, Lv30;->c:Lkotlin/jvm/functions/Function1;

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v3, :cond_2

    if-ne v5, v10, :cond_3

    :cond_2
    new-instance v5, Lw30;

    const/4 v3, 0x2

    invoke-direct {v5, v2, v1, v3}, Lw30;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;I)V

    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    move-object v8, v5

    check-cast v8, Lkotlin/jvm/functions/Function0;

    const/16 v9, 0x1f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v4

    iget-object v1, v0, Lv30;->d:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->b:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v1, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->b:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/layout/ContentScale$Companion;->b:Landroidx/compose/ui/layout/ContentScale$Companion$Crop$1;

    iget v1, v0, Lv30;->e:I

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v2

    iget-object v0, v0, Lv30;->f:Lkotlin/jvm/functions/Function0;

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_4

    if-ne v3, v10, :cond_5

    :cond_4
    new-instance v3, Lze;

    const/4 v2, 0x4

    invoke-direct {v3, v1, v0, v2}, Lze;-><init>(ILjava/lang/Object;I)V

    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    move-object v12, v3

    check-cast v12, Lkotlin/jvm/functions/Function1;

    const/16 v15, 0x180

    const/16 v16, 0x5f8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-static/range {v4 .. v16}, Lcom/vuitton/android/presentation/imageloading/compose/ImageLoaderKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/layout/ContentScale;Ljava/lang/String;Ljava/lang/Integer;IZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    goto :goto_2

    :cond_6
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
