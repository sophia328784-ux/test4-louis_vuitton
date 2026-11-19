.class final Lcom/vuitton/android/presentation/compose/components/LVDialogListPickerKt$LVDialogListPicker$3$1$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.compose.components.LVDialogListPickerKt$LVDialogListPicker$3$1$2$1"
    f = "LVDialogListPicker.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic c:Landroidx/compose/foundation/lazy/LazyListState;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Lcom/vuitton/android/presentation/compose/components/ListPickerItem;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/lazy/LazyListState;Ljava/util/List;Lcom/vuitton/android/presentation/compose/components/ListPickerItem;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/compose/components/LVDialogListPickerKt$LVDialogListPicker$3$1$2$1;->b:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/vuitton/android/presentation/compose/components/LVDialogListPickerKt$LVDialogListPicker$3$1$2$1;->c:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p3, p0, Lcom/vuitton/android/presentation/compose/components/LVDialogListPickerKt$LVDialogListPicker$3$1$2$1;->d:Ljava/util/List;

    iput-object p4, p0, Lcom/vuitton/android/presentation/compose/components/LVDialogListPickerKt$LVDialogListPicker$3$1$2$1;->e:Lcom/vuitton/android/presentation/compose/components/ListPickerItem;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/compose/components/LVDialogListPickerKt$LVDialogListPicker$3$1$2$1;

    iget-object v3, p0, Lcom/vuitton/android/presentation/compose/components/LVDialogListPickerKt$LVDialogListPicker$3$1$2$1;->d:Ljava/util/List;

    iget-object v4, p0, Lcom/vuitton/android/presentation/compose/components/LVDialogListPickerKt$LVDialogListPicker$3$1$2$1;->e:Lcom/vuitton/android/presentation/compose/components/ListPickerItem;

    iget-object v1, p0, Lcom/vuitton/android/presentation/compose/components/LVDialogListPickerKt$LVDialogListPicker$3$1$2$1;->b:Lkotlinx/coroutines/CoroutineScope;

    iget-object v2, p0, Lcom/vuitton/android/presentation/compose/components/LVDialogListPickerKt$LVDialogListPicker$3$1$2$1;->c:Landroidx/compose/foundation/lazy/LazyListState;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/compose/components/LVDialogListPickerKt$LVDialogListPicker$3$1$2$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/lazy/LazyListState;Ljava/util/List;Lcom/vuitton/android/presentation/compose/components/ListPickerItem;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/compose/components/LVDialogListPickerKt$LVDialogListPicker$3$1$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/compose/components/LVDialogListPickerKt$LVDialogListPicker$3$1$2$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/compose/components/LVDialogListPickerKt$LVDialogListPicker$3$1$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p1, Lcom/vuitton/android/presentation/compose/components/LVDialogListPickerKt$LVDialogListPicker$3$1$2$1$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/compose/components/LVDialogListPickerKt$LVDialogListPicker$3$1$2$1;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/vuitton/android/presentation/compose/components/LVDialogListPickerKt$LVDialogListPicker$3$1$2$1;->e:Lcom/vuitton/android/presentation/compose/components/ListPickerItem;

    iget-object v2, p0, Lcom/vuitton/android/presentation/compose/components/LVDialogListPickerKt$LVDialogListPicker$3$1$2$1;->c:Landroidx/compose/foundation/lazy/LazyListState;

    const/4 v3, 0x0

    invoke-direct {p1, v2, v0, v1, v3}, Lcom/vuitton/android/presentation/compose/components/LVDialogListPickerKt$LVDialogListPicker$3$1$2$1$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Ljava/util/List;Lcom/vuitton/android/presentation/compose/components/ListPickerItem;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    iget-object p0, p0, Lcom/vuitton/android/presentation/compose/components/LVDialogListPickerKt$LVDialogListPicker$3$1$2$1;->b:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v3, v3, p1, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
