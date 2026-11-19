.class public final Lnet/rtccloud/sdk/util/EncodingParameters$Video$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/util/EncodingParameters$Video;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private noiseSensitivity:Z

.field private threads:I

.field private vp8CpuUsage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x4

    iput v0, p0, Lnet/rtccloud/sdk/util/EncodingParameters$Video$Builder;->vp8CpuUsage:I

    const/4 v0, 0x0

    iput v0, p0, Lnet/rtccloud/sdk/util/EncodingParameters$Video$Builder;->threads:I

    iput-boolean v0, p0, Lnet/rtccloud/sdk/util/EncodingParameters$Video$Builder;->noiseSensitivity:Z

    return-void
.end method


# virtual methods
.method public build()Lnet/rtccloud/sdk/util/EncodingParameters$Video;
    .locals 3

    new-instance v0, Lnet/rtccloud/sdk/util/EncodingParameters$Video;

    iget v1, p0, Lnet/rtccloud/sdk/util/EncodingParameters$Video$Builder;->vp8CpuUsage:I

    iget v2, p0, Lnet/rtccloud/sdk/util/EncodingParameters$Video$Builder;->threads:I

    iget-boolean p0, p0, Lnet/rtccloud/sdk/util/EncodingParameters$Video$Builder;->noiseSensitivity:Z

    invoke-direct {v0, v1, v2, p0}, Lnet/rtccloud/sdk/util/EncodingParameters$Video;-><init>(IIZ)V

    return-object v0
.end method

.method public noiseSensitivity(Z)Lnet/rtccloud/sdk/util/EncodingParameters$Video$Builder;
    .locals 0

    iput-boolean p1, p0, Lnet/rtccloud/sdk/util/EncodingParameters$Video$Builder;->noiseSensitivity:Z

    return-object p0
.end method

.method public threads(I)Lnet/rtccloud/sdk/util/EncodingParameters$Video$Builder;
    .locals 0

    iput p1, p0, Lnet/rtccloud/sdk/util/EncodingParameters$Video$Builder;->threads:I

    return-object p0
.end method

.method public vp8CpuUsage(I)Lnet/rtccloud/sdk/util/EncodingParameters$Video$Builder;
    .locals 0

    iput p1, p0, Lnet/rtccloud/sdk/util/EncodingParameters$Video$Builder;->vp8CpuUsage:I

    return-object p0
.end method
