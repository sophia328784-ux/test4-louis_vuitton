.class public final Lnet/rtccloud/sdk/internal/Constants$DataChannelType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/internal/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataChannelType"
.end annotation


# static fields
.field public static final ACK:I = 0x2030

.field public static final IN_BAND:I = 0x2010

.field public static final OUT_OF_BAND:I = 0x2000


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static valueOf(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x2000

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2010

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2030

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "ACK"

    return-object p0

    :cond_1
    const-string p0, "IN_BAND"

    return-object p0

    :cond_2
    const-string p0, "OUT_OF_BAND"

    return-object p0
.end method
