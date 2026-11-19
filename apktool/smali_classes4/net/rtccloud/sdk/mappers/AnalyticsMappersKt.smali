.class public final Lnet/rtccloud/sdk/mappers/AnalyticsMappersKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0000\u001a\u000c\u0010\u0005\u001a\u00020\u0006*\u00020\u0007H\u0002\u001a\u000c\u0010\u0008\u001a\u00020\t*\u00020\nH\u0002\u00a8\u0006\u000b"
    }
    d2 = {
        "toAnalyticsChunk",
        "Lcom/sightcall/analytics/AnalyticsChunk;",
        "Lnet/rtccloud/sdk/RtccAnalyticsChunk;",
        "uuid",
        "Ljava/util/UUID;",
        "toByteArray",
        "",
        "Ljava/nio/ByteBuffer;",
        "toParam",
        "Lcom/sightcall/analytics/AnalyticsChunk$Param;",
        "Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param;",
        "rtcc_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final toAnalyticsChunk(Lnet/rtccloud/sdk/RtccAnalyticsChunk;Ljava/util/UUID;)Lcom/sightcall/analytics/AnalyticsChunk;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/RtccAnalyticsChunk;->getChunk()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lnet/rtccloud/sdk/mappers/AnalyticsMappersKt;->toByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/RtccAnalyticsChunk;->getParam()Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param;

    move-result-object v1

    invoke-static {v1}, Lnet/rtccloud/sdk/mappers/AnalyticsMappersKt;->toParam(Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param;)Lcom/sightcall/analytics/AnalyticsChunk$Param;

    move-result-object v1

    invoke-virtual {p0}, Lnet/rtccloud/sdk/RtccAnalyticsChunk;->getEmissionDate()Ljava/util/Date;

    move-result-object p0

    new-instance v2, Lcom/sightcall/analytics/AnalyticsChunk;

    invoke-direct {v2, v0, p1, v1, p0}, Lcom/sightcall/analytics/AnalyticsChunk;-><init>([BLjava/util/UUID;Lcom/sightcall/analytics/AnalyticsChunk$Param;Ljava/util/Date;)V

    return-object v2
.end method

.method private static final toByteArray(Ljava/nio/ByteBuffer;)[B
    .locals 1

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private static final toParam(Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param;)Lcom/sightcall/analytics/AnalyticsChunk$Param;
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param$Startup;->INSTANCE:Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param$Startup;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sightcall/analytics/AnalyticsChunk$Param$Startup;->INSTANCE:Lcom/sightcall/analytics/AnalyticsChunk$Param$Startup;

    return-object p0

    :cond_0
    sget-object v0, Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param$Call;->INSTANCE:Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param$Call;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sightcall/analytics/AnalyticsChunk$Param$Call;->INSTANCE:Lcom/sightcall/analytics/AnalyticsChunk$Param$Call;

    return-object p0

    :cond_1
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method
