.class public final enum Lorg/squirrelframework/foundation/fsm/TransitionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/squirrelframework/foundation/fsm/TransitionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/squirrelframework/foundation/fsm/TransitionType;

.field public static final enum EXTERNAL:Lorg/squirrelframework/foundation/fsm/TransitionType;

.field public static final enum INTERNAL:Lorg/squirrelframework/foundation/fsm/TransitionType;

.field public static final enum LOCAL:Lorg/squirrelframework/foundation/fsm/TransitionType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/squirrelframework/foundation/fsm/TransitionType;

    const-string v1, "INTERNAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/squirrelframework/foundation/fsm/TransitionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/squirrelframework/foundation/fsm/TransitionType;->INTERNAL:Lorg/squirrelframework/foundation/fsm/TransitionType;

    new-instance v1, Lorg/squirrelframework/foundation/fsm/TransitionType;

    const-string v2, "LOCAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/squirrelframework/foundation/fsm/TransitionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/squirrelframework/foundation/fsm/TransitionType;->LOCAL:Lorg/squirrelframework/foundation/fsm/TransitionType;

    new-instance v2, Lorg/squirrelframework/foundation/fsm/TransitionType;

    const-string v3, "EXTERNAL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/squirrelframework/foundation/fsm/TransitionType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/squirrelframework/foundation/fsm/TransitionType;->EXTERNAL:Lorg/squirrelframework/foundation/fsm/TransitionType;

    filled-new-array {v0, v1, v2}, [Lorg/squirrelframework/foundation/fsm/TransitionType;

    move-result-object v0

    sput-object v0, Lorg/squirrelframework/foundation/fsm/TransitionType;->$VALUES:[Lorg/squirrelframework/foundation/fsm/TransitionType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/squirrelframework/foundation/fsm/TransitionType;
    .locals 1

    const-class v0, Lorg/squirrelframework/foundation/fsm/TransitionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/squirrelframework/foundation/fsm/TransitionType;

    return-object p0
.end method

.method public static values()[Lorg/squirrelframework/foundation/fsm/TransitionType;
    .locals 1

    sget-object v0, Lorg/squirrelframework/foundation/fsm/TransitionType;->$VALUES:[Lorg/squirrelframework/foundation/fsm/TransitionType;

    invoke-virtual {v0}, [Lorg/squirrelframework/foundation/fsm/TransitionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/squirrelframework/foundation/fsm/TransitionType;

    return-object v0
.end method
