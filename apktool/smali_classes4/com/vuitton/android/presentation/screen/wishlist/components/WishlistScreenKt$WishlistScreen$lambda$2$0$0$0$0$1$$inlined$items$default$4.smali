.class public final Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistScreenKt$WishlistScreen$lambda$2$0$0$0$0$1$$inlined$items$default$4;
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

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;

.field public final synthetic e:Lkotlin/jvm/functions/Function2;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;

.field public final synthetic h:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Ljava/util/List;ZLcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistScreenKt$WishlistScreen$lambda$2$0$0$0$0$1$$inlined$items$default$4;->b:Ljava/util/List;

    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistScreenKt$WishlistScreen$lambda$2$0$0$0$0$1$$inlined$items$default$4;->c:Z

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistScreenKt$WishlistScreen$lambda$2$0$0$0$0$1$$inlined$items$default$4;->d:Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistScreenKt$WishlistScreen$lambda$2$0$0$0$0$1$$inlined$items$default$4;->e:Lkotlin/jvm/functions/Function2;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistScreenKt$WishlistScreen$lambda$2$0$0$0$0$1$$inlined$items$default$4;->f:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistScreenKt$WishlistScreen$lambda$2$0$0$0$0$1$$inlined$items$default$4;->g:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistScreenKt$WishlistScreen$lambda$2$0$0$0$0$1$$inlined$items$default$4;->h:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    check-cast p1, Landroidx/compose/foundation/lazy/LazyItemScope;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    move-object v8, p3

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p3

    and-int/lit8 p4, p3, 0x6

    if-nez p4, :cond_1

    invoke-interface {v8, p1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    or-int/2addr p1, p3

    goto :goto_1

    :cond_1
    move p1, p3

    :goto_1
    and-int/lit8 p3, p3, 0x30

    if-nez p3, :cond_3

    invoke-interface {v8, p2}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result p3

    if-eqz p3, :cond_2

    const/16 p3, 0x20

    goto :goto_2

    :cond_2
    const/16 p3, 0x10

    :goto_2
    or-int/2addr p1, p3

    :cond_3
    and-int/lit16 p3, p1, 0x93

    const/16 p4, 0x92

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p3, p4, :cond_4

    move p3, v1

    goto :goto_3

    :cond_4
    move p3, v0

    :goto_3
    and-int/2addr p1, v1

    invoke-interface {v8, p1, p3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_a

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistScreenKt$WishlistScreen$lambda$2$0$0$0$0$1$$inlined$items$default$4;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistItemUiModel;

    const p2, 0x5fc1cfd5

    invoke-interface {v8, p2}, Landroidx/compose/runtime/Composer;->L(I)V

    iget-boolean p2, p0, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistScreenKt$WishlistScreen$lambda$2$0$0$0$0$1$$inlined$items$default$4;->c:Z

    xor-int/lit8 v2, p2, 0x1

    iget-object p2, p1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistItemUiModel;->a:Ljava/lang/String;

    iget-object p3, p0, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistScreenKt$WishlistScreen$lambda$2$0$0$0$0$1$$inlined$items$default$4;->d:Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;

    iget-object p3, p3, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->e:Ljava/lang/String;

    if-nez p3, :cond_5

    :goto_4
    move v3, v0

    goto :goto_5

    :cond_5
    sget-object p4, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel;->c:Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel$Companion;

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4

    :goto_5
    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistScreenKt$WishlistScreen$lambda$2$0$0$0$0$1$$inlined$items$default$4;->e:Lkotlin/jvm/functions/Function2;

    invoke-interface {v8, p2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p3

    invoke-interface {v8, p1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p4

    or-int/2addr p3, p4

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p4

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez p3, :cond_6

    if-ne p4, v0, :cond_7

    :cond_6
    new-instance p4, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistScreenKt$WishlistScreen$3$1$1$1$1$2$2$1$1;

    invoke-direct {p4, p2, p1}, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistScreenKt$WishlistScreen$3$1$1$1$1$2$2$1$1;-><init>(Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistItemUiModel;)V

    invoke-interface {v8, p4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    move-object v4, p4

    check-cast v4, Lkotlin/jvm/functions/Function0;

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistScreenKt$WishlistScreen$lambda$2$0$0$0$0$1$$inlined$items$default$4;->f:Lkotlin/jvm/functions/Function1;

    invoke-interface {v8, p2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p3

    invoke-interface {v8, p1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p4

    or-int/2addr p3, p4

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p4

    if-nez p3, :cond_8

    if-ne p4, v0, :cond_9

    :cond_8
    new-instance p4, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistScreenKt$WishlistScreen$3$1$1$1$1$2$2$2$1;

    invoke-direct {p4, p2, p1}, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistScreenKt$WishlistScreen$3$1$1$1$1$2$2$2$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistItemUiModel;)V

    invoke-interface {v8, p4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    move-object v5, p4

    check-cast v5, Lkotlin/jvm/functions/Function0;

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistScreenKt$WishlistScreen$lambda$2$0$0$0$0$1$$inlined$items$default$4;->h:Lkotlin/jvm/functions/Function1;

    const/4 v10, 0x1

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistScreenKt$WishlistScreen$lambda$2$0$0$0$0$1$$inlined$items$default$4;->g:Lkotlin/jvm/functions/Function1;

    const/4 v9, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v10}, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistProductItemKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistItemUiModel;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_6

    :cond_a
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->D()V

    :goto_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
