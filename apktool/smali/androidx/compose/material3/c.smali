.class public final synthetic Landroidx/compose/material3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Landroidx/compose/material3/c;->b:I

    iput-object p1, p0, Landroidx/compose/material3/c;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/material3/c;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Landroidx/compose/material3/c;->b:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/compose/material3/c;->d:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/compose/material3/c;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/compose/material3/SnackbarData;

    check-cast v3, Landroidx/compose/material3/FadeInFadeOutState;

    iget-object v0, v3, Landroidx/compose/material3/FadeInFadeOutState;->a:Ljava/lang/Object;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v3, Landroidx/compose/material3/FadeInFadeOutState;->b:Ljava/util/ArrayList;

    new-instance v1, Landroidx/compose/material3/o;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Landroidx/compose/material3/o;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->a0(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    iget-object p0, v3, Landroidx/compose/material3/FadeInFadeOutState;->c:Landroidx/compose/runtime/RecomposeScope;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/compose/runtime/RecomposeScope;->invalidate()V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    check-cast v3, Landroidx/compose/foundation/lazy/LazyListState;

    sget v0, Landroidx/compose/material3/DatePickerKt;->a:F

    new-instance v0, Landroidx/compose/material3/DatePickerKt$DatePickerContent$2$2$1$1;

    invoke-direct {v0, v3, v2}, Landroidx/compose/material3/DatePickerKt$DatePickerContent$2$2$1$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v2, v2, v0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    check-cast v3, Landroidx/compose/foundation/lazy/LazyListState;

    sget v0, Landroidx/compose/material3/DatePickerKt;->a:F

    new-instance v0, Landroidx/compose/material3/DatePickerKt$DatePickerContent$2$1$1$1;

    invoke-direct {v0, v3, v2}, Landroidx/compose/material3/DatePickerKt$DatePickerContent$2$1$1$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v2, v2, v0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
