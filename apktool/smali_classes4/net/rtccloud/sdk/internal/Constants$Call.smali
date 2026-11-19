.class public final Lnet/rtccloud/sdk/internal/Constants$Call;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/internal/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Call"
.end annotation


# static fields
.field public static final AUDIO_START:I = 0x9103

.field public static final AUDIO_STOP:I = 0x9104

.field public static final CALL_CAPABILITIES_NGASVG:I = 0x400

.field public static final CALL_CREATED:I = 0x6100

.field public static final CALL_NETWORK_EVENTS:I = 0x7600

.field public static final CALL_REMOTE_NETWORK_EVENTS:I = 0x7610

.field public static final CALL_STATUS:I = 0x7100

.field public static final CAPABILITIES_NGA:I = 0x200

.field public static final CONFERENCE_TRANSLATION:I = 0x7203

.field public static final FLOORLIST:I = 0x7200

.field public static final PARTICIPANTCHANGE:I = 0x7202

.field public static final PARTICIPANTLIST:I = 0x7201

.field public static final REMOTECAPS:I = 0x7500

.field public static final SHARE_START:I = 0x9303

.field public static final SHARE_STOP:I = 0x9304

.field public static final SIP_ID:I = 0x7300

.field public static final TESTCALLSTATS:I = 0x7700

.field public static final VIDEO_PROFILE:I = 0x9210

.field public static final VIDEO_START:I = 0x9230

.field public static final VIDEO_STOP:I = 0x9240


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static valueOf(I)Ljava/lang/String;
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :sswitch_0
    const-string p0, "SHARE_STOP"

    return-object p0

    :sswitch_1
    const-string p0, "SHARE_START"

    return-object p0

    :sswitch_2
    const-string p0, "VIDEO_STOP"

    return-object p0

    :sswitch_3
    const-string p0, "VIDEO_START"

    return-object p0

    :sswitch_4
    const-string p0, "VIDEO_PROFILE"

    return-object p0

    :sswitch_5
    const-string p0, "TESTCALLSTATS"

    return-object p0

    :sswitch_6
    const-string p0, "REMOTECAPS"

    return-object p0

    :sswitch_7
    const-string p0, "SIP_ID"

    return-object p0

    :sswitch_8
    const-string p0, "PARTICIPANTCHANGE"

    return-object p0

    :sswitch_9
    const-string p0, "PARTICIPANTLIST"

    return-object p0

    :sswitch_a
    const-string p0, "FLOORLIST"

    return-object p0

    :sswitch_b
    const-string p0, "CALL_STATUS"

    return-object p0

    :sswitch_c
    const-string p0, "CALL_CREATED"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x6100 -> :sswitch_c
        0x7100 -> :sswitch_b
        0x7200 -> :sswitch_a
        0x7201 -> :sswitch_9
        0x7202 -> :sswitch_8
        0x7300 -> :sswitch_7
        0x7500 -> :sswitch_6
        0x7700 -> :sswitch_5
        0x9210 -> :sswitch_4
        0x9230 -> :sswitch_3
        0x9240 -> :sswitch_2
        0x9303 -> :sswitch_1
        0x9304 -> :sswitch_0
    .end sparse-switch
.end method
