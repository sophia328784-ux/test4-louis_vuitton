.class public final Lnet/rtccloud/sdk/di/DaggerRtccComponent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/rtccloud/sdk/di/DaggerRtccComponent$Builder;,
        Lnet/rtccloud/sdk/di/DaggerRtccComponent$RtccComponentImpl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lnet/rtccloud/sdk/di/DaggerRtccComponent$Builder;
    .locals 2

    new-instance v0, Lnet/rtccloud/sdk/di/DaggerRtccComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/rtccloud/sdk/di/DaggerRtccComponent$Builder;-><init>(I)V

    return-object v0
.end method
