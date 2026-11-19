.class synthetic Lcom/sightcall/universal/scenario/steps/AcdRtccCallStep$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/scenario/steps/AcdRtccCallStep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$net$rtccloud$sdk$Rtcc$Status:[I

.field static final synthetic $SwitchMap$net$rtccloud$sdk$User$Status:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lnet/rtccloud/sdk/User$Status;->values()[Lnet/rtccloud/sdk/User$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sightcall/universal/scenario/steps/AcdRtccCallStep$1;->$SwitchMap$net$rtccloud$sdk$User$Status:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lnet/rtccloud/sdk/User$Status;->REGISTERED:Lnet/rtccloud/sdk/User$Status;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/sightcall/universal/scenario/steps/AcdRtccCallStep$1;->$SwitchMap$net$rtccloud$sdk$User$Status:[I

    sget-object v3, Lnet/rtccloud/sdk/User$Status;->NOT_REGISTERED:Lnet/rtccloud/sdk/User$Status;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    invoke-static {}, Lnet/rtccloud/sdk/Rtcc$Status;->values()[Lnet/rtccloud/sdk/Rtcc$Status;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/sightcall/universal/scenario/steps/AcdRtccCallStep$1;->$SwitchMap$net$rtccloud$sdk$Rtcc$Status:[I

    :try_start_2
    sget-object v3, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/sightcall/universal/scenario/steps/AcdRtccCallStep$1;->$SwitchMap$net$rtccloud$sdk$Rtcc$Status:[I

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->NETWORK_LOST:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
