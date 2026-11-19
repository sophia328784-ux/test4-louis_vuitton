.class final Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$6$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$6$1$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesDestination;",
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
        "notificationsPreferenceDestination",
        "Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesDestination;"
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
    c = "com.vuitton.android.presentation.screen.options.notifications.components.NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$6$1$1"
    f = "NotificationsPreferencesComposable.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lkotlin/jvm/functions/Function0;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$6$1$1;->c:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$6$1$1;->d:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$6$1$1;->e:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$6$1$1;->f:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$6$1$1;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$6$1$1;->e:Lkotlin/jvm/functions/Function0;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$6$1$1;->f:Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$6$1$1;->c:Lkotlin/jvm/functions/Function0;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$6$1$1;->d:Lkotlin/jvm/functions/Function0;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$6$1$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$6$1$1;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesDestination;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$6$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$6$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$6$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$6$1$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesDestination;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$6$1$1$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$6$1$1;->f:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$6$1$1;->e:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$6$1$1;->d:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$6$1$1;->c:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
