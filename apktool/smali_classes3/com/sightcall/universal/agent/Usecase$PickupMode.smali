.class public final enum Lcom/sightcall/universal/agent/Usecase$PickupMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/Usecase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PickupMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sightcall/universal/agent/Usecase$PickupMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sightcall/universal/agent/Usecase$PickupMode;

.field public static final enum AUTO:Lcom/sightcall/universal/agent/Usecase$PickupMode;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "auto"
    .end annotation
.end field

.field public static final enum CONFIRM:Lcom/sightcall/universal/agent/Usecase$PickupMode;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "confirm"
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lcom/sightcall/universal/agent/Usecase$PickupMode;
    .locals 2

    sget-object v0, Lcom/sightcall/universal/agent/Usecase$PickupMode;->AUTO:Lcom/sightcall/universal/agent/Usecase$PickupMode;

    sget-object v1, Lcom/sightcall/universal/agent/Usecase$PickupMode;->CONFIRM:Lcom/sightcall/universal/agent/Usecase$PickupMode;

    filled-new-array {v0, v1}, [Lcom/sightcall/universal/agent/Usecase$PickupMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sightcall/universal/agent/Usecase$PickupMode;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/agent/Usecase$PickupMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/agent/Usecase$PickupMode;->AUTO:Lcom/sightcall/universal/agent/Usecase$PickupMode;

    new-instance v0, Lcom/sightcall/universal/agent/Usecase$PickupMode;

    const-string v1, "CONFIRM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/agent/Usecase$PickupMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/agent/Usecase$PickupMode;->CONFIRM:Lcom/sightcall/universal/agent/Usecase$PickupMode;

    invoke-static {}, Lcom/sightcall/universal/agent/Usecase$PickupMode;->$values()[Lcom/sightcall/universal/agent/Usecase$PickupMode;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/agent/Usecase$PickupMode;->$VALUES:[Lcom/sightcall/universal/agent/Usecase$PickupMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sightcall/universal/agent/Usecase$PickupMode;
    .locals 1

    const-class v0, Lcom/sightcall/universal/agent/Usecase$PickupMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/agent/Usecase$PickupMode;

    return-object p0
.end method

.method public static values()[Lcom/sightcall/universal/agent/Usecase$PickupMode;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/agent/Usecase$PickupMode;->$VALUES:[Lcom/sightcall/universal/agent/Usecase$PickupMode;

    invoke-virtual {v0}, [Lcom/sightcall/universal/agent/Usecase$PickupMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sightcall/universal/agent/Usecase$PickupMode;

    return-object v0
.end method
