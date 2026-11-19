.class final Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$startCamera$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->startCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
    c = "com.sightcall.mediacapture.presenter.MediaCaptureViewModel$startCamera$1"
    f = "MediaCaptureViewModel.kt"
    l = {
        0xcf
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;


# direct methods
.method public constructor <init>(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$startCamera$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$startCamera$1;->this$0:Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$startCamera$1;

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$startCamera$1;->this$0:Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    invoke-direct {p1, p0, p2}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$startCamera$1;-><init>(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$startCamera$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$startCamera$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$startCamera$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$startCamera$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$startCamera$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$startCamera$1;->this$0:Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    invoke-virtual {p1}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->resetFlashlight()V

    iget-object p1, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$startCamera$1;->this$0:Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    invoke-static {p1}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->access$getUseCase$p(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;

    move-result-object p1

    iget-object v1, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$startCamera$1;->this$0:Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    invoke-static {v1}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->access$isPhotoCaptureAllowed$p(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)Z

    move-result v1

    iget-object v4, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$startCamera$1;->this$0:Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    invoke-static {v4}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->access$getMediaCaptureParameters$p(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->getPhotoMaxSize()Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$startCamera$1;->this$0:Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    invoke-static {v5}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->access$isVideoCaptureAllowed$p(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)Z

    move-result v5

    iput v3, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$startCamera$1;->label:I

    invoke-virtual {p1, v1, v4, v5, p0}, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;->initCamera(ZLjava/lang/Integer;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    new-instance p1, Landroidx/camera/core/UseCaseGroup$Builder;

    invoke-direct {p1}, Landroidx/camera/core/UseCaseGroup$Builder;-><init>()V

    iget-object v0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$startCamera$1;->this$0:Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    invoke-static {v0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->access$getUseCase$p(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;->getCameraPreview()Landroidx/camera/core/Preview;

    move-result-object v1

    iget-object v4, p1, Landroidx/camera/core/UseCaseGroup$Builder;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->access$isPhotoCaptureAllowed$p(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->access$getUseCase$p(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;->getImageCapture()Landroidx/camera/core/ImageCapture;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {v0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->access$isVideoCaptureAllowed$p(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->access$getUseCase$p(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;->getVideoCapture()Landroidx/camera/video/VideoCapture;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$startCamera$1;->this$0:Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    invoke-static {v0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->access$get_cameraState$p(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/sightcall/mediacapture/presenter/CameraState$Ready;

    iget-object v5, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$startCamera$1;->this$0:Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    invoke-static {v5}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->access$getUseCase$p(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;->getCameraProvider()Landroidx/camera/lifecycle/ProcessCameraProvider;

    move-result-object v5

    iget-object v6, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$startCamera$1;->this$0:Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    invoke-virtual {v6}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->getCameraSelector()Landroidx/camera/core/CameraSelector;

    move-result-object v6

    iget-object v7, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$startCamera$1;->this$0:Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    invoke-static {v7}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->access$getUseCase$p(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;->getCameraPreview()Landroidx/camera/core/Preview;

    move-result-object v7

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    xor-int/2addr v3, v8

    const-string v8, "UseCase must not be empty."

    invoke-static {v3, v8}, Landroidx/core/util/Preconditions;->b(ZLjava/lang/String;)V

    iget-object p1, p1, Landroidx/camera/core/UseCaseGroup$Builder;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_5

    new-instance v2, Landroidx/camera/core/UseCaseGroup;

    invoke-direct {v2, v4, p1}, Landroidx/camera/core/UseCaseGroup;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-direct {v1, v5, v6, v7, v2}, Lcom/sightcall/mediacapture/presenter/CameraState$Ready;-><init>(Landroidx/camera/lifecycle/ProcessCameraProvider;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/Preview;Landroidx/camera/core/UseCaseGroup;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$startCamera$1;->this$0:Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    invoke-static {p0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->access$updateCameraActionsState(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lr81;->h()V

    return-object v2
.end method
