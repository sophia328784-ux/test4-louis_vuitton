.class final Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl$getOsaReasons$1;
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
    c = "com.vuitton.android.presentation.screen.osa.reasons.OsaReasonsFormViewModelImpl"
    f = "OsaReasonsFormViewModelImpl.kt"
    l = {
        0x93,
        0x95,
        0xa3
    }
    m = "getOsaReasons"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Ljava/util/List;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;

.field public f:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl$getOsaReasons$1;->e:Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl$getOsaReasons$1;->d:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl$getOsaReasons$1;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl$getOsaReasons$1;->f:I

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl$getOsaReasons$1;->e:Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;

    invoke-static {p1, p0}, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
