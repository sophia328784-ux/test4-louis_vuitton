.class final Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartItemVisibility$1;
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
        0x2b1
    }
    m = "updateCartItemVisibility"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

.field public c:Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

.field public d:Z

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

.field public g:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartItemVisibility$1;->f:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartItemVisibility$1;->e:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartItemVisibility$1;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartItemVisibility$1;->g:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartItemVisibility$1;->f:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    invoke-static {v1, p1, v0, p0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->Bc(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
