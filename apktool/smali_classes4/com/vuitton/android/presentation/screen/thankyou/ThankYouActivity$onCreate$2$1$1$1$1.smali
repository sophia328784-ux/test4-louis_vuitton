.class final Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity$onCreate$2$1$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity$onCreate$2$1$1$1$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/Unit;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it"
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
    c = "com.vuitton.android.presentation.screen.thankyou.ThankYouActivity$onCreate$2$1$1$1$1"
    f = "ThankYouActivity.kt"
    l = {
        0x58
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Landroidx/compose/material3/SnackbarHostState;

.field public final synthetic d:Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarVisuals;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarVisuals;Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity$onCreate$2$1$1$1$1;->c:Landroidx/compose/material3/SnackbarHostState;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity$onCreate$2$1$1$1$1;->d:Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarVisuals;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity$onCreate$2$1$1$1$1;->e:Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity$onCreate$2$1$1$1$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity$onCreate$2$1$1$1$1;->d:Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarVisuals;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity$onCreate$2$1$1$1$1;->e:Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity$onCreate$2$1$1$1$1;->c:Landroidx/compose/material3/SnackbarHostState;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity$onCreate$2$1$1$1$1;-><init>(Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarVisuals;Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Unit;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity$onCreate$2$1$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity$onCreate$2$1$1$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity$onCreate$2$1$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity$onCreate$2$1$1$1$1;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v3, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity$onCreate$2$1$1$1$1;->b:I

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity$onCreate$2$1$1$1$1;->c:Landroidx/compose/material3/SnackbarHostState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity$onCreate$2$1$1$1$1;->d:Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarVisuals;

    invoke-virtual {p1, v1, p0}, Landroidx/compose/material3/SnackbarHostState;->a(Landroidx/compose/material3/SnackbarVisuals;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Landroidx/compose/material3/SnackbarResult;

    sget-object v0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity$onCreate$2$1$1$1$1$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity$onCreate$2$1$1$1$1;->e:Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity;

    if-eq p1, v3, :cond_4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    sget-object p1, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity;->q:Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity;->H()Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModel;

    move-result-object p0

    sget-object p1, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouTrackingUiModel$CloseFeedbackNotification;->a:Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouTrackingUiModel$CloseFeedbackNotification;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModel;->Ba(Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouTrackingUiModel;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lv40;->g()V

    return-object v2

    :cond_4
    sget-object p1, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity;->q:Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity;->H()Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModel;

    move-result-object p1

    sget-object v0, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouTrackingUiModel$FeedbackScreen;->a:Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouTrackingUiModel$FeedbackScreen;

    invoke-interface {p1, v0}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModel;->Ba(Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouTrackingUiModel;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity;->H()Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModel;

    move-result-object p0

    sget-object p1, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouBottomSheet$Feedback;->a:Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouBottomSheet$Feedback;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModel;->V3(Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouBottomSheet$Feedback;)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
