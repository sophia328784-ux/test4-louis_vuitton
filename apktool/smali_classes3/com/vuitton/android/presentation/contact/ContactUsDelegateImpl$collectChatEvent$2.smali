.class final Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$collectChatEvent$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "event",
        "Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent;"
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
    c = "com.vuitton.android.presentation.contact.ContactUsDelegateImpl$collectChatEvent$2"
    f = "ContactUsDelegateImpl.kt"
    l = {
        0xa4,
        0xb7
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;

.field public final synthetic e:Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$collectChatEvent$2;->d:Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$collectChatEvent$2;->e:Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$collectChatEvent$2;

    iget-object v1, p0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$collectChatEvent$2;->d:Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$collectChatEvent$2;->e:Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;

    invoke-direct {v0, v1, p0, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$collectChatEvent$2;-><init>(Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$collectChatEvent$2;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$collectChatEvent$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$collectChatEvent$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$collectChatEvent$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$collectChatEvent$2;->d:Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v2, v0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->f:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v3, p0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$collectChatEvent$2;->c:Ljava/lang/Object;

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, p0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$collectChatEvent$2;->b:I

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v5, :cond_2

    if-eq v5, v8, :cond_1

    if-ne v5, v7, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v6

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    instance-of p1, v3, Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UiNotification$ChatIsVisibleUiNotification;

    if-eqz p1, :cond_3

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iput-boolean v8, v0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->k:Z

    goto :goto_2

    :cond_3
    instance-of p1, v3, Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UiNotification$ChatIsClosedUiNotification;

    if-eqz p1, :cond_5

    iget-boolean p1, v0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->k:Z

    if-eqz p1, :cond_8

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/time/Duration;->c:Lkotlin/time/Duration$Companion;

    const-wide/16 v2, 0x1f4

    sget-object p1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v2, v3, p1}, Lkotlin/time/DurationKt;->h(JLkotlin/time/DurationUnit;)J

    move-result-wide v2

    iput-object v6, p0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$collectChatEvent$2;->c:Ljava/lang/Object;

    iput v8, p0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$collectChatEvent$2;->b:I

    invoke-static {v2, v3, p0}, Lkotlinx/coroutines/DelayKt;->c(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v4, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->k:Z

    iget-object p0, p0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$collectChatEvent$2;->e:Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;

    if-eqz p0, :cond_8

    new-instance p1, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnPowerfrontCloseEvent;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;->a()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnPowerfrontCloseEvent;-><init>(Ljava/lang/String;)V

    iget-object p0, v0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->d:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {p1}, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    goto :goto_2

    :cond_5
    instance-of p1, v3, Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UiNotification$MessageChatUiNotificationReceived;

    if-eqz p1, :cond_6

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    instance-of p1, v3, Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UiNotification$AppShouldAskForPermissions;

    if-eqz p1, :cond_7

    iget-object p0, v0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->g:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    instance-of p1, v3, Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$OnLoadingChat;

    if-eqz p1, :cond_8

    iput-object v6, p0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$collectChatEvent$2;->c:Ljava/lang/Object;

    iput v7, p0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$collectChatEvent$2;->b:I

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;->S0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v4, :cond_8

    :goto_1
    return-object v4

    :cond_8
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
