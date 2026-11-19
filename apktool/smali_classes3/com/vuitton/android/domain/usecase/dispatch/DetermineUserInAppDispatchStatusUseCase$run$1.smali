.class final Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$run$1;
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
    c = "com.vuitton.android.domain.usecase.dispatch.DetermineUserInAppDispatchStatusUseCase"
    f = "DetermineUserInAppDispatchStatusUseCase.kt"
    l = {
        0x19,
        0x1c,
        0x23,
        0x2c,
        0x2f
    }
    m = "run"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/util/List;

.field public c:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public d:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase;

.field public g:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$run$1;->f:Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$run$1;->e:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$run$1;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$run$1;->g:I

    iget-object p1, p0, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$run$1;->f:Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase;

    invoke-virtual {p1, p0}, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
