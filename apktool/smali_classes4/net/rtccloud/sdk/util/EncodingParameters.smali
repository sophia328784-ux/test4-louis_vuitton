.class public final Lnet/rtccloud/sdk/util/EncodingParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/rtccloud/sdk/util/EncodingParameters$Audio;,
        Lnet/rtccloud/sdk/util/EncodingParameters$Video;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static audio()Lnet/rtccloud/sdk/util/EncodingParameters$Audio$Builder;
    .locals 1

    new-instance v0, Lnet/rtccloud/sdk/util/EncodingParameters$Audio$Builder;

    invoke-direct {v0}, Lnet/rtccloud/sdk/util/EncodingParameters$Audio$Builder;-><init>()V

    return-object v0
.end method

.method public static video()Lnet/rtccloud/sdk/util/EncodingParameters$Video$Builder;
    .locals 1

    new-instance v0, Lnet/rtccloud/sdk/util/EncodingParameters$Video$Builder;

    invoke-direct {v0}, Lnet/rtccloud/sdk/util/EncodingParameters$Video$Builder;-><init>()V

    return-object v0
.end method
