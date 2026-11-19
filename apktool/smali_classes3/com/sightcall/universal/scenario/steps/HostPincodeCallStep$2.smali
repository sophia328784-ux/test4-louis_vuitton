.class synthetic Lcom/sightcall/universal/scenario/steps/HostPincodeCallStep$2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/scenario/steps/HostPincodeCallStep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$net$rtccloud$sdk$Call$Status:[I

.field static final synthetic $SwitchMap$net$rtccloud$sdk$MeetingPoint$Status:[I

.field static final synthetic $SwitchMap$net$rtccloud$sdk$event$meetingpoint$RequestEvent$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;->values()[Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sightcall/universal/scenario/steps/HostPincodeCallStep$2;->$SwitchMap$net$rtccloud$sdk$event$meetingpoint$RequestEvent$Type:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;->JOIN:Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/sightcall/universal/scenario/steps/HostPincodeCallStep$2;->$SwitchMap$net$rtccloud$sdk$event$meetingpoint$RequestEvent$Type:[I

    sget-object v2, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;->DENY:Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v0, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/sightcall/universal/scenario/steps/HostPincodeCallStep$2;->$SwitchMap$net$rtccloud$sdk$event$meetingpoint$RequestEvent$Type:[I

    sget-object v2, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;->CANCEL:Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v0, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    invoke-static {}, Lnet/rtccloud/sdk/MeetingPoint$Status;->values()[Lnet/rtccloud/sdk/MeetingPoint$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sightcall/universal/scenario/steps/HostPincodeCallStep$2;->$SwitchMap$net$rtccloud$sdk$MeetingPoint$Status:[I

    :try_start_3
    sget-object v2, Lnet/rtccloud/sdk/MeetingPoint$Status;->HOSTED:Lnet/rtccloud/sdk/MeetingPoint$Status;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    invoke-static {}, Lnet/rtccloud/sdk/Call$Status;->values()[Lnet/rtccloud/sdk/Call$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sightcall/universal/scenario/steps/HostPincodeCallStep$2;->$SwitchMap$net$rtccloud$sdk$Call$Status:[I

    :try_start_4
    sget-object v2, Lnet/rtccloud/sdk/Call$Status;->ENDED:Lnet/rtccloud/sdk/Call$Status;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
