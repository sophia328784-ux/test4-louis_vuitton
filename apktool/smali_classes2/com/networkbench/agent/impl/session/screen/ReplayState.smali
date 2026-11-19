.class public final enum Lcom/networkbench/agent/impl/session/screen/ReplayState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/networkbench/agent/impl/session/screen/ReplayState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/networkbench/agent/impl/session/screen/ReplayState;

.field public static final enum REPLAY_STATE_EMPTY:Lcom/networkbench/agent/impl/session/screen/ReplayState;

.field public static final enum REPLAY_STATE_PAUSE:Lcom/networkbench/agent/impl/session/screen/ReplayState;

.field public static final enum REPLAY_STATE_RESUME:Lcom/networkbench/agent/impl/session/screen/ReplayState;

.field public static final enum REPLAY_STATE_START:Lcom/networkbench/agent/impl/session/screen/ReplayState;

.field public static final enum REPLAY_STATE_STOP:Lcom/networkbench/agent/impl/session/screen/ReplayState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/networkbench/agent/impl/session/screen/ReplayState;

    const-string v1, "REPLAY_STATE_EMPTY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/networkbench/agent/impl/session/screen/ReplayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/networkbench/agent/impl/session/screen/ReplayState;->REPLAY_STATE_EMPTY:Lcom/networkbench/agent/impl/session/screen/ReplayState;

    new-instance v1, Lcom/networkbench/agent/impl/session/screen/ReplayState;

    const-string v2, "REPLAY_STATE_START"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/networkbench/agent/impl/session/screen/ReplayState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/networkbench/agent/impl/session/screen/ReplayState;->REPLAY_STATE_START:Lcom/networkbench/agent/impl/session/screen/ReplayState;

    new-instance v2, Lcom/networkbench/agent/impl/session/screen/ReplayState;

    const-string v3, "REPLAY_STATE_PAUSE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/networkbench/agent/impl/session/screen/ReplayState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/networkbench/agent/impl/session/screen/ReplayState;->REPLAY_STATE_PAUSE:Lcom/networkbench/agent/impl/session/screen/ReplayState;

    new-instance v3, Lcom/networkbench/agent/impl/session/screen/ReplayState;

    const-string v4, "REPLAY_STATE_RESUME"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/networkbench/agent/impl/session/screen/ReplayState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/networkbench/agent/impl/session/screen/ReplayState;->REPLAY_STATE_RESUME:Lcom/networkbench/agent/impl/session/screen/ReplayState;

    new-instance v4, Lcom/networkbench/agent/impl/session/screen/ReplayState;

    const-string v5, "REPLAY_STATE_STOP"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/networkbench/agent/impl/session/screen/ReplayState;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/networkbench/agent/impl/session/screen/ReplayState;->REPLAY_STATE_STOP:Lcom/networkbench/agent/impl/session/screen/ReplayState;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/networkbench/agent/impl/session/screen/ReplayState;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/session/screen/ReplayState;->$VALUES:[Lcom/networkbench/agent/impl/session/screen/ReplayState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/networkbench/agent/impl/session/screen/ReplayState;
    .locals 1

    const-class v0, Lcom/networkbench/agent/impl/session/screen/ReplayState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/session/screen/ReplayState;

    return-object p0
.end method

.method public static values()[Lcom/networkbench/agent/impl/session/screen/ReplayState;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/session/screen/ReplayState;->$VALUES:[Lcom/networkbench/agent/impl/session/screen/ReplayState;

    invoke-virtual {v0}, [Lcom/networkbench/agent/impl/session/screen/ReplayState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/networkbench/agent/impl/session/screen/ReplayState;

    return-object v0
.end method
