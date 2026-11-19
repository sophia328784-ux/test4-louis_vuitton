.class public Lnet/rtccloud/sdk/StatsModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/rtccloud/sdk/StatsModule$Native;
    }
.end annotation


# instance fields
.field private final nativeInterface:Lnet/rtccloud/sdk/StatsModule$Native;

.field private final rtcc:Lnet/rtccloud/sdk/Rtcc;


# direct methods
.method public constructor <init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/StatsModule$Native;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/rtccloud/sdk/StatsModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iput-object p2, p0, Lnet/rtccloud/sdk/StatsModule;->nativeInterface:Lnet/rtccloud/sdk/StatsModule$Native;

    return-void
.end method


# virtual methods
.method public dump()Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/StatsModule;->nativeInterface:Lnet/rtccloud/sdk/StatsModule$Native;

    invoke-interface {p0}, Lnet/rtccloud/sdk/StatsModule$Native;->dump()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public networkLatency()I
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/StatsModule;->nativeInterface:Lnet/rtccloud/sdk/StatsModule$Native;

    invoke-interface {p0}, Lnet/rtccloud/sdk/StatsModule$Native;->networkLatency()I

    move-result p0

    return p0
.end method

.method public realTimePlatformName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/StatsModule;->nativeInterface:Lnet/rtccloud/sdk/StatsModule$Native;

    invoke-interface {p0}, Lnet/rtccloud/sdk/StatsModule$Native;->realTimePlatformName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public rtcc()Lnet/rtccloud/sdk/Rtcc;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/StatsModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    return-object p0
.end method

.method public stats(Lnet/rtccloud/sdk/Call;)Lnet/rtccloud/sdk/Call$Stats;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/StatsModule;->nativeInterface:Lnet/rtccloud/sdk/StatsModule$Native;

    invoke-interface {p0, p1}, Lnet/rtccloud/sdk/StatsModule$Native;->callStats(Lnet/rtccloud/sdk/Call;)Lnet/rtccloud/sdk/Call$Stats;

    move-result-object p0

    return-object p0
.end method
