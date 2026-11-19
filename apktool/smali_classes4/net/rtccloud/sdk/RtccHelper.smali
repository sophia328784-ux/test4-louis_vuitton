.class public final Lnet/rtccloud/sdk/RtccHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J2\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u0014H\u0002R\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u0017"
    }
    d2 = {
        "Lnet/rtccloud/sdk/RtccHelper;",
        "",
        "<init>",
        "()V",
        "onAnalyticsSentListener",
        "Lkotlin/Function0;",
        "",
        "getOnAnalyticsSentListener",
        "()Lkotlin/jvm/functions/Function0;",
        "setOnAnalyticsSentListener",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onAnalyticsReady",
        "analyticsRepository",
        "Lcom/sightcall/analytics/AnalyticsRepository;",
        "analyticsUploadUrl",
        "",
        "analyticsUploadToken",
        "analyticsUuid",
        "Ljava/util/UUID;",
        "param",
        "",
        "toParam",
        "Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param;",
        "rtcc_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lnet/rtccloud/sdk/RtccHelper;

.field private static onAnalyticsSentListener:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/rtccloud/sdk/RtccHelper;

    invoke-direct {v0}, Lnet/rtccloud/sdk/RtccHelper;-><init>()V

    sput-object v0, Lnet/rtccloud/sdk/RtccHelper;->INSTANCE:Lnet/rtccloud/sdk/RtccHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$toParam(Lnet/rtccloud/sdk/RtccHelper;I)Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param;
    .locals 0

    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/RtccHelper;->toParam(I)Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param;

    move-result-object p0

    return-object p0
.end method

.method private final toParam(I)Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/rtccloud/sdk/UnknownAnalyticsParamException;
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    sget-object p0, Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param$Startup;->INSTANCE:Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param$Startup;

    return-object p0

    :cond_0
    new-instance p0, Lnet/rtccloud/sdk/UnknownAnalyticsParamException;

    const-string v0, "param="

    invoke-static {p1, v0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/UnknownAnalyticsParamException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object p0, Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param$Call;->INSTANCE:Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param$Call;

    return-object p0
.end method


# virtual methods
.method public final getOnAnalyticsSentListener()Lkotlin/jvm/functions/Function0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    sget-object p0, Lnet/rtccloud/sdk/RtccHelper;->onAnalyticsSentListener:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final onAnalyticsReady(Lcom/sightcall/analytics/AnalyticsRepository;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;I)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {p0}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p0

    new-instance v0, Lnet/rtccloud/sdk/RtccHelper$onAnalyticsReady$1;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v1, p5

    invoke-direct/range {v0 .. v6}, Lnet/rtccloud/sdk/RtccHelper$onAnalyticsReady$1;-><init>(ILcom/sightcall/analytics/AnalyticsRepository;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    const/4 p2, 0x0

    invoke-static {p0, p2, p2, v0, p1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void

    :cond_1
    :goto_0
    sget-object p0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    invoke-virtual {p0}, Lcom/sightcall/pratik/logs/Logger;->getTag()Ljava/lang/String;

    return-void
.end method

.method public final setOnAnalyticsSentListener(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    sput-object p1, Lnet/rtccloud/sdk/RtccHelper;->onAnalyticsSentListener:Lkotlin/jvm/functions/Function0;

    return-void
.end method
