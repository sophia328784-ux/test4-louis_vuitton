.class public final synthetic Lli0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/material3/SnackbarHostState;

.field public final synthetic d:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;II)V
    .locals 0

    iput p5, p0, Lli0;->b:I

    iput-object p1, p0, Lli0;->c:Landroidx/compose/material3/SnackbarHostState;

    iput-object p2, p0, Lli0;->d:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iput-object p3, p0, Lli0;->e:Lkotlin/jvm/functions/Function0;

    iput p4, p0, Lli0;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lli0;->b:I

    iget v1, p0, Lli0;->f:I

    iget-object v2, p0, Lli0;->e:Lkotlin/jvm/functions/Function0;

    iget-object v3, p0, Lli0;->d:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iget-object p0, p0, Lli0;->c:Landroidx/compose/material3/SnackbarHostState;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v0, :pswitch_data_0

    or-int/lit8 p2, v1, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    invoke-static {p0, v3, v2, p1, p2}, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistEmptyScreenKt;->a(Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    or-int/lit8 p2, v1, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    invoke-static {p0, v3, v2, p1, p2}, Lcom/vuitton/android/presentation/screen/orders/components/list/OrderListEmptyScreenKt;->a(Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
