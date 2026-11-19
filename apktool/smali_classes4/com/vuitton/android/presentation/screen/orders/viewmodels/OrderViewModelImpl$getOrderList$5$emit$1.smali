.class final Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$5$emit$1;
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
    c = "com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModelImpl$getOrderList$5"
    f = "OrderViewModelImpl.kt"
    l = {
        0xcd
    }
    m = "emit"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;

.field public d:Ljava/lang/Throwable;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$5;

.field public g:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$5;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$5$emit$1;->f:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$5;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$5$emit$1;->e:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$5$emit$1;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$5$emit$1;->g:I

    new-instance p1, Lkotlin/Result;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$5$emit$1;->f:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$5;

    invoke-virtual {v0, p1, p0}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$5;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
