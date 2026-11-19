.class final enum Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FsmState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;

.field public static final enum DONE:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;

.field public static final enum ERROR:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;

.field public static final enum REQUEST_PAGE_TRANSFER:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;

.field public static final enum TRANSFER_DONE:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;

.field public static final enum TRANSFER_KO:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;

.field public static final enum TRANSFER_VALIDATING:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;

.field public static final enum TRIGGER_START_PACKET:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;

.field public static final enum WAITING_FOR_USER_VALIDATION:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;


# direct methods
.method private static synthetic $values()[Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;
    .locals 8

    sget-object v0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;->ERROR:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;

    sget-object v1, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;->DONE:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;

    sget-object v2, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;->TRIGGER_START_PACKET:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;

    sget-object v3, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;->REQUEST_PAGE_TRANSFER:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;

    sget-object v4, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;->TRANSFER_VALIDATING:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;

    sget-object v5, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;->WAITING_FOR_USER_VALIDATION:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;

    sget-object v6, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;->TRANSFER_KO:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;

    sget-object v7, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;->TRANSFER_DONE:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;

    filled-new-array/range {v0 .. v7}, [Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;

    const-string v1, "ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;->ERROR:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;

    new-instance v0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;

    const-string v1, "DONE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;->DONE:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;

    new-instance v0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;

    const-string v1, "TRIGGER_START_PACKET"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;->TRIGGER_START_PACKET:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;

    new-instance v0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;

    const-string v1, "REQUEST_PAGE_TRANSFER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;->REQUEST_PAGE_TRANSFER:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;

    new-instance v0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;

    const-string v1, "TRANSFER_VALIDATING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;->TRANSFER_VALIDATING:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;

    new-instance v0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;

    const-string v1, "WAITING_FOR_USER_VALIDATION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;->WAITING_FOR_USER_VALIDATION:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;

    new-instance v0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;

    const-string v1, "TRANSFER_KO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;->TRANSFER_KO:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;

    new-instance v0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;

    const-string v1, "TRANSFER_DONE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;->TRANSFER_DONE:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;

    invoke-static {}, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;->$values()[Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;

    move-result-object v0

    sput-object v0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;->$VALUES:[Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;
    .locals 1

    const-class v0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;

    return-object p0
.end method

.method public static values()[Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;
    .locals 1

    sget-object v0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;->$VALUES:[Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;

    invoke-virtual {v0}, [Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmState;

    return-object v0
.end method
