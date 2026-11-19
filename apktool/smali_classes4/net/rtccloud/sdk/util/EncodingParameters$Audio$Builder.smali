.class public final Lnet/rtccloud/sdk/util/EncodingParameters$Audio$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/util/EncodingParameters$Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private opusBitrate:I

.field private opusComplexity:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lnet/rtccloud/sdk/util/EncodingParameters$Audio;
    .locals 3

    new-instance v0, Lnet/rtccloud/sdk/util/EncodingParameters$Audio;

    iget v1, p0, Lnet/rtccloud/sdk/util/EncodingParameters$Audio$Builder;->opusComplexity:I

    iget p0, p0, Lnet/rtccloud/sdk/util/EncodingParameters$Audio$Builder;->opusBitrate:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lnet/rtccloud/sdk/util/EncodingParameters$Audio;-><init>(III)V

    return-object v0
.end method

.method public opusBitrate(I)Lnet/rtccloud/sdk/util/EncodingParameters$Audio$Builder;
    .locals 0

    iput p1, p0, Lnet/rtccloud/sdk/util/EncodingParameters$Audio$Builder;->opusBitrate:I

    return-object p0
.end method

.method public opusComplexity(I)Lnet/rtccloud/sdk/util/EncodingParameters$Audio$Builder;
    .locals 0

    iput p1, p0, Lnet/rtccloud/sdk/util/EncodingParameters$Audio$Builder;->opusComplexity:I

    return-object p0
.end method
