.class public final synthetic Lcom/vuitton/android/presentation/screen/cart/components/samples/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

.field public final synthetic c:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/cart/components/samples/a;->b:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/cart/components/samples/a;->c:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p1, Landroidx/compose/foundation/layout/PaddingValues;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v0, p3, 0x6

    if-nez v0, :cond_1

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr p3, v0

    :cond_1
    and-int/lit8 v0, p3, 0x13

    const/16 v1, 0x12

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    and-int/2addr p3, v3

    invoke-interface {p2, p3, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p3

    if-eqz p3, :cond_5

    sget-object p3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const-string p3, "PerfumeSamplesComposable$lambda$4$1"

    invoke-static {p3, p1}, Lo60;->e(Ljava/lang/String;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    iget-object p3, p0, Lcom/vuitton/android/presentation/screen/cart/components/samples/a;->c:Landroidx/compose/runtime/State;

    invoke-interface {p3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;

    iget-object p3, p3, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->l:Ljava/util/List;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/cart/components/samples/a;->b:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

    invoke-interface {p2, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez p0, :cond_3

    sget-object p0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, p0, :cond_4

    :cond_3
    new-instance v3, Lcom/vuitton/android/presentation/screen/cart/components/samples/PerfumeSamplesComposableKt$PerfumeSamplesComposable$4$2$1$1;

    const-string v8, "updateSampleState(Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;Z)V"

    const/4 v9, 0x0

    const/4 v4, 0x2

    const-class v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

    const-string v7, "updateSampleState"

    invoke-direct/range {v3 .. v9}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p2, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v0, v3

    :cond_4
    check-cast v0, Lkotlin/reflect/KFunction;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {p1, p3, v0, p2, v2}, Lcom/vuitton/android/presentation/screen/cart/components/samples/PerfumeSamplesScreenKt;->b(Landroidx/compose/ui/Modifier;Ljava/util/List;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_2

    :cond_5
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
