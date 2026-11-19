.class public final Lnet/rtccloud/sdk/util/EncodingParameters$Audio;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/util/EncodingParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Audio"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/rtccloud/sdk/util/EncodingParameters$Audio$Builder;
    }
.end annotation


# instance fields
.field private final opusBitrate:I

.field private final opusComplexity:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/rtccloud/sdk/util/EncodingParameters$Audio;->opusComplexity:I

    iput p2, p0, Lnet/rtccloud/sdk/util/EncodingParameters$Audio;->opusBitrate:I

    return-void
.end method

.method public synthetic constructor <init>(III)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lnet/rtccloud/sdk/util/EncodingParameters$Audio;-><init>(II)V

    return-void
.end method


# virtual methods
.method public opusBitrate()I
    .locals 0

    iget p0, p0, Lnet/rtccloud/sdk/util/EncodingParameters$Audio;->opusBitrate:I

    return p0
.end method

.method public opusComplexity()I
    .locals 0

    iget p0, p0, Lnet/rtccloud/sdk/util/EncodingParameters$Audio;->opusComplexity:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Audio{opusComplexity="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lnet/rtccloud/sdk/util/EncodingParameters$Audio;->opusComplexity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", opusBitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lnet/rtccloud/sdk/util/EncodingParameters$Audio;->opusBitrate:I

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
