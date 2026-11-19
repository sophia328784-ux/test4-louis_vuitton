.class public final Lcom/sightcall/analytics/AnalyticsRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/analytics/AnalyticsRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J&\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000cH\u0096@\u00a2\u0006\u0002\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/sightcall/analytics/AnalyticsRepositoryImpl;",
        "Lcom/sightcall/analytics/AnalyticsRepository;",
        "analyticsUploadDatasource",
        "Lcom/sightcall/analytics/datasource/AnalyticsUploadDatasource;",
        "<init>",
        "(Lcom/sightcall/analytics/datasource/AnalyticsUploadDatasource;)V",
        "uploadChunk",
        "",
        "uploadUrl",
        "",
        "token",
        "analyticChunk",
        "Lcom/sightcall/analytics/AnalyticsChunk;",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/sightcall/analytics/AnalyticsChunk;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "analytics_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final analyticsUploadDatasource:Lcom/sightcall/analytics/datasource/AnalyticsUploadDatasource;


# direct methods
.method public constructor <init>(Lcom/sightcall/analytics/datasource/AnalyticsUploadDatasource;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/analytics/AnalyticsRepositoryImpl;->analyticsUploadDatasource:Lcom/sightcall/analytics/datasource/AnalyticsUploadDatasource;

    return-void
.end method


# virtual methods
.method public uploadChunk(Ljava/lang/String;Ljava/lang/String;Lcom/sightcall/analytics/AnalyticsChunk;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sightcall/analytics/AnalyticsChunk;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sightcall/analytics/AnalyticsRepositoryImpl;->analyticsUploadDatasource:Lcom/sightcall/analytics/datasource/AnalyticsUploadDatasource;

    invoke-virtual {p3}, Lcom/sightcall/analytics/AnalyticsChunk;->getChunk()[B

    move-result-object v3

    invoke-virtual {p3}, Lcom/sightcall/analytics/AnalyticsChunk;->getParam()Lcom/sightcall/analytics/AnalyticsChunk$Param;

    move-result-object p0

    invoke-virtual {p3}, Lcom/sightcall/analytics/AnalyticsChunk;->getUuid()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x2d

    invoke-static {p3, v1}, Lcom/sightcall/pratik/extensions/StringExtensionsKt;->remove(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lcom/sightcall/analytics/AnalyticsRepositoryImplKt;->access$generateFileName(Lcom/sightcall/analytics/AnalyticsChunk$Param;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/sightcall/analytics/datasource/AnalyticsUploadDatasource;->upload(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
