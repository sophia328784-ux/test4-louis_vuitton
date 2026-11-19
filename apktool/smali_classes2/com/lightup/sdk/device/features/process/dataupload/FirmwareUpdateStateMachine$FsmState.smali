.class final enum Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FsmState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

.field public static final enum DONE:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

.field public static final enum ERROR:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

.field public static final enum IN_BOOTLOADER_WAITING_FOR_DOWNLOAD_REQUEST:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

.field public static final enum IN_FIRMWARE_GOING_TO_BOOTLOADER_WAITING_FOR_LINK_DOWN:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

.field public static final enum START:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

.field public static final enum TRANSFERRING_FIRMWARE:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

.field public static final enum WAITING_FOR_LINK_DOWN:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

.field public static final enum WAITING_FOR_LINK_UP:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;


# direct methods
.method private static synthetic $values()[Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;
    .locals 8

    sget-object v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;->START:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

    sget-object v1, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;->ERROR:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

    sget-object v2, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;->DONE:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

    sget-object v3, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;->IN_FIRMWARE_GOING_TO_BOOTLOADER_WAITING_FOR_LINK_DOWN:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

    sget-object v4, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;->WAITING_FOR_LINK_UP:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

    sget-object v5, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;->IN_BOOTLOADER_WAITING_FOR_DOWNLOAD_REQUEST:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

    sget-object v6, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;->TRANSFERRING_FIRMWARE:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

    sget-object v7, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;->WAITING_FOR_LINK_DOWN:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

    filled-new-array/range {v0 .. v7}, [Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;->START:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

    new-instance v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

    const-string v1, "ERROR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;->ERROR:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

    new-instance v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

    const-string v1, "DONE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;->DONE:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

    new-instance v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

    const-string v1, "IN_FIRMWARE_GOING_TO_BOOTLOADER_WAITING_FOR_LINK_DOWN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;->IN_FIRMWARE_GOING_TO_BOOTLOADER_WAITING_FOR_LINK_DOWN:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

    new-instance v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

    const-string v1, "WAITING_FOR_LINK_UP"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;->WAITING_FOR_LINK_UP:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

    new-instance v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

    const-string v1, "IN_BOOTLOADER_WAITING_FOR_DOWNLOAD_REQUEST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;->IN_BOOTLOADER_WAITING_FOR_DOWNLOAD_REQUEST:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

    new-instance v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

    const-string v1, "TRANSFERRING_FIRMWARE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;->TRANSFERRING_FIRMWARE:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

    new-instance v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

    const-string v1, "WAITING_FOR_LINK_DOWN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;->WAITING_FOR_LINK_DOWN:Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

    invoke-static {}, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;->$values()[Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

    move-result-object v0

    sput-object v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;->$VALUES:[Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;
    .locals 1

    const-class v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

    return-object p0
.end method

.method public static values()[Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;
    .locals 1

    sget-object v0, Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;->$VALUES:[Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

    invoke-virtual {v0}, [Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lightup/sdk/device/features/process/dataupload/FirmwareUpdateStateMachine$FsmState;

    return-object v0
.end method
