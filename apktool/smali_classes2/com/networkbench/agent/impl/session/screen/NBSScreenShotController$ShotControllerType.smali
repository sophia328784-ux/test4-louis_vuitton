.class public final enum Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController$ShotControllerType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShotControllerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController$ShotControllerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController$ShotControllerType;

.field public static final enum GESTURE_SHOT_TYPE:Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController$ShotControllerType;

.field public static final enum SCREEN_SHOT_TYPE:Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController$ShotControllerType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController$ShotControllerType;

    const-string v1, "SCREEN_SHOT_TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController$ShotControllerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController$ShotControllerType;->SCREEN_SHOT_TYPE:Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController$ShotControllerType;

    new-instance v1, Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController$ShotControllerType;

    const-string v2, "GESTURE_SHOT_TYPE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController$ShotControllerType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController$ShotControllerType;->GESTURE_SHOT_TYPE:Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController$ShotControllerType;

    filled-new-array {v0, v1}, [Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController$ShotControllerType;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController$ShotControllerType;->$VALUES:[Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController$ShotControllerType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController$ShotControllerType;
    .locals 1

    const-class v0, Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController$ShotControllerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController$ShotControllerType;

    return-object p0
.end method

.method public static values()[Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController$ShotControllerType;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController$ShotControllerType;->$VALUES:[Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController$ShotControllerType;

    invoke-virtual {v0}, [Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController$ShotControllerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController$ShotControllerType;

    return-object v0
.end method
