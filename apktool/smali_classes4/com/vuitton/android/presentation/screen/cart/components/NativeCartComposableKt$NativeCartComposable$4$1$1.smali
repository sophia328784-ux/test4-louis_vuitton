.class final Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$4$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/vuitton/android/presentation/screen/cart/models/AddToWishlistRequest;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "addToWishlistRequest",
        "Lcom/vuitton/android/presentation/screen/cart/models/AddToWishlistRequest;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.screen.cart.components.NativeCartComposableKt$NativeCartComposable$4$1$1"
    f = "NativeCartComposable.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Landroidx/activity/compose/ManagedActivityResultLauncher;

.field public final synthetic f:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;Landroid/content/Context;Landroidx/activity/compose/ManagedActivityResultLauncher;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$4$1$1;->c:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$4$1$1;->d:Landroid/content/Context;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$4$1$1;->e:Landroidx/activity/compose/ManagedActivityResultLauncher;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$4$1$1;->f:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$4$1$1;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$4$1$1;->e:Landroidx/activity/compose/ManagedActivityResultLauncher;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$4$1$1;->f:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$4$1$1;->c:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$4$1$1;->d:Landroid/content/Context;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$4$1$1;-><init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;Landroid/content/Context;Landroidx/activity/compose/ManagedActivityResultLauncher;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$4$1$1;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/android/presentation/screen/cart/models/AddToWishlistRequest;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$4$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$4$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$4$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$4$1$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/cart/models/AddToWishlistRequest;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-boolean p1, v0, Lcom/vuitton/android/presentation/screen/cart/models/AddToWishlistRequest;->a:Z

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$4$1$1;->c:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

    if-eqz p1, :cond_0

    iget-object p0, v0, Lcom/vuitton/android/presentation/screen/cart/models/AddToWishlistRequest;->b:Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    const/4 p1, 0x1

    invoke-interface {v1, p1, p0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;->vb(ZLcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lt30;

    const/16 v2, 0x10

    invoke-direct {p1, v1, v0, v2}, Lt30;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$4$1$1;->f:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    new-instance p1, Lcom/vuitton/android/presentation/screen/cart/NativeCartDestinations$ToLoginPage;

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;->WISHLIST:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;

    invoke-direct {p1, v0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartDestinations$ToLoginPage;-><init>(Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$4$1$1;->d:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/cart/NativeCartDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$4$1$1;->e:Landroidx/activity/compose/ManagedActivityResultLauncher;

    invoke-static {p1, p0}, Lcom/vuitton/android/platform/extensions/IntentExtensionKt;->b(Landroid/content/Intent;Landroidx/activity/result/ActivityResultLauncher;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
