.class Lnet/rtccloud/sdk/StatsModule$Native$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/rtccloud/sdk/StatsModule$Native;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/StatsModule$Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callStats(Lnet/rtccloud/sdk/Call;)Lnet/rtccloud/sdk/Call$Stats;
    .locals 0

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->stats()Lnet/rtccloud/sdk/Call$Stats;

    move-result-object p0

    return-object p0
.end method

.method public dump()Ljava/nio/ByteBuffer;
    .locals 0

    invoke-static {}, Lnet/rtccloud/sdk/Jni;->nDumpStats()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public networkLatency()I
    .locals 4

    invoke-static {}, Lnet/rtccloud/sdk/Jni;->nGetNetworkLatency()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public realTimePlatformName()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lnet/rtccloud/sdk/Jni;->nGetRealtimePlatformName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
