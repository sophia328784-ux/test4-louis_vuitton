.class synthetic Lcom/sightcall/universal/scenario/steps/GuestPincodeCallStep$2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/scenario/steps/GuestPincodeCallStep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sightcall$universal$guest$Calls$Action:[I

.field static final synthetic $SwitchMap$net$rtccloud$sdk$Call$Status:[I

.field static final synthetic $SwitchMap$net$rtccloud$sdk$event$meetingpoint$RequestEvent$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;->values()[Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sightcall/universal/scenario/steps/GuestPincodeCallStep$2;->$SwitchMap$net$rtccloud$sdk$event$meetingpoint$RequestEvent$Type:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;->JOIN:Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/sightcall/universal/scenario/steps/GuestPincodeCallStep$2;->$SwitchMap$net$rtccloud$sdk$event$meetingpoint$RequestEvent$Type:[I

    sget-object v3, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;->ACCEPT:Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, Lcom/sightcall/universal/scenario/steps/GuestPincodeCallStep$2;->$SwitchMap$net$rtccloud$sdk$event$meetingpoint$RequestEvent$Type:[I

    sget-object v3, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;->ACCEPTONETOONE:Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    invoke-static {}, Lnet/rtccloud/sdk/Call$Status;->values()[Lnet/rtccloud/sdk/Call$Status;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/sightcall/universal/scenario/steps/GuestPincodeCallStep$2;->$SwitchMap$net$rtccloud$sdk$Call$Status:[I

    :try_start_3
    sget-object v3, Lnet/rtccloud/sdk/Call$Status;->RINGING:Lnet/rtccloud/sdk/Call$Status;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    invoke-static {}, Lcom/sightcall/universal/guest/Calls$Action;->values()[Lcom/sightcall/universal/guest/Calls$Action;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/sightcall/universal/scenario/steps/GuestPincodeCallStep$2;->$SwitchMap$com$sightcall$universal$guest$Calls$Action:[I

    :try_start_4
    sget-object v3, Lcom/sightcall/universal/guest/Calls$Action;->WAIT:Lcom/sightcall/universal/guest/Calls$Action;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcom/sightcall/universal/scenario/steps/GuestPincodeCallStep$2;->$SwitchMap$com$sightcall$universal$guest$Calls$Action:[I

    sget-object v2, Lcom/sightcall/universal/guest/Calls$Action;->CALL:Lcom/sightcall/universal/guest/Calls$Action;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
