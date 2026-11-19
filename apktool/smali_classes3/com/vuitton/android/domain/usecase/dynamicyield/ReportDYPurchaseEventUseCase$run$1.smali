.class final Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYPurchaseEventUseCase$run$1;
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
    c = "com.vuitton.android.domain.usecase.dynamicyield.ReportDYPurchaseEventUseCase"
    f = "ReportDYPurchaseEventUseCase.kt"
    l = {
        0x10
    }
    m = "run"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYPurchaseEventUseCase;

.field public d:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYPurchaseEventUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYPurchaseEventUseCase$run$1;->c:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYPurchaseEventUseCase;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYPurchaseEventUseCase$run$1;->b:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYPurchaseEventUseCase$run$1;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYPurchaseEventUseCase$run$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYPurchaseEventUseCase$run$1;->c:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYPurchaseEventUseCase;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYPurchaseEventUseCase;->a(FLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
