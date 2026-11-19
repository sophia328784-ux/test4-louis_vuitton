.class final Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;
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
    c = "com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModelImpl"
    f = "OrderViewModelImpl.kt"
    l = {
        0x9f,
        0xa2,
        0xa3,
        0xa5
    }
    m = "initFeatureFlags"
    v = 0x2
.end annotation


# instance fields
.field public b:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public c:Ljava/lang/Object;

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Z

.field public synthetic j:Ljava/lang/Object;

.field public final synthetic k:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;

.field public l:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->k:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->j:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->l:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->l:I

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->k:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;

    invoke-static {p1, p0}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->Bc(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
