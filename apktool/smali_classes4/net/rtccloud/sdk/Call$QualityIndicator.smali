.class public Lnet/rtccloud/sdk/Call$QualityIndicator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QualityIndicator"
.end annotation


# instance fields
.field public final local:I

.field public final remote:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/rtccloud/sdk/Call$QualityIndicator;->local:I

    iput p2, p0, Lnet/rtccloud/sdk/Call$QualityIndicator;->remote:I

    return-void
.end method

.method public static create(II)Lnet/rtccloud/sdk/Call$QualityIndicator;
    .locals 1

    new-instance v0, Lnet/rtccloud/sdk/Call$QualityIndicator;

    invoke-direct {v0, p0, p1}, Lnet/rtccloud/sdk/Call$QualityIndicator;-><init>(II)V

    return-object v0
.end method
