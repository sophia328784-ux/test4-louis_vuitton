.class public final enum Lorg/squirrelframework/foundation/fsm/StateMachineStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/squirrelframework/foundation/fsm/StateMachineStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

.field public static final enum BUSY:Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

.field public static final enum ERROR:Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

.field public static final enum IDLE:Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

.field public static final enum INITIALIZED:Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

.field public static final enum TERMINATED:Lorg/squirrelframework/foundation/fsm/StateMachineStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    const-string v1, "INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/squirrelframework/foundation/fsm/StateMachineStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/squirrelframework/foundation/fsm/StateMachineStatus;->INITIALIZED:Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    new-instance v1, Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    const-string v2, "IDLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/squirrelframework/foundation/fsm/StateMachineStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/squirrelframework/foundation/fsm/StateMachineStatus;->IDLE:Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    new-instance v2, Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    const-string v3, "BUSY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/squirrelframework/foundation/fsm/StateMachineStatus;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/squirrelframework/foundation/fsm/StateMachineStatus;->BUSY:Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    new-instance v3, Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    const-string v4, "TERMINATED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/squirrelframework/foundation/fsm/StateMachineStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/squirrelframework/foundation/fsm/StateMachineStatus;->TERMINATED:Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    new-instance v4, Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    const-string v5, "ERROR"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/squirrelframework/foundation/fsm/StateMachineStatus;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/squirrelframework/foundation/fsm/StateMachineStatus;->ERROR:Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    move-result-object v0

    sput-object v0, Lorg/squirrelframework/foundation/fsm/StateMachineStatus;->$VALUES:[Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

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

.method public static valueOf(Ljava/lang/String;)Lorg/squirrelframework/foundation/fsm/StateMachineStatus;
    .locals 1

    const-class v0, Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    return-object p0
.end method

.method public static values()[Lorg/squirrelframework/foundation/fsm/StateMachineStatus;
    .locals 1

    sget-object v0, Lorg/squirrelframework/foundation/fsm/StateMachineStatus;->$VALUES:[Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    invoke-virtual {v0}, [Lorg/squirrelframework/foundation/fsm/StateMachineStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/squirrelframework/foundation/fsm/StateMachineStatus;

    return-object v0
.end method
