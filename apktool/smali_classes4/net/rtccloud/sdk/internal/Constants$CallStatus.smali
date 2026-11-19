.class public final Lnet/rtccloud/sdk/internal/Constants$CallStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/internal/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallStatus"
.end annotation


# static fields
.field public static final ACTIVE:I = 0x7130

.field public static final ACTIVE_DRIVER:I = 0x7132

.field public static final ACTIVE_WEBRTC:I = 0x7131

.field public static final DEAD_PARTY:I = 0x7142

.field public static final ENDED:I = 0x7140

.field public static final INCOMING:I = 0x7110

.field public static final JOINING_MVS:I = 0x7170

.field public static final LOCAL_ENDED:I = 0x7141

.field public static final PAUSED:I = 0x7160

.field public static final PEER_DISCONNECTED:I = 0x71c0

.field public static final PEER_RECONNECTED:I = 0x71c1

.field public static final PROCEEDING:I = 0x7150

.field public static final RECORD_BOOKMARKED:I = 0x71a2

.field public static final RECORD_PAUSED:I = 0x71a1

.field public static final RECORD_STARTED:I = 0x71a0

.field public static final RECORD_STOPPED:I = 0x71b0

.field public static final RINGING:I = 0x7120


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static valueOf(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x7110

    if-eq p0, v0, :cond_6

    const/16 v0, 0x7120

    if-eq p0, v0, :cond_5

    const/16 v0, 0x7150

    if-eq p0, v0, :cond_4

    const/16 v0, 0x7160

    if-eq p0, v0, :cond_3

    const/16 v0, 0x71b0

    if-eq p0, v0, :cond_2

    const/16 v0, 0x71a0

    if-eq p0, v0, :cond_1

    const/16 v0, 0x71a1

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "DEAD_PARTY"

    return-object p0

    :pswitch_1
    const-string p0, "LOCAL_ENDED"

    return-object p0

    :pswitch_2
    const-string p0, "ENDED"

    return-object p0

    :pswitch_3
    const-string p0, "ACTIVE_DRIVER"

    return-object p0

    :pswitch_4
    const-string p0, "ACTIVE_WEBRTC"

    return-object p0

    :pswitch_5
    const-string p0, "ACTIVE"

    return-object p0

    :cond_0
    const-string p0, "RECORD_PAUSED"

    return-object p0

    :cond_1
    const-string p0, "RECORD_STARTED"

    return-object p0

    :cond_2
    const-string p0, "RECORD_STOPPED"

    return-object p0

    :cond_3
    const-string p0, "PAUSED"

    return-object p0

    :cond_4
    const-string p0, "PROCEEDING"

    return-object p0

    :cond_5
    const-string p0, "RINGING"

    return-object p0

    :cond_6
    const-string p0, "INCOMING"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x7130
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7140
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
