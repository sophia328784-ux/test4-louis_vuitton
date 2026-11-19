.class final Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$takePhoto$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->takePhoto()V
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
    c = "com.sightcall.mediacapture.presenter.MediaCaptureViewModel$takePhoto$1"
    f = "MediaCaptureViewModel.kt"
    l = {
        0x11e
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
            "Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$takePhoto$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$takePhoto$1;->this$0:Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

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

    new-instance p1, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$takePhoto$1;

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$takePhoto$1;->this$0:Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    invoke-direct {p1, p0, p2}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$takePhoto$1;-><init>(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$takePhoto$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$takePhoto$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$takePhoto$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$takePhoto$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$takePhoto$1;->label:I

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

    iget-object p1, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$takePhoto$1;->this$0:Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    invoke-static {p1}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->access$getUseCase$p(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;

    move-result-object p1

    iget-object v1, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$takePhoto$1;->this$0:Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    invoke-static {v1}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->access$get_collimatorState$p(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LSCCollimator;

    iget-object v4, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$takePhoto$1;->this$0:Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    invoke-static {v4}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->access$get_collimatorViewWidth$p(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)I

    move-result v4

    iget-object v5, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$takePhoto$1;->this$0:Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    invoke-static {v5}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->access$get_collimatorViewHeight$p(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)I

    move-result v5

    iput v3, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$takePhoto$1;->label:I

    invoke-virtual {p1, v1, v4, v5, p0}, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;->takePhoto(LSCCollimator;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$takePhoto$1;->this$0:Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;

    check-cast p1, Lcom/sightcall/pratik/Result;

    instance-of v0, p1, Lcom/sightcall/pratik/Result$Error;

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->access$get_event$p(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)Lcom/sightcall/pratik/livedata/SingleLiveEvent;

    move-result-object p0

    new-instance v0, Lcom/sightcall/mediacapture/presenter/Event$OnResult;

    new-instance v1, Lcom/sightcall/pratik/Result$Error;

    check-cast p1, Lcom/sightcall/pratik/Result$Error;

    invoke-virtual {p1}, Lcom/sightcall/pratik/Result$Error;->getError()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sightcall/mediacapture/repo/MediaCaptureError;

    invoke-static {p1}, Lcom/sightcall/mediacapture/presenter/mappers/MappersKt;->toMediaCaptureError(Lcom/sightcall/mediacapture/repo/MediaCaptureError;)Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/sightcall/pratik/Result$Error;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/sightcall/mediacapture/presenter/Event$OnResult;-><init>(Lcom/sightcall/pratik/Result;)V

    invoke-virtual {p0, v0}, Lcom/sightcall/pratik/livedata/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    instance-of v0, p1, Lcom/sightcall/pratik/Result$Success;

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->access$get_event$p(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)Lcom/sightcall/pratik/livedata/SingleLiveEvent;

    move-result-object v0

    new-instance v1, Lcom/sightcall/mediacapture/presenter/Event$OnPreview;

    check-cast p1, Lcom/sightcall/pratik/Result$Success;

    invoke-virtual {p1}, Lcom/sightcall/pratik/Result$Success;->getSuccess()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sightcall/mediacapture/domain/entities/Media;

    invoke-static {p0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->access$get_collimatorState$p(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LSCCollimator;

    invoke-direct {v1, p1, p0}, Lcom/sightcall/mediacapture/presenter/Event$OnPreview;-><init>(Lcom/sightcall/mediacapture/domain/entities/Media;LSCCollimator;)V

    invoke-virtual {v0, v1}, Lcom/sightcall/pratik/livedata/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_4
    invoke-static {}, Lv40;->g()V

    return-object v2
.end method
