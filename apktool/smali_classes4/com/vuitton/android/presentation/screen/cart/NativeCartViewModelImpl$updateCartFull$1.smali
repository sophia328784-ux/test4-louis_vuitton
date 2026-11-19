.class final Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartFull$1;
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
    c = "com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl"
    f = "NativeCartViewModelImpl.kt"
    l = {
        0x134,
        0x137,
        0x13e
    }
    m = "updateCartFull"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/foundation/model/domain/model/cart/Cart;

.field public c:Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;

.field public d:Ljava/util/Iterator;

.field public e:Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

.field public f:Z

.field public g:Z

.field public h:I

.field public i:I

.field public synthetic j:Ljava/lang/Object;

.field public final synthetic k:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

.field public l:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartFull$1;->k:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartFull$1;->j:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartFull$1;->l:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartFull$1;->l:I

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartFull$1;->k:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->Dc(Lcom/vuitton/foundation/model/domain/model/cart/Cart;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
