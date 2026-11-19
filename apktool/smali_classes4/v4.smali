.class public final synthetic Lv4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/material3/SnackbarHostState;

.field public final synthetic d:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V
    .locals 0

    iput p4, p0, Lv4;->b:I

    iput-object p1, p0, Lv4;->c:Landroidx/compose/material3/SnackbarHostState;

    iput-object p2, p0, Lv4;->d:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lv4;->b:I

    const/16 v1, 0x37

    iget-object v2, p0, Lv4;->d:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iget-object p0, p0, Lv4;->c:Landroidx/compose/material3/SnackbarHostState;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v0, :pswitch_data_0

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    invoke-static {p0, v2, p1, p2}, Lcom/vuitton/android/presentation/screen/orders/components/list/OrderListLoadingScreenKt;->a(Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    invoke-static {p0, v2, p1, p2}, Lcom/vuitton/android/presentation/screen/orders/components/list/OrderListErrorScreenKt;->a(Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    invoke-static {p0, v2, p1, p2}, Lcom/vuitton/android/presentation/screen/account/addresseditor/components/AddressEditorErrorScreenKt;->a(Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
