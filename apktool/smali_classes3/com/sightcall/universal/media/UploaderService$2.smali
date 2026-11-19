.class synthetic Lcom/sightcall/universal/media/UploaderService$2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/media/UploaderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sightcall$universal$scenario$Scenario$Status:[I

.field static final synthetic $SwitchMap$net$rtccloud$sdk$Call$Status:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lnet/rtccloud/sdk/Call$Status;->values()[Lnet/rtccloud/sdk/Call$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sightcall/universal/media/UploaderService$2;->$SwitchMap$net$rtccloud$sdk$Call$Status:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lnet/rtccloud/sdk/Call$Status;->CREATING:Lnet/rtccloud/sdk/Call$Status;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {}, Lcom/sightcall/universal/scenario/Scenario$Status;->values()[Lcom/sightcall/universal/scenario/Scenario$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sightcall/universal/media/UploaderService$2;->$SwitchMap$com$sightcall$universal$scenario$Scenario$Status:[I

    :try_start_1
    sget-object v2, Lcom/sightcall/universal/scenario/Scenario$Status;->ACTIVE:Lcom/sightcall/universal/scenario/Scenario$Status;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
