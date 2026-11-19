.class final Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStore$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->resizeAndStore(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/sightcall/pratik/Result<",
        "Lcom/sightcall/mediacapture/repo/entities/MediaRepo;",
        "Lcom/sightcall/mediacapture/repo/MediaCaptureError;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0004H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/sightcall/pratik/Result;",
        "Lcom/sightcall/mediacapture/repo/entities/MediaRepo;",
        "Lcom/sightcall/mediacapture/repo/MediaCaptureError;",
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
    c = "com.sightcall.mediacapture.repo.MediaCaptureRepositoryImpl$resizeAndStore$2"
    f = "MediaCaptureRepositoryImpl.kt"
    l = {
        0x117,
        0x118
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field final synthetic $maxSize:Ljava/lang/Integer;

.field final synthetic $source:Lcom/sightcall/mediacapture/repo/entities/MediaRepo;

.field final synthetic $targetWeight:Ljava/lang/Integer;

.field label:I

.field final synthetic this$0:Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/mediacapture/repo/entities/MediaRepo;",
            "Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStore$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStore$2;->$source:Lcom/sightcall/mediacapture/repo/entities/MediaRepo;

    iput-object p2, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStore$2;->this$0:Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;

    iput-object p3, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStore$2;->$maxSize:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStore$2;->$targetWeight:Ljava/lang/Integer;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance v0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStore$2;

    iget-object v1, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStore$2;->$source:Lcom/sightcall/mediacapture/repo/entities/MediaRepo;

    iget-object v2, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStore$2;->this$0:Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;

    iget-object v3, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStore$2;->$maxSize:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStore$2;->$targetWeight:Ljava/lang/Integer;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStore$2;-><init>(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStore$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/mediacapture/repo/entities/MediaRepo;",
            "Lcom/sightcall/mediacapture/repo/MediaCaptureError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStore$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStore$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStore$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStore$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    iget-object v1, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStore$2;->$source:Lcom/sightcall/mediacapture/repo/entities/MediaRepo;

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sightcall/pratik/logs/Logger;->getTag()Ljava/lang/String;

    iget-object v1, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStore$2;->$source:Lcom/sightcall/mediacapture/repo/entities/MediaRepo;

    invoke-virtual {v1}, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sightcall/mediacapture/repo/mappers/MediaCaptureMappersKt;->isImageMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStore$2;->this$0:Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;

    iget-object v1, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStore$2;->$source:Lcom/sightcall/mediacapture/repo/entities/MediaRepo;

    iget-object v2, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStore$2;->$maxSize:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStore$2;->$targetWeight:Ljava/lang/Integer;

    iput v3, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStore$2;->label:I

    invoke-static {p1, v1, v2, v4, p0}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->access$resizeAndStorePhoto(Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;Lcom/sightcall/mediacapture/repo/entities/MediaRepo;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    check-cast p1, Lcom/sightcall/pratik/Result;

    return-object p1

    :cond_4
    iget-object v1, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStore$2;->$source:Lcom/sightcall/mediacapture/repo/entities/MediaRepo;

    invoke-virtual {v1}, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sightcall/mediacapture/repo/mappers/MediaCaptureMappersKt;->isVideoMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object p1, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStore$2;->this$0:Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;

    iget-object v1, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStore$2;->$source:Lcom/sightcall/mediacapture/repo/entities/MediaRepo;

    iget-object v3, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStore$2;->$maxSize:Ljava/lang/Integer;

    iput v2, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStore$2;->label:I

    invoke-static {p1, v1, v3, p0}, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;->access$resizeAndStoreVideo(Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;Lcom/sightcall/mediacapture/repo/entities/MediaRepo;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    :goto_1
    return-object v0

    :cond_5
    :goto_2
    check-cast p1, Lcom/sightcall/pratik/Result;

    return-object p1

    :cond_6
    iget-object v0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStore$2;->$source:Lcom/sightcall/mediacapture/repo/entities/MediaRepo;

    invoke-virtual {v0}, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;->getMimeType()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sightcall/pratik/logs/Logger;->getTag()Ljava/lang/String;

    new-instance p1, Lcom/sightcall/pratik/Result$Error;

    new-instance v0, Lcom/sightcall/mediacapture/repo/MediaCaptureError$MediaCaptureException;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object p0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$resizeAndStore$2;->$source:Lcom/sightcall/mediacapture/repo/entities/MediaRepo;

    invoke-virtual {p0}, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;->getMimeType()Ljava/lang/String;

    move-result-object p0

    const-string v2, "Wrong mimeType="

    invoke-static {v2, p0}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/sightcall/mediacapture/repo/MediaCaptureError$MediaCaptureException;-><init>(Ljava/lang/Exception;)V

    invoke-direct {p1, v0}, Lcom/sightcall/pratik/Result$Error;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
