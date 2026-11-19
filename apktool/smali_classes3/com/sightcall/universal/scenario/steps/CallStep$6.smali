.class synthetic Lcom/sightcall/universal/scenario/steps/CallStep$6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/scenario/steps/CallStep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sightcall$common$DataChannelAction:[I

.field static final synthetic $SwitchMap$com$sightcall$universal$agent$Usecase$ActiveSpeaker:[I

.field static final synthetic $SwitchMap$com$sightcall$universal$agent$Usecase$VideoCapture:[I

.field static final synthetic $SwitchMap$com$sightcall$universal$agent$Usecase$VideoProfile:[I

.field static final synthetic $SwitchMap$net$rtccloud$sdk$AudioModule$AudioRoute:[I

.field static final synthetic $SwitchMap$net$rtccloud$sdk$Call$Status:[I

.field static final synthetic $SwitchMap$net$rtccloud$sdk$Rtcc$Status:[I

.field static final synthetic $SwitchMap$net$rtccloud$sdk$VideoModule$Profile:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    invoke-static {}, Lcom/sightcall/universal/agent/Usecase$ActiveSpeaker;->values()[Lcom/sightcall/universal/agent/Usecase$ActiveSpeaker;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$com$sightcall$universal$agent$Usecase$ActiveSpeaker:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/sightcall/universal/agent/Usecase$ActiveSpeaker;->HOST:Lcom/sightcall/universal/agent/Usecase$ActiveSpeaker;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$com$sightcall$universal$agent$Usecase$ActiveSpeaker:[I

    sget-object v3, Lcom/sightcall/universal/agent/Usecase$ActiveSpeaker;->GUEST:Lcom/sightcall/universal/agent/Usecase$ActiveSpeaker;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    invoke-static {}, Lcom/sightcall/common/DataChannelAction;->values()[Lcom/sightcall/common/DataChannelAction;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$com$sightcall$common$DataChannelAction:[I

    :try_start_2
    sget-object v3, Lcom/sightcall/common/DataChannelAction;->PROPOSITION:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$com$sightcall$common$DataChannelAction:[I

    sget-object v3, Lcom/sightcall/common/DataChannelAction;->SWITCH_REQUEST:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v2, 0x3

    :try_start_4
    sget-object v3, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$com$sightcall$common$DataChannelAction:[I

    sget-object v4, Lcom/sightcall/common/DataChannelAction;->SWITCH_CANCEL:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v3, 0x4

    :try_start_5
    sget-object v4, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$com$sightcall$common$DataChannelAction:[I

    sget-object v5, Lcom/sightcall/common/DataChannelAction;->SWITCH_ACK:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v4, 0x5

    :try_start_6
    sget-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$com$sightcall$common$DataChannelAction:[I

    sget-object v6, Lcom/sightcall/common/DataChannelAction;->CAPABILITIES_REQUEST:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$com$sightcall$common$DataChannelAction:[I

    sget-object v6, Lcom/sightcall/common/DataChannelAction;->CAPABILITIES_CANCEL:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x6

    aput v7, v5, v6
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$com$sightcall$common$DataChannelAction:[I

    sget-object v6, Lcom/sightcall/common/DataChannelAction;->MESSAGING:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x7

    aput v7, v5, v6
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$com$sightcall$common$DataChannelAction:[I

    sget-object v6, Lcom/sightcall/common/DataChannelAction;->VIDEO_ANNOTATION:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x8

    aput v7, v5, v6
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$com$sightcall$common$DataChannelAction:[I

    sget-object v6, Lcom/sightcall/common/DataChannelAction;->STOP_MUTE:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x9

    aput v7, v5, v6
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$com$sightcall$common$DataChannelAction:[I

    sget-object v6, Lcom/sightcall/common/DataChannelAction;->ANNOTATION_REQUEST:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0xa

    aput v7, v5, v6
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$com$sightcall$common$DataChannelAction:[I

    sget-object v6, Lcom/sightcall/common/DataChannelAction;->START_HOLD:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0xb

    aput v7, v5, v6
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$com$sightcall$common$DataChannelAction:[I

    sget-object v6, Lcom/sightcall/common/DataChannelAction;->STOP_HOLD:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0xc

    aput v7, v5, v6
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$com$sightcall$common$DataChannelAction:[I

    sget-object v6, Lcom/sightcall/common/DataChannelAction;->SNAPSHOT:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0xd

    aput v7, v5, v6
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$com$sightcall$common$DataChannelAction:[I

    sget-object v6, Lcom/sightcall/common/DataChannelAction;->ZOOM_CAMERA:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0xe

    aput v7, v5, v6
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$com$sightcall$common$DataChannelAction:[I

    sget-object v6, Lcom/sightcall/common/DataChannelAction;->GET_IP_ADDRESS:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0xf

    aput v7, v5, v6
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$com$sightcall$common$DataChannelAction:[I

    sget-object v6, Lcom/sightcall/common/DataChannelAction;->IP_ADDRESS:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x10

    aput v7, v5, v6
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$com$sightcall$common$DataChannelAction:[I

    sget-object v6, Lcom/sightcall/common/DataChannelAction;->PROPERTIES:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x11

    aput v7, v5, v6
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$com$sightcall$common$DataChannelAction:[I

    sget-object v6, Lcom/sightcall/common/DataChannelAction;->REQUEST_GEOLOCATION:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x12

    aput v7, v5, v6
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$com$sightcall$common$DataChannelAction:[I

    sget-object v6, Lcom/sightcall/common/DataChannelAction;->STOP_LOCATION:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x13

    aput v7, v5, v6
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$com$sightcall$common$DataChannelAction:[I

    sget-object v6, Lcom/sightcall/common/DataChannelAction;->GEOLOCATION_RESPONSE:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x14

    aput v7, v5, v6
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$com$sightcall$common$DataChannelAction:[I

    sget-object v6, Lcom/sightcall/common/DataChannelAction;->GET_STATE:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x15

    aput v7, v5, v6
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$com$sightcall$common$DataChannelAction:[I

    sget-object v6, Lcom/sightcall/common/DataChannelAction;->GET_DEVICE_STATUS:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x16

    aput v7, v5, v6
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$com$sightcall$common$DataChannelAction:[I

    sget-object v6, Lcom/sightcall/common/DataChannelAction;->START_SCREENCAST:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x17

    aput v7, v5, v6
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$com$sightcall$common$DataChannelAction:[I

    sget-object v6, Lcom/sightcall/common/DataChannelAction;->STOP_SCREENCAST:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x18

    aput v7, v5, v6
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$com$sightcall$common$DataChannelAction:[I

    sget-object v6, Lcom/sightcall/common/DataChannelAction;->STOP_PICTURE:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x19

    aput v7, v5, v6
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$com$sightcall$common$DataChannelAction:[I

    sget-object v6, Lcom/sightcall/common/DataChannelAction;->STOP_SHARE:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x1a

    aput v7, v5, v6
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$com$sightcall$common$DataChannelAction:[I

    sget-object v6, Lcom/sightcall/common/DataChannelAction;->START_COLLIMATOR:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x1b

    aput v7, v5, v6
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$com$sightcall$common$DataChannelAction:[I

    sget-object v6, Lcom/sightcall/common/DataChannelAction;->STOP_COLLIMATOR:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x1c

    aput v7, v5, v6
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$com$sightcall$common$DataChannelAction:[I

    sget-object v6, Lcom/sightcall/common/DataChannelAction;->USB_CAMERA_ENABLE:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x1d

    aput v7, v5, v6
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$com$sightcall$common$DataChannelAction:[I

    sget-object v6, Lcom/sightcall/common/DataChannelAction;->USB_CAMERA_DISABLE:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x1e

    aput v7, v5, v6
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$com$sightcall$common$DataChannelAction:[I

    sget-object v6, Lcom/sightcall/common/DataChannelAction;->AR_START:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x1f

    aput v7, v5, v6
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$com$sightcall$common$DataChannelAction:[I

    sget-object v6, Lcom/sightcall/common/DataChannelAction;->AR_STOP:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x20

    aput v7, v5, v6
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    invoke-static {}, Lnet/rtccloud/sdk/AudioModule$AudioRoute;->values()[Lnet/rtccloud/sdk/AudioModule$AudioRoute;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$net$rtccloud$sdk$AudioModule$AudioRoute:[I

    :try_start_22
    sget-object v6, Lnet/rtccloud/sdk/AudioModule$AudioRoute;->SPEAKER:Lnet/rtccloud/sdk/AudioModule$AudioRoute;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$net$rtccloud$sdk$AudioModule$AudioRoute:[I

    sget-object v6, Lnet/rtccloud/sdk/AudioModule$AudioRoute;->HEADSET:Lnet/rtccloud/sdk/AudioModule$AudioRoute;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    invoke-static {}, Lnet/rtccloud/sdk/VideoModule$Profile;->values()[Lnet/rtccloud/sdk/VideoModule$Profile;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$net$rtccloud$sdk$VideoModule$Profile:[I

    :try_start_24
    sget-object v6, Lnet/rtccloud/sdk/VideoModule$Profile;->VGA:Lnet/rtccloud/sdk/VideoModule$Profile;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    :try_start_25
    sget-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$net$rtccloud$sdk$VideoModule$Profile:[I

    sget-object v6, Lnet/rtccloud/sdk/VideoModule$Profile;->WVGA:Lnet/rtccloud/sdk/VideoModule$Profile;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    :catch_25
    :try_start_26
    sget-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$net$rtccloud$sdk$VideoModule$Profile:[I

    sget-object v6, Lnet/rtccloud/sdk/VideoModule$Profile;->HD_720:Lnet/rtccloud/sdk/VideoModule$Profile;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    :catch_26
    :try_start_27
    sget-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$net$rtccloud$sdk$VideoModule$Profile:[I

    sget-object v6, Lnet/rtccloud/sdk/VideoModule$Profile;->QCIF:Lnet/rtccloud/sdk/VideoModule$Profile;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v3, v5, v6
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    :catch_27
    :try_start_28
    sget-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$net$rtccloud$sdk$VideoModule$Profile:[I

    sget-object v6, Lnet/rtccloud/sdk/VideoModule$Profile;->QVGA:Lnet/rtccloud/sdk/VideoModule$Profile;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    :catch_28
    invoke-static {}, Lcom/sightcall/universal/agent/Usecase$VideoCapture;->values()[Lcom/sightcall/universal/agent/Usecase$VideoCapture;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$com$sightcall$universal$agent$Usecase$VideoCapture:[I

    :try_start_29
    sget-object v6, Lcom/sightcall/universal/agent/Usecase$VideoCapture;->FRONT:Lcom/sightcall/universal/agent/Usecase$VideoCapture;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    :catch_29
    :try_start_2a
    sget-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$com$sightcall$universal$agent$Usecase$VideoCapture:[I

    sget-object v6, Lcom/sightcall/universal/agent/Usecase$VideoCapture;->REAR:Lcom/sightcall/universal/agent/Usecase$VideoCapture;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    :catch_2a
    invoke-static {}, Lcom/sightcall/universal/agent/Usecase$VideoProfile;->values()[Lcom/sightcall/universal/agent/Usecase$VideoProfile;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$com$sightcall$universal$agent$Usecase$VideoProfile:[I

    :try_start_2b
    sget-object v6, Lcom/sightcall/universal/agent/Usecase$VideoProfile;->SD:Lcom/sightcall/universal/agent/Usecase$VideoProfile;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2c
    sget-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$com$sightcall$universal$agent$Usecase$VideoProfile:[I

    sget-object v6, Lcom/sightcall/universal/agent/Usecase$VideoProfile;->MD:Lcom/sightcall/universal/agent/Usecase$VideoProfile;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    :catch_2c
    invoke-static {}, Lnet/rtccloud/sdk/Call$Status;->values()[Lnet/rtccloud/sdk/Call$Status;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$net$rtccloud$sdk$Call$Status:[I

    :try_start_2d
    sget-object v6, Lnet/rtccloud/sdk/Call$Status;->CREATING:Lnet/rtccloud/sdk/Call$Status;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    :catch_2d
    :try_start_2e
    sget-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$net$rtccloud$sdk$Call$Status:[I

    sget-object v6, Lnet/rtccloud/sdk/Call$Status;->RINGING:Lnet/rtccloud/sdk/Call$Status;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2f
    sget-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$net$rtccloud$sdk$Call$Status:[I

    sget-object v6, Lnet/rtccloud/sdk/Call$Status;->PROCEEDING:Lnet/rtccloud/sdk/Call$Status;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    :catch_2f
    :try_start_30
    sget-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$net$rtccloud$sdk$Call$Status:[I

    sget-object v6, Lnet/rtccloud/sdk/Call$Status;->ACTIVE:Lnet/rtccloud/sdk/Call$Status;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v3, v5, v6
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_30

    :catch_30
    :try_start_31
    sget-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$net$rtccloud$sdk$Call$Status:[I

    sget-object v6, Lnet/rtccloud/sdk/Call$Status;->ENDED:Lnet/rtccloud/sdk/Call$Status;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    :catch_31
    invoke-static {}, Lnet/rtccloud/sdk/Rtcc$Status;->values()[Lnet/rtccloud/sdk/Rtcc$Status;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$net$rtccloud$sdk$Rtcc$Status:[I

    :try_start_32
    sget-object v6, Lnet/rtccloud/sdk/Rtcc$Status;->IDLE:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_32

    :catch_32
    :try_start_33
    sget-object v1, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$net$rtccloud$sdk$Rtcc$Status:[I

    sget-object v5, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTING:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v1, v5
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_33

    :catch_33
    :try_start_34
    sget-object v0, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$net$rtccloud$sdk$Rtcc$Status:[I

    sget-object v1, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_34

    :catch_34
    :try_start_35
    sget-object v0, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$net$rtccloud$sdk$Rtcc$Status:[I

    sget-object v1, Lnet/rtccloud/sdk/Rtcc$Status;->NETWORK_LOST:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_35

    :catch_35
    :try_start_36
    sget-object v0, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$net$rtccloud$sdk$Rtcc$Status:[I

    sget-object v1, Lnet/rtccloud/sdk/Rtcc$Status;->DISCONNECTING:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_36

    :catch_36
    return-void
.end method
