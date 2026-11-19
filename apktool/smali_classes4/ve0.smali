.class public final synthetic Lve0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/material3/SnackbarHostState;

.field public final synthetic d:Lkotlin/jvm/functions/Function2;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;II)V
    .locals 0

    iput p5, p0, Lve0;->b:I

    iput-object p1, p0, Lve0;->c:Landroidx/compose/material3/SnackbarHostState;

    iput-object p2, p0, Lve0;->d:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Lve0;->e:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lve0;->b:I

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v0, :pswitch_data_0

    const/16 p2, 0x37

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget-object v0, p0, Lve0;->c:Landroidx/compose/material3/SnackbarHostState;

    iget-object v1, p0, Lve0;->d:Lkotlin/jvm/functions/Function2;

    iget-object p0, p0, Lve0;->e:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListErrorScreenKt;->a(Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    const/16 p2, 0x37

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget-object v0, p0, Lve0;->c:Landroidx/compose/material3/SnackbarHostState;

    iget-object v1, p0, Lve0;->d:Lkotlin/jvm/functions/Function2;

    iget-object p0, p0, Lve0;->e:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListEmptyScreenKt;->a(Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    const/16 p2, 0x37

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget-object v0, p0, Lve0;->c:Landroidx/compose/material3/SnackbarHostState;

    iget-object v1, p0, Lve0;->d:Lkotlin/jvm/functions/Function2;

    iget-object p0, p0, Lve0;->e:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartErrorScreenKt;->a(Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
