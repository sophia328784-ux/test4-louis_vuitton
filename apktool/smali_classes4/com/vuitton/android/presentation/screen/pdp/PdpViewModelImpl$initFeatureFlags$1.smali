.class final Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;
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
    c = "com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl"
    f = "PdpViewModelImpl.kt"
    l = {
        0x18e,
        0x192,
        0x195,
        0x196,
        0x199,
        0x19c,
        0x19d,
        0x19e,
        0x19f
    }
    m = "initFeatureFlags"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

.field public c:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public synthetic r:Ljava/lang/Object;

.field public final synthetic s:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

.field public t:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->s:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->r:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->t:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->t:I

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->s:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    invoke-static {p1, p0}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->Cc(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
