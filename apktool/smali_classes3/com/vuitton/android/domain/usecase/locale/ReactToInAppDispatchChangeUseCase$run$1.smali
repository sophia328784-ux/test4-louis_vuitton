.class final Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;
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
    c = "com.vuitton.android.domain.usecase.locale.ReactToInAppDispatchChangeUseCase"
    f = "ReactToInAppDispatchChangeUseCase.kt"
    l = {
        0x2e,
        0x32,
        0x38,
        0x3a,
        0x3c,
        0x44,
        0x47
    }
    m = "run"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public c:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public d:Z

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase;

.field public g:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->f:Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->e:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->g:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase$run$1;->f:Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase;

    invoke-virtual {v1, p1, v0, p0}, Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
