.class public final synthetic Lm30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Z

.field public final synthetic e:F

.field public final synthetic f:Z

.field public final synthetic g:Landroid/content/Context;

.field public final synthetic h:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;Lkotlin/jvm/functions/Function1;ZFZLandroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm30;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;

    iput-object p2, p0, Lm30;->c:Lkotlin/jvm/functions/Function1;

    iput-boolean p3, p0, Lm30;->d:Z

    iput p4, p0, Lm30;->e:F

    iput-boolean p5, p0, Lm30;->f:Z

    iput-object p6, p0, Lm30;->g:Landroid/content/Context;

    iput-object p7, p0, Lm30;->h:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    check-cast p2, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/SmallProductCell;

    move-object v8, p3

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 p3, p1, 0x6

    if-nez p3, :cond_1

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x4

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    :goto_0
    or-int/2addr p3, p1

    goto :goto_1

    :cond_1
    move p3, p1

    :goto_1
    and-int/lit8 p4, p1, 0x30

    if-nez p4, :cond_4

    and-int/lit8 p1, p1, 0x40

    if-nez p1, :cond_2

    invoke-interface {v8, p2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_2

    :cond_2
    invoke-interface {v8, p2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p1

    :goto_2
    if-eqz p1, :cond_3

    const/16 p1, 0x20

    goto :goto_3

    :cond_3
    const/16 p1, 0x10

    :goto_3
    or-int/2addr p3, p1

    :cond_4
    and-int/lit16 p1, p3, 0x93

    const/16 p4, 0x92

    const/4 v0, 0x0

    if-eq p1, p4, :cond_5

    const/4 p1, 0x1

    goto :goto_4

    :cond_5
    move p1, v0

    :goto_4
    and-int/lit8 p4, p3, 0x1

    invoke-interface {v8, p4, p1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_a

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    instance-of p1, p2, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveProductCell;

    move p4, v0

    iget-object v0, p0, Lm30;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;

    if-eqz p1, :cond_6

    const p1, -0x60a96693

    invoke-interface {v8, p1}, Landroidx/compose/runtime/Composer;->L(I)V

    and-int/lit8 v9, p3, 0xe

    iget-object v1, p0, Lm30;->c:Lkotlin/jvm/functions/Function1;

    iget-boolean v2, p0, Lm30;->d:Z

    iget v3, p0, Lm30;->e:F

    iget-boolean v4, p0, Lm30;->f:Z

    iget-object v5, p0, Lm30;->g:Landroid/content/Context;

    iget-object v6, p0, Lm30;->h:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleProductViewKt;->b(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;Lkotlin/jvm/functions/Function1;ZFZLandroid/content/Context;Lkotlin/jvm/functions/Function1;ILandroidx/compose/runtime/Composer;I)V

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_7

    :cond_6
    instance-of p0, p2, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveSpacerCell;

    if-eqz p0, :cond_9

    const p0, -0x60a689b7

    const-string p1, "ImmersiveArticleProductView$lambda$3$1"

    invoke-static {p0, v8, p1}, Lpq0;->j(ILandroidx/compose/runtime/Composer;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object p0

    sget-object p1, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->e:Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;->a:Ljava/lang/String;

    if-eqz p1, :cond_7

    invoke-static {p1}, Lcom/vuitton/android/presentation/compose/StringExtKt;->a(Ljava/lang/String;)Landroidx/compose/ui/graphics/Color;

    move-result-object p1

    goto :goto_5

    :cond_7
    const/4 p1, 0x0

    :goto_5
    if-nez p1, :cond_8

    const p1, -0x5df4b45e

    invoke-interface {v8, p1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object p1

    iget-object p1, p1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide p1, p1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_6

    :cond_8
    const p2, -0x5df4c26a

    invoke-interface {v8, p2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->F()V

    iget-wide p1, p1, Landroidx/compose/ui/graphics/Color;->a:J

    :goto_6
    sget-object p3, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    invoke-static {p0, v8, p4}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_7

    :cond_9
    const p0, -0x5df4f844

    invoke-static {v8, p0}, Lo60;->v(Landroidx/compose/runtime/Composer;I)Lkotlin/NoWhenBranchMatchedException;

    move-result-object p0

    throw p0

    :cond_a
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->D()V

    :goto_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
