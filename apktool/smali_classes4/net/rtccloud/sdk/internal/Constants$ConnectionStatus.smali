.class public final Lnet/rtccloud/sdk/internal/Constants$ConnectionStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/internal/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConnectionStatus"
.end annotation


# static fields
.field public static final AUTHENTICATED:I = 0x1160

.field public static final CONNECTED:I = 0x1120

.field public static final DISCONNECTED:I = 0x1110

.field public static final HAP_ERROR:I = 0x11a3

.field public static final SERVERUNREACHABLE:I = 0x1150

.field public static final SIP_NOK:I = 0x11c1

.field public static final SIP_OK:I = 0x11c0

.field public static final SPEEDTEST_ERROR:I = 0x11a4

.field public static final SPEEDTEST_OK:I = 0x11a7

.field public static final STATUS_CONNECTION_NOK:I = 0x1181

.field public static final STATUS_CONNECTION_OK:I = 0x1180


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static valueOf(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1110

    if-eq p0, v0, :cond_a

    const/16 v0, 0x1120

    if-eq p0, v0, :cond_9

    const/16 v0, 0x1150

    if-eq p0, v0, :cond_8

    const/16 v0, 0x1160

    if-eq p0, v0, :cond_7

    const/16 v0, 0x11a7

    if-eq p0, v0, :cond_6

    const/16 v0, 0x1180

    if-eq p0, v0, :cond_5

    const/16 v0, 0x1181

    if-eq p0, v0, :cond_4

    const/16 v0, 0x11a3

    if-eq p0, v0, :cond_3

    const/16 v0, 0x11a4

    if-eq p0, v0, :cond_2

    const/16 v0, 0x11c0

    if-eq p0, v0, :cond_1

    const/16 v0, 0x11c1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "SIP_NOK"

    return-object p0

    :cond_1
    const-string p0, "SIP_OK"

    return-object p0

    :cond_2
    const-string p0, "SPEEDTEST_ERROR"

    return-object p0

    :cond_3
    const-string p0, "HAP_ERROR"

    return-object p0

    :cond_4
    const-string p0, "STATUS_CONNECTION_NOK"

    return-object p0

    :cond_5
    const-string p0, "STATUS_CONNECTION_OK"

    return-object p0

    :cond_6
    const-string p0, "SPEEDTEST_OK"

    return-object p0

    :cond_7
    const-string p0, "AUTHENTICATED"

    return-object p0

    :cond_8
    const-string p0, "SERVERUNREACHABLE"

    return-object p0

    :cond_9
    const-string p0, "CONNECTED"

    return-object p0

    :cond_a
    const-string p0, "DISCONNECTED"

    return-object p0
.end method
