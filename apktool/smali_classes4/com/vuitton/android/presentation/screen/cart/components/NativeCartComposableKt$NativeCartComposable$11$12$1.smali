.class final Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$11$12$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
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
    c = "com.vuitton.android.presentation.screen.cart.components.NativeCartComposableKt$NativeCartComposable$11$12$1"
    f = "NativeCartComposable.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$11$12$1;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$11$12$1;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$11$12$1;->d:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$11$12$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$11$12$1;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$11$12$1;->d:Landroidx/compose/runtime/MutableState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$11$12$1;->b:Landroid/content/Context;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$11$12$1;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$11$12$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$11$12$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$11$12$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$11$12$1;->d:Landroidx/compose/runtime/MutableState;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->d:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$11$12$1;->b:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartComposableKt$NativeCartComposable$11$12$1;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    invoke-static {}, Leq;->c()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
