.class public final Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\nB!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase;",
        "",
        "Lcom/vuitton/android/domain/repository/AICompanionRepository;",
        "aiCompanionRepository",
        "Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;",
        "analyticsWrapperRepository",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "<init>",
        "(Lcom/vuitton/android/domain/repository/AICompanionRepository;Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;Lcom/vuitton/foundation/logger/Logger;)V",
        "Companion",
        "domain"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final d:Ljava/lang/String;


# instance fields
.field public final a:Lcom/vuitton/android/domain/repository/AICompanionRepository;

.field public final b:Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;

.field public final c:Lcom/vuitton/foundation/logger/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-class v0, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->B()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/domain/repository/AICompanionRepository;Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;Lcom/vuitton/foundation/logger/Logger;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase;->a:Lcom/vuitton/android/domain/repository/AICompanionRepository;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase;->b:Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;

    iput-object p3, p0, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase;->c:Lcom/vuitton/foundation/logger/Logger;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRequest;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase$run$1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase$run$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase$run$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase$run$1;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase$run$1;->f:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase$run$1;->c:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v6

    :cond_2
    iget-object p1, v0, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRequest;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p2, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object p1, v0, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRequest;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRequest;

    iput v5, v0, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase$run$1;->f:I

    iget-object p2, p0, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase;->b:Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;

    invoke-interface {p2, v0}, Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;->f(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_1
    check-cast p2, Ljava/lang/String;

    iput-object p1, v0, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRequest;

    iput v4, v0, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase$run$1;->f:I

    iget-object v2, p0, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase;->a:Lcom/vuitton/android/domain/repository/AICompanionRepository;

    invoke-interface {v2, p1, p2, v0}, Lcom/vuitton/android/domain/repository/AICompanionRepository;->c(Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRequest;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, p2, Lkotlin/Result$Failure;

    if-nez v2, :cond_7

    move-object v2, p2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatResponse;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatResponse;->a:Ljava/lang/String;

    iput-object v6, v0, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRequest;

    iput-object p2, v0, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase$run$1;->c:Ljava/lang/Object;

    iput v3, v0, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase$run$1;->f:I

    invoke-virtual {p0, p1, v2, v0}, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase;->b(Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRequest;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    :goto_3
    return-object v1

    :cond_7
    return-object p2
.end method

.method public final b(Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRequest;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 13

    move-object/from16 v0, p3

    instance-of v1, v0, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase$syncSessionHistory$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase$syncSessionHistory$1;

    iget v2, v1, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase$syncSessionHistory$1;->d:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase$syncSessionHistory$1;->d:I

    :goto_0
    move-object v8, v1

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase$syncSessionHistory$1;

    invoke-direct {v1, p0, v0}, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase$syncSessionHistory$1;-><init>(Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object v0, v8, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase$syncSessionHistory$1;->b:Ljava/lang/Object;

    sget-object v9, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v8, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase$syncSessionHistory$1;->d:I

    sget-object v10, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase;->d:Ljava/lang/String;

    iget-object v11, p0, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase;->c:Lcom/vuitton/foundation/logger/Logger;

    const/4 v2, 0x2

    const/4 v12, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v12, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/Result;

    iget-object p0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/Result;

    iget-object p0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRequest;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase;->a:Lcom/vuitton/android/domain/repository/AICompanionRepository;

    if-nez v0, :cond_5

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory;

    iget-object v2, p1, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRequest;->b:Ljava/lang/String;

    const/16 v6, 0xc

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput v12, v8, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase$syncSessionHistory$1;->d:I

    invoke-interface {p0, v0, v8}, Lcom/vuitton/android/domain/repository/AICompanionRepository;->d(Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatHistory;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v9, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Error saving chat session in history: "

    invoke-static {v0, p1, v11, v10, p0}, La;->y(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_5
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    iput v2, v8, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase$syncSessionHistory$1;->d:I

    invoke-interface {p0, v0, p2, v8}, Lcom/vuitton/android/domain/repository/AICompanionRepository;->b(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v9, :cond_6

    :goto_3
    return-object v9

    :cond_6
    :goto_4
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Error updating chat session id in history: "

    invoke-static {v0, p1, v11, v10, p0}, La;->y(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
