.class public final enum Lorg/squirrelframework/foundation/fsm/StateCompositeType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/squirrelframework/foundation/fsm/StateCompositeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/squirrelframework/foundation/fsm/StateCompositeType;

.field public static final enum PARALLEL:Lorg/squirrelframework/foundation/fsm/StateCompositeType;

.field public static final enum SEQUENTIAL:Lorg/squirrelframework/foundation/fsm/StateCompositeType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/squirrelframework/foundation/fsm/StateCompositeType;

    const-string v1, "SEQUENTIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/squirrelframework/foundation/fsm/StateCompositeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/squirrelframework/foundation/fsm/StateCompositeType;->SEQUENTIAL:Lorg/squirrelframework/foundation/fsm/StateCompositeType;

    new-instance v1, Lorg/squirrelframework/foundation/fsm/StateCompositeType;

    const-string v2, "PARALLEL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/squirrelframework/foundation/fsm/StateCompositeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/squirrelframework/foundation/fsm/StateCompositeType;->PARALLEL:Lorg/squirrelframework/foundation/fsm/StateCompositeType;

    filled-new-array {v0, v1}, [Lorg/squirrelframework/foundation/fsm/StateCompositeType;

    move-result-object v0

    sput-object v0, Lorg/squirrelframework/foundation/fsm/StateCompositeType;->$VALUES:[Lorg/squirrelframework/foundation/fsm/StateCompositeType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/squirrelframework/foundation/fsm/StateCompositeType;
    .locals 1

    const-class v0, Lorg/squirrelframework/foundation/fsm/StateCompositeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/squirrelframework/foundation/fsm/StateCompositeType;

    return-object p0
.end method

.method public static values()[Lorg/squirrelframework/foundation/fsm/StateCompositeType;
    .locals 1

    sget-object v0, Lorg/squirrelframework/foundation/fsm/StateCompositeType;->$VALUES:[Lorg/squirrelframework/foundation/fsm/StateCompositeType;

    invoke-virtual {v0}, [Lorg/squirrelframework/foundation/fsm/StateCompositeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/squirrelframework/foundation/fsm/StateCompositeType;

    return-object v0
.end method
