.class final Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase$run$1;
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
    c = "com.vuitton.android.domain.usecase.connectivity.GetConnectedObjectListUseCase"
    f = "GetConnectedObjectListUseCase.kt"
    l = {
        0x11,
        0x19
    }
    m = "run"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase$Params;

.field public c:Ljava/util/List;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;

.field public f:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase$run$1;->e:Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase$run$1;->d:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase$run$1;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase$run$1;->f:I

    iget-object p1, p0, Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase$run$1;->e:Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;->a(Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase$Params;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method
