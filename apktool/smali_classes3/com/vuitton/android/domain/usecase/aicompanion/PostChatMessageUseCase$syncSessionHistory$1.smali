.class final Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase$syncSessionHistory$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.domain.usecase.aicompanion.PostChatMessageUseCase"
    f = "PostChatMessageUseCase.kt"
    l = {
        0x2a,
        0x30
    }
    m = "syncSessionHistory"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase;

.field public d:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase$syncSessionHistory$1;->c:Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase$syncSessionHistory$1;->b:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase$syncSessionHistory$1;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase$syncSessionHistory$1;->d:I

    sget-object p1, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase;->d:Ljava/lang/String;

    iget-object p1, p0, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase$syncSessionHistory$1;->c:Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase;->b(Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRequest;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
