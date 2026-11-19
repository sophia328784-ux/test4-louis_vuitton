.class final enum Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FsmEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

.field public static final enum DEAD_TIMEOUT:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

.field public static final enum FUTURE_PAGE_RECEIVED:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

.field public static final enum REPEAT_TIMEOUT:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

.field public static final enum START_PACKET_RECEIVED:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

.field public static final enum STATUS_DONE_RECEIVED:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

.field public static final enum STATUS_KO_RECEIVED:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

.field public static final enum STATUS_VALIDATING_RECEIVED:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

.field public static final enum TRANSFER_CANCELED:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

.field public static final enum TRANSFER_CONFIRMED:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

.field public static final enum WANTED_PAGE_RECEIVED:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;


# direct methods
.method private static synthetic $values()[Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;
    .locals 10

    sget-object v0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;->REPEAT_TIMEOUT:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

    sget-object v1, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;->DEAD_TIMEOUT:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

    sget-object v2, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;->TRANSFER_CANCELED:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

    sget-object v3, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;->TRANSFER_CONFIRMED:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

    sget-object v4, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;->START_PACKET_RECEIVED:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

    sget-object v5, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;->WANTED_PAGE_RECEIVED:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

    sget-object v6, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;->FUTURE_PAGE_RECEIVED:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

    sget-object v7, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;->STATUS_KO_RECEIVED:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

    sget-object v8, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;->STATUS_VALIDATING_RECEIVED:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

    sget-object v9, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;->STATUS_DONE_RECEIVED:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

    filled-new-array/range {v0 .. v9}, [Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

    const-string v1, "REPEAT_TIMEOUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;->REPEAT_TIMEOUT:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

    new-instance v0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

    const-string v1, "DEAD_TIMEOUT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;->DEAD_TIMEOUT:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

    new-instance v0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

    const-string v1, "TRANSFER_CANCELED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;->TRANSFER_CANCELED:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

    new-instance v0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

    const-string v1, "TRANSFER_CONFIRMED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;->TRANSFER_CONFIRMED:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

    new-instance v0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

    const-string v1, "START_PACKET_RECEIVED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;->START_PACKET_RECEIVED:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

    new-instance v0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

    const-string v1, "WANTED_PAGE_RECEIVED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;->WANTED_PAGE_RECEIVED:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

    new-instance v0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

    const-string v1, "FUTURE_PAGE_RECEIVED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;->FUTURE_PAGE_RECEIVED:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

    new-instance v0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

    const-string v1, "STATUS_KO_RECEIVED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;->STATUS_KO_RECEIVED:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

    new-instance v0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

    const-string v1, "STATUS_VALIDATING_RECEIVED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;->STATUS_VALIDATING_RECEIVED:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

    new-instance v0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

    const-string v1, "STATUS_DONE_RECEIVED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;->STATUS_DONE_RECEIVED:Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

    invoke-static {}, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;->$values()[Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

    move-result-object v0

    sput-object v0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;->$VALUES:[Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;
    .locals 1

    const-class v0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

    return-object p0
.end method

.method public static values()[Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;
    .locals 1

    sget-object v0, Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;->$VALUES:[Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

    invoke-virtual {v0}, [Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lightup/sdk/device/features/process/datadownload/DataPullStateMachine$FsmEvent;

    return-object v0
.end method
