.class final Lnet/rtccloud/sdk/RtccHelper$onAnalyticsReady$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/rtccloud/sdk/RtccHelper;->onAnalyticsReady(Lcom/sightcall/analytics/AnalyticsRepository;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;I)V
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
    c = "net.rtccloud.sdk.RtccHelper$onAnalyticsReady$1"
    f = "RtccHelper.kt"
    l = {
        0x25
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field final synthetic $analyticsRepository:Lcom/sightcall/analytics/AnalyticsRepository;

.field final synthetic $analyticsUploadToken:Ljava/lang/String;

.field final synthetic $analyticsUploadUrl:Ljava/lang/String;

.field final synthetic $analyticsUuid:Ljava/util/UUID;

.field final synthetic $param:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(ILcom/sightcall/analytics/AnalyticsRepository;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sightcall/analytics/AnalyticsRepository;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lnet/rtccloud/sdk/RtccHelper$onAnalyticsReady$1;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lnet/rtccloud/sdk/RtccHelper$onAnalyticsReady$1;->$param:I

    iput-object p2, p0, Lnet/rtccloud/sdk/RtccHelper$onAnalyticsReady$1;->$analyticsRepository:Lcom/sightcall/analytics/AnalyticsRepository;

    iput-object p3, p0, Lnet/rtccloud/sdk/RtccHelper$onAnalyticsReady$1;->$analyticsUploadUrl:Ljava/lang/String;

    iput-object p4, p0, Lnet/rtccloud/sdk/RtccHelper$onAnalyticsReady$1;->$analyticsUploadToken:Ljava/lang/String;

    iput-object p5, p0, Lnet/rtccloud/sdk/RtccHelper$onAnalyticsReady$1;->$analyticsUuid:Ljava/util/UUID;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v0, Lnet/rtccloud/sdk/RtccHelper$onAnalyticsReady$1;

    iget v1, p0, Lnet/rtccloud/sdk/RtccHelper$onAnalyticsReady$1;->$param:I

    iget-object v2, p0, Lnet/rtccloud/sdk/RtccHelper$onAnalyticsReady$1;->$analyticsRepository:Lcom/sightcall/analytics/AnalyticsRepository;

    iget-object v3, p0, Lnet/rtccloud/sdk/RtccHelper$onAnalyticsReady$1;->$analyticsUploadUrl:Ljava/lang/String;

    iget-object v4, p0, Lnet/rtccloud/sdk/RtccHelper$onAnalyticsReady$1;->$analyticsUploadToken:Ljava/lang/String;

    iget-object v5, p0, Lnet/rtccloud/sdk/RtccHelper$onAnalyticsReady$1;->$analyticsUuid:Ljava/util/UUID;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lnet/rtccloud/sdk/RtccHelper$onAnalyticsReady$1;-><init>(ILcom/sightcall/analytics/AnalyticsRepository;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lnet/rtccloud/sdk/RtccHelper$onAnalyticsReady$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lnet/rtccloud/sdk/RtccHelper$onAnalyticsReady$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lnet/rtccloud/sdk/RtccHelper$onAnalyticsReady$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/RtccHelper$onAnalyticsReady$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lnet/rtccloud/sdk/RtccHelper$onAnalyticsReady$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lnet/rtccloud/sdk/RtccHelper$onAnalyticsReady$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lnet/rtccloud/sdk/RtccAnalyticsChunk;

    iget-object p0, p0, Lnet/rtccloud/sdk/RtccHelper$onAnalyticsReady$1;->L$0:Ljava/lang/Object;

    check-cast p0, Ljava/util/Date;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Lnet/rtccloud/sdk/UnknownAnalyticsParamException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    new-instance v1, Lnet/rtccloud/sdk/RtccAnalyticsChunk;

    invoke-static {}, Lnet/rtccloud/sdk/Jni;->nDumpAnalyticsChunk()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lnet/rtccloud/sdk/RtccHelper;->INSTANCE:Lnet/rtccloud/sdk/RtccHelper;

    iget v6, p0, Lnet/rtccloud/sdk/RtccHelper$onAnalyticsReady$1;->$param:I

    invoke-static {v5, v6}, Lnet/rtccloud/sdk/RtccHelper;->access$toParam(Lnet/rtccloud/sdk/RtccHelper;I)Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param;

    move-result-object v5

    invoke-direct {v1, v4, v5, p1}, Lnet/rtccloud/sdk/RtccAnalyticsChunk;-><init>(Ljava/nio/ByteBuffer;Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param;Ljava/util/Date;)V

    iget-object p1, p0, Lnet/rtccloud/sdk/RtccHelper$onAnalyticsReady$1;->$analyticsRepository:Lcom/sightcall/analytics/AnalyticsRepository;

    iget-object v4, p0, Lnet/rtccloud/sdk/RtccHelper$onAnalyticsReady$1;->$analyticsUploadUrl:Ljava/lang/String;

    iget-object v5, p0, Lnet/rtccloud/sdk/RtccHelper$onAnalyticsReady$1;->$analyticsUploadToken:Ljava/lang/String;

    iget-object v6, p0, Lnet/rtccloud/sdk/RtccHelper$onAnalyticsReady$1;->$analyticsUuid:Ljava/util/UUID;

    invoke-static {v1, v6}, Lnet/rtccloud/sdk/mappers/AnalyticsMappersKt;->toAnalyticsChunk(Lnet/rtccloud/sdk/RtccAnalyticsChunk;Ljava/util/UUID;)Lcom/sightcall/analytics/AnalyticsChunk;

    move-result-object v1

    iput-object v2, p0, Lnet/rtccloud/sdk/RtccHelper$onAnalyticsReady$1;->L$0:Ljava/lang/Object;

    iput-object v2, p0, Lnet/rtccloud/sdk/RtccHelper$onAnalyticsReady$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lnet/rtccloud/sdk/RtccHelper$onAnalyticsReady$1;->label:I

    invoke-interface {p1, v4, v5, v1, p0}, Lcom/sightcall/analytics/AnalyticsRepository;->uploadChunk(Ljava/lang/String;Ljava/lang/String;Lcom/sightcall/analytics/AnalyticsChunk;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lnet/rtccloud/sdk/RtccHelper;->INSTANCE:Lnet/rtccloud/sdk/RtccHelper;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/RtccHelper;->getOnAnalyticsSentListener()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_1
    .catch Lnet/rtccloud/sdk/UnknownAnalyticsParamException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    sget-object p0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    invoke-virtual {p0}, Lcom/sightcall/pratik/logs/Logger;->getTag()Ljava/lang/String;

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
