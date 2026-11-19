.class final Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase$run$1;
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
    c = "com.vuitton.android.domain.usecase.automatedtest.ApplyAutomatedTestConfigUseCase"
    f = "ApplyAutomatedTestConfigUseCase.kt"
    l = {
        0x1a,
        0x1b,
        0x1c
    }
    m = "run-CVEVb2Y"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/foundation/model/domain/model/environment/Environment;

.field public c:Ljava/lang/String;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase;

.field public f:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase$run$1;->e:Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase$run$1;->d:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase$run$1;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase$run$1;->f:I

    iget-object p1, p0, Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase$run$1;->e:Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, p0}, Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase;->a(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/environment/Environment;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
