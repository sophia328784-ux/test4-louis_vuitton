.class final Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$onPictureTaken$2;
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
    c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl$onPictureTaken$2"
    f = "BeautyVtoViewModelImpl.kt"
    l = {
        0x2d9
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;

.field public final synthetic d:Landroid/graphics/Bitmap;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;Landroid/graphics/Bitmap;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$onPictureTaken$2;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$onPictureTaken$2;->d:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$onPictureTaken$2;->e:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$onPictureTaken$2;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$onPictureTaken$2;->d:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$onPictureTaken$2;->e:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$onPictureTaken$2;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$onPictureTaken$2;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;Landroid/graphics/Bitmap;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$onPictureTaken$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$onPictureTaken$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$onPictureTaken$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$onPictureTaken$2;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$onPictureTaken$2;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->e0:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyPictureUiModel;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$onPictureTaken$2;->d:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$onPictureTaken$2;->e:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyPictureUiModel;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->i0:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    iput v2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$onPictureTaken$2;->b:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
