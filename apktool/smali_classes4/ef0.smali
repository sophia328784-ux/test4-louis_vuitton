.class public final synthetic Lef0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:Lkotlin/jvm/functions/Function2;

.field public final synthetic h:Lkotlin/jvm/functions/Function1;

.field public final synthetic i:Lkotlin/jvm/functions/Function3;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;ZZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lef0;->b:Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    iput-boolean p2, p0, Lef0;->c:Z

    iput-boolean p3, p0, Lef0;->d:Z

    iput-object p4, p0, Lef0;->e:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lef0;->f:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lef0;->g:Lkotlin/jvm/functions/Function2;

    iput-object p7, p0, Lef0;->h:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Lef0;->i:Lkotlin/jvm/functions/Function3;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p1, Landroidx/compose/ui/Modifier;

    move-object v8, p2

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p1, :cond_0

    const-string p3, "NativeCartItem$lambda$4$3"

    invoke-static {p1, p3}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    :cond_0
    move-object v1, p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 p1, p2, 0x6

    if-nez p1, :cond_2

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    or-int/2addr p2, p1

    :cond_2
    and-int/lit8 p1, p2, 0x13

    const/16 p3, 0x12

    if-eq p1, p3, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    and-int/lit8 p3, p2, 0x1

    invoke-interface {v8, p3, p1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-boolean v3, p0, Lef0;->d:Z

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->b(Z)Z

    move-result p1

    iget-object v4, p0, Lef0;->e:Lkotlin/jvm/functions/Function1;

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p3

    or-int/2addr p1, p3

    iget-object v2, p0, Lef0;->b:Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p3

    or-int/2addr p1, p3

    iget-object v6, p0, Lef0;->f:Lkotlin/jvm/functions/Function1;

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p3

    or-int/2addr p1, p3

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p3

    if-nez p1, :cond_4

    sget-object p1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne p3, p1, :cond_5

    :cond_4
    move-object v5, v2

    goto :goto_2

    :cond_5
    move-object v5, v2

    goto :goto_3

    :goto_2
    new-instance v2, Lnd;

    const/4 v7, 0x3

    invoke-direct/range {v2 .. v7}, Lnd;-><init>(ZLkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/Function;I)V

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object p3, v2

    :goto_3
    move-object v4, p3

    check-cast v4, Lkotlin/jvm/functions/Function0;

    shl-int/lit8 p1, p2, 0x3

    and-int/lit8 v9, p1, 0x70

    const/4 v0, 0x0

    iget-boolean v3, p0, Lef0;->c:Z

    move-object v2, v5

    iget-object v5, p0, Lef0;->g:Lkotlin/jvm/functions/Function2;

    iget-object v6, p0, Lef0;->h:Lkotlin/jvm/functions/Function1;

    iget-object v7, p0, Lef0;->i:Lkotlin/jvm/functions/Function3;

    invoke-static/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/cart/components/sections/NativeCartItemKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    goto :goto_4

    :cond_6
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->D()V

    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
