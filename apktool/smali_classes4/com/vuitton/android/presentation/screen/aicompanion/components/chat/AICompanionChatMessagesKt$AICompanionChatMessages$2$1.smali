.class final Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatMessagesKt$AICompanionChatMessages$2$1;
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
    c = "com.vuitton.android.presentation.screen.aicompanion.components.chat.AICompanionChatMessagesKt$AICompanionChatMessages$2$1"
    f = "AICompanionChatMessages.kt"
    l = {
        0x6c,
        0x6d
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Z

.field public final synthetic d:I

.field public final synthetic e:Landroidx/compose/foundation/lazy/LazyListState;


# direct methods
.method public constructor <init>(ZILandroidx/compose/foundation/lazy/LazyListState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatMessagesKt$AICompanionChatMessages$2$1;->c:Z

    iput p2, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatMessagesKt$AICompanionChatMessages$2$1;->d:I

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatMessagesKt$AICompanionChatMessages$2$1;->e:Landroidx/compose/foundation/lazy/LazyListState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatMessagesKt$AICompanionChatMessages$2$1;

    iget v0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatMessagesKt$AICompanionChatMessages$2$1;->d:I

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatMessagesKt$AICompanionChatMessages$2$1;->e:Landroidx/compose/foundation/lazy/LazyListState;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatMessagesKt$AICompanionChatMessages$2$1;->c:Z

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatMessagesKt$AICompanionChatMessages$2$1;-><init>(ZILandroidx/compose/foundation/lazy/LazyListState;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatMessagesKt$AICompanionChatMessages$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatMessagesKt$AICompanionChatMessages$2$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatMessagesKt$AICompanionChatMessages$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatMessagesKt$AICompanionChatMessages$2$1;->b:I

    iget v2, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatMessagesKt$AICompanionChatMessages$2$1;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatMessagesKt$AICompanionChatMessages$2$1;->c:Z

    if-eqz p1, :cond_4

    if-ltz v2, :cond_4

    sget-object p1, Lkotlin/time/Duration;->c:Lkotlin/time/Duration$Companion;

    const-wide/16 v5, 0xfa

    sget-object p1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v5, v6, p1}, Lkotlin/time/DurationKt;->h(JLkotlin/time/DurationUnit;)J

    move-result-wide v5

    iput v4, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatMessagesKt$AICompanionChatMessages$2$1;->b:I

    invoke-static {v5, v6, p0}, Lkotlinx/coroutines/DelayKt;->c(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    iput v3, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatMessagesKt$AICompanionChatMessages$2$1;->b:I

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/components/chat/AICompanionChatMessagesKt$AICompanionChatMessages$2$1;->e:Landroidx/compose/foundation/lazy/LazyListState;

    const v1, 0x7fffffff

    invoke-virtual {p1, v2, v1, p0}, Landroidx/compose/foundation/lazy/LazyListState;->k(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    :goto_1
    return-object v0

    :cond_4
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
