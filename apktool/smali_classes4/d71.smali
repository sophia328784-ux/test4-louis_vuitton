.class public final synthetic Ld71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Ld71;->b:I

    iput-object p1, p0, Ld71;->c:Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;

    iput-object p2, p0, Ld71;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget v0, p0, Ld71;->b:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Ld71;->d:Ljava/lang/String;

    const/4 v5, 0x1

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->t:Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;

    and-int/lit8 v0, p2, 0x3

    if-eq v0, v1, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/2addr p2, v5

    invoke-interface {p1, p2, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_6

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-array p2, v2, [Landroidx/navigation/Navigator;

    invoke-static {p2, p1}, Landroidx/navigation/compose/NavHostControllerKt;->a([Landroidx/navigation/Navigator;Landroidx/compose/runtime/Composer;)Landroidx/navigation/NavHostController;

    move-result-object v11

    iget-object v7, p0, Ld71;->c:Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->I()Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;

    move-result-object p0

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v12

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez p0, :cond_1

    if-ne p2, v0, :cond_3

    :cond_1
    if-eqz v4, :cond_2

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->m:Ljava/util/Locale;

    const-string p2, "yyyy-MM-dd"

    sget-object v1, Ljava/time/format/FormatStyle;->SHORT:Ljava/time/format/FormatStyle;

    invoke-static {p0, v4, p2, v1}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->d(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/time/format/FormatStyle;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object p2, v3

    :cond_3
    move-object v8, p2

    check-cast v8, Ljava/lang/String;

    invoke-interface {p1, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p2

    if-nez p0, :cond_4

    if-ne p2, v0, :cond_5

    :cond_4
    new-instance p2, Lf71;

    invoke-direct {p2, v7, v5}, Lf71;-><init>(Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;I)V

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, p2, p1, v2, v5}, Landroidx/activity/compose/BackHandlerKt;->a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-static {p1}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/WindowInsetsKt;->e(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/foundation/layout/PaddingValues;->d()F

    move-result p0

    invoke-static {p0}, Lcom/vuitton/android/presentation/extensions/ResourcesExtKt;->b(F)F

    move-result p0

    float-to-int v9, p0

    invoke-static {p1}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/WindowInsetsKt;->e(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/foundation/layout/PaddingValues;->a()F

    move-result p0

    invoke-static {p0}, Lcom/vuitton/android/presentation/extensions/ResourcesExtKt;->b(F)F

    move-result p0

    float-to-int v10, p0

    new-instance v6, Lcom/vuitton/android/presentation/screen/wishlist/a;

    invoke-direct/range {v6 .. v12}, Lcom/vuitton/android/presentation/screen/wishlist/a;-><init>(Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;Ljava/lang/String;IILandroidx/navigation/NavHostController;Landroidx/compose/runtime/MutableState;)V

    const p0, -0x62a874c9

    invoke-static {p0, v6, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object p0

    const/4 p2, 0x6

    invoke-static {p0, p1, p2}, Lcom/vuitton/android/presentation/compose/components/compositionlocalprovider/LVWishlistLocalProviderKt;->a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_6
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->t:Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;

    and-int/lit8 v0, p2, 0x3

    if-eq v0, v1, :cond_7

    move v2, v5

    :cond_7
    and-int/2addr p2, v5

    invoke-interface {p1, p2, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_8

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance p2, Ld71;

    iget-object p0, p0, Ld71;->c:Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;

    invoke-direct {p2, p0, v4, v5}, Ld71;-><init>(Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;Ljava/lang/String;I)V

    const p0, -0x28c32e47

    invoke-static {p0, p2, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object p0

    const/16 p2, 0x30

    invoke-static {v3, p0, p1, p2}, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_2

    :cond_8
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
