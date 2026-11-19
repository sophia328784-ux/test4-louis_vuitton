.class final Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$getState$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function6<",
        "Lcom/vuitton/android/presentation/contact/ContactUsMode;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0005H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel;",
        "contactMode",
        "Lcom/vuitton/android/presentation/contact/ContactUsMode;",
        "featureFlagEnabled",
        "",
        "careServiceFlagEnabled",
        "consentOptIn",
        "chatEnabled"
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
    c = "com.vuitton.android.presentation.contact.ContactUsDelegateImpl$getState$1"
    f = "ContactUsDelegateImpl.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Lcom/vuitton/android/presentation/contact/ContactUsMode;

.field public synthetic c:Z

.field public synthetic d:Z

.field public synthetic e:Z

.field public synthetic f:Z


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$getState$1;->b:Lcom/vuitton/android/presentation/contact/ContactUsMode;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$getState$1;->c:Z

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$getState$1;->d:Z

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$getState$1;->e:Z

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$getState$1;->f:Z

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    if-eqz v1, :cond_3

    sget-object p1, Lcom/vuitton/android/presentation/contact/ContactUsMode;->DISTANT_CARE:Lcom/vuitton/android/presentation/contact/ContactUsMode;

    if-ne v0, p1, :cond_0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez v3, :cond_1

    sget-object p0, Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel$UserOptOut;->a:Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel$UserOptOut;

    return-object p0

    :cond_1
    if-eqz p0, :cond_2

    sget-object p0, Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel$Available;->a:Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel$Available;

    return-object p0

    :cond_2
    sget-object p0, Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel$AdvisorNotAvailable;->a:Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel$AdvisorNotAvailable;

    return-object p0

    :cond_3
    :goto_0
    sget-object p0, Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel$ChatDisabled;->a:Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel$ChatDisabled;

    return-object p0
.end method

.method public final l(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/android/presentation/contact/ContactUsMode;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    check-cast p6, Lkotlin/coroutines/Continuation;

    new-instance p5, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$getState$1;

    invoke-direct {p5, p6}, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$getState$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, p5, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$getState$1;->b:Lcom/vuitton/android/presentation/contact/ContactUsMode;

    iput-boolean p0, p5, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$getState$1;->c:Z

    iput-boolean p2, p5, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$getState$1;->d:Z

    iput-boolean p3, p5, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$getState$1;->e:Z

    iput-boolean p4, p5, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$getState$1;->f:Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p5, p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl$getState$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
