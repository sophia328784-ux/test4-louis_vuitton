.class public final synthetic Lcom/vuitton/android/presentation/screen/booking/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;

.field public final synthetic c:Landroidx/compose/material3/SnackbarHostState;

.field public final synthetic d:Landroidx/navigation3/runtime/NavBackStack;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;Landroidx/compose/material3/SnackbarHostState;Landroidx/navigation3/runtime/NavBackStack;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/e;->b:Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/booking/e;->c:Landroidx/compose/material3/SnackbarHostState;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/booking/e;->d:Landroidx/navigation3/runtime/NavBackStack;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/booking/e;->e:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Lcom/vuitton/android/presentation/screen/booking/MyBookingsRoutes$Details;

    move-object v7, p2

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 p3, p2, 0x6

    if-nez p3, :cond_1

    invoke-interface {v7, p1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x4

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    :goto_0
    or-int/2addr p2, p3

    :cond_1
    and-int/lit8 p3, p2, 0x13

    const/16 v0, 0x12

    const/4 v1, 0x1

    if-eq p3, v0, :cond_2

    move p3, v1

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :goto_1
    and-int/2addr p2, v1

    invoke-interface {v7, p2, p3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_9

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/e;->b:Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->q:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v2, p1, Lcom/vuitton/android/presentation/screen/booking/MyBookingsRoutes$Details;->a:Ljava/lang/String;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/e;->d:Landroidx/navigation3/runtime/NavBackStack;

    invoke-interface {v7, p1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p2

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p3

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez p2, :cond_3

    if-ne p3, v3, :cond_4

    :cond_3
    new-instance p3, Lod0;

    invoke-direct {p3, p1}, Lod0;-><init>(Landroidx/navigation3/runtime/NavBackStack;)V

    invoke-interface {v7, p3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    move-object v4, p3

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-interface {v7, p1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p2

    iget-object p3, p0, Lcom/vuitton/android/presentation/screen/booking/e;->e:Lkotlin/jvm/functions/Function0;

    invoke-interface {v7, p3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr p2, v5

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez p2, :cond_5

    if-ne v5, v3, :cond_6

    :cond_5
    new-instance v5, Ly0;

    const/16 p2, 0xa

    invoke-direct {v5, p1, p3, p2}, Ly0;-><init>(Landroidx/navigation3/runtime/NavBackStack;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface {v7, p1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p2

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p3

    if-nez p2, :cond_7

    if-ne p3, v3, :cond_8

    :cond_7
    new-instance p3, Lcom/vuitton/android/presentation/screen/booking/MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$3$2$3$1;

    invoke-direct {p3, p1}, Lcom/vuitton/android/presentation/screen/booking/MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$3$2$3$1;-><init>(Landroidx/navigation3/runtime/NavBackStack;)V

    invoke-interface {v7, p3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    move-object v6, p3

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/16 v8, 0xc00

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/booking/e;->c:Landroidx/compose/material3/SnackbarHostState;

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/booking/details/components/BookingDetailsComposableKt;->a(Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;Lkotlinx/coroutines/flow/StateFlow;Ljava/lang/String;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_2

    :cond_9
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
