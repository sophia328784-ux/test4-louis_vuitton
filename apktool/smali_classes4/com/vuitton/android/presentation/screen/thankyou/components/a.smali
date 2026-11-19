.class public final synthetic Lcom/vuitton/android/presentation/screen/thankyou/components/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic c:Landroidx/compose/foundation/ScrollState;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/ScrollState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/thankyou/components/a;->b:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/thankyou/components/a;->c:Landroidx/compose/foundation/ScrollState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/ui/focus/FocusState;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroidx/compose/ui/focus/FocusState;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/vuitton/android/presentation/screen/thankyou/components/ThankYouFeedbackBottomSheetKt$ThankYouFeedbackBottomSheet$1$1$3$1$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/thankyou/components/a;->c:Landroidx/compose/foundation/ScrollState;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/vuitton/android/presentation/screen/thankyou/components/ThankYouFeedbackBottomSheetKt$ThankYouFeedbackBottomSheet$1$1$3$1$1;-><init>(Landroidx/compose/foundation/ScrollState;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/thankyou/components/a;->b:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, p1, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
