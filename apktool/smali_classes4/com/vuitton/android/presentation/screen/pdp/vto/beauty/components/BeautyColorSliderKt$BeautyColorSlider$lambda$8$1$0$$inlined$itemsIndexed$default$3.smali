.class public final Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSliderKt$BeautyColorSlider$lambda$8$1$0$$inlined$itemsIndexed$default$3;
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

.field public final synthetic c:I

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Ljava/util/List;ILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSliderKt$BeautyColorSlider$lambda$8$1$0$$inlined$itemsIndexed$default$3;->b:Ljava/util/List;

    iput p2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSliderKt$BeautyColorSlider$lambda$8$1$0$$inlined$itemsIndexed$default$3;->c:I

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSliderKt$BeautyColorSlider$lambda$8$1$0$$inlined$itemsIndexed$default$3;->d:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSliderKt$BeautyColorSlider$lambda$8$1$0$$inlined$itemsIndexed$default$3;->e:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    check-cast p1, Landroidx/compose/foundation/lazy/LazyItemScope;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v3

    move-object v8, p3

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p3, p2, 0x6

    if-nez p3, :cond_1

    invoke-interface {v8, p1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    or-int/2addr p1, p2

    goto :goto_1

    :cond_1
    move p1, p2

    :goto_1
    and-int/lit8 p2, p2, 0x30

    const/16 p3, 0x20

    if-nez p2, :cond_3

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result p2

    if-eqz p2, :cond_2

    move p2, p3

    goto :goto_2

    :cond_2
    const/16 p2, 0x10

    :goto_2
    or-int/2addr p1, p2

    :cond_3
    and-int/lit16 p2, p1, 0x93

    const/16 p4, 0x92

    const/4 v7, 0x0

    const/4 v9, 0x1

    if-eq p2, p4, :cond_4

    move p2, v9

    goto :goto_3

    :cond_4
    move p2, v7

    :goto_3
    and-int/lit8 p4, p1, 0x1

    invoke-interface {v8, p4, p2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_d

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSliderKt$BeautyColorSlider$lambda$8$1$0$$inlined$itemsIndexed$default$3;->b:Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    const p2, 0x6f4542f7

    invoke-interface {v8, p2}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object p2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v8, p2}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Landroid/content/Context;

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p2

    iget p4, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSliderKt$BeautyColorSlider$lambda$8$1$0$$inlined$itemsIndexed$default$3;->c:I

    invoke-interface {v8, p4}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v0

    or-int/2addr p2, v0

    and-int/lit8 v0, p1, 0x70

    xor-int/lit8 v0, v0, 0x30

    if-le v0, p3, :cond_5

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    and-int/lit8 p1, p1, 0x30

    if-ne p1, p3, :cond_7

    :cond_6
    move p1, v9

    goto :goto_4

    :cond_7
    move p1, v7

    :goto_4
    or-int/2addr p1, p2

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p2

    or-int/2addr p1, p2

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSliderKt$BeautyColorSlider$lambda$8$1$0$$inlined$itemsIndexed$default$3;->d:Lkotlin/jvm/functions/Function1;

    invoke-interface {v8, p2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p3

    or-int/2addr p1, p3

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p3

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez p1, :cond_8

    if-ne p3, v10, :cond_9

    :cond_8
    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSliderKt$BeautyColorSlider$3$2$1$2$1$1;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSliderKt$BeautyColorSlider$lambda$8$1$0$$inlined$itemsIndexed$default$3;->d:Lkotlin/jvm/functions/Function1;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSliderKt$BeautyColorSlider$lambda$8$1$0$$inlined$itemsIndexed$default$3;->e:Landroidx/compose/runtime/MutableState;

    iget v2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSliderKt$BeautyColorSlider$lambda$8$1$0$$inlined$itemsIndexed$default$3;->c:I

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSliderKt$BeautyColorSlider$3$2$1$2$1$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;IILandroid/content/Context;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object p3, v0

    :cond_9
    check-cast p3, Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x3

    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    const/4 v2, 0x0

    invoke-static {v0, v2, p3, p1}, Lcom/vuitton/android/presentation/extensions/ModifierExtKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/ui/Modifier;

    move-result-object v4

    if-ne p4, v3, :cond_a

    move v6, v9

    goto :goto_5

    :cond_a
    move v6, v7

    :goto_5
    invoke-interface {v8, p2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p3

    or-int/2addr p1, p3

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p3

    if-nez p1, :cond_b

    if-ne p3, v10, :cond_c

    :cond_b
    new-instance p3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSliderKt$BeautyColorSlider$3$2$1$2$2$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSliderKt$BeautyColorSlider$lambda$8$1$0$$inlined$itemsIndexed$default$3;->e:Landroidx/compose/runtime/MutableState;

    invoke-direct {p3, p2, v1, p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSliderKt$BeautyColorSlider$3$2$1$2$2$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;Landroidx/compose/runtime/MutableState;)V

    invoke-interface {v8, p3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_c
    move-object v7, p3

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/4 v9, 0x0

    move-object v5, v1

    invoke-static/range {v4 .. v9}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSliderKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_6

    :cond_d
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->D()V

    :goto_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
