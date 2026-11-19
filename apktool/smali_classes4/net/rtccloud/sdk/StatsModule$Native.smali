.class public interface abstract Lnet/rtccloud/sdk/StatsModule$Native;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/StatsModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Native"
.end annotation


# static fields
.field public static final JNI:Lnet/rtccloud/sdk/StatsModule$Native;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/rtccloud/sdk/StatsModule$Native$1;

    invoke-direct {v0}, Lnet/rtccloud/sdk/StatsModule$Native$1;-><init>()V

    sput-object v0, Lnet/rtccloud/sdk/StatsModule$Native;->JNI:Lnet/rtccloud/sdk/StatsModule$Native;

    return-void
.end method


# virtual methods
.method public abstract callStats(Lnet/rtccloud/sdk/Call;)Lnet/rtccloud/sdk/Call$Stats;
.end method

.method public abstract dump()Ljava/nio/ByteBuffer;
.end method

.method public abstract networkLatency()I
.end method

.method public abstract realTimePlatformName()Ljava/lang/String;
.end method
