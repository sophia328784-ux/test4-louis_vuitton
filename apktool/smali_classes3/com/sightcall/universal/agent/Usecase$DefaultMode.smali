.class public final enum Lcom/sightcall/universal/agent/Usecase$DefaultMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/Usecase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DefaultMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sightcall/universal/agent/Usecase$DefaultMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sightcall/universal/agent/Usecase$DefaultMode;

.field public static final enum APPOINTMENT:Lcom/sightcall/universal/agent/Usecase$DefaultMode;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "appointment"
    .end annotation
.end field

.field public static final enum CODE:Lcom/sightcall/universal/agent/Usecase$DefaultMode;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "code"
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lcom/sightcall/universal/agent/Usecase$DefaultMode;
    .locals 2

    sget-object v0, Lcom/sightcall/universal/agent/Usecase$DefaultMode;->CODE:Lcom/sightcall/universal/agent/Usecase$DefaultMode;

    sget-object v1, Lcom/sightcall/universal/agent/Usecase$DefaultMode;->APPOINTMENT:Lcom/sightcall/universal/agent/Usecase$DefaultMode;

    filled-new-array {v0, v1}, [Lcom/sightcall/universal/agent/Usecase$DefaultMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sightcall/universal/agent/Usecase$DefaultMode;

    const-string v1, "CODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/agent/Usecase$DefaultMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/agent/Usecase$DefaultMode;->CODE:Lcom/sightcall/universal/agent/Usecase$DefaultMode;

    new-instance v0, Lcom/sightcall/universal/agent/Usecase$DefaultMode;

    const-string v1, "APPOINTMENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/agent/Usecase$DefaultMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/agent/Usecase$DefaultMode;->APPOINTMENT:Lcom/sightcall/universal/agent/Usecase$DefaultMode;

    invoke-static {}, Lcom/sightcall/universal/agent/Usecase$DefaultMode;->$values()[Lcom/sightcall/universal/agent/Usecase$DefaultMode;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/agent/Usecase$DefaultMode;->$VALUES:[Lcom/sightcall/universal/agent/Usecase$DefaultMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sightcall/universal/agent/Usecase$DefaultMode;
    .locals 1

    const-class v0, Lcom/sightcall/universal/agent/Usecase$DefaultMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/agent/Usecase$DefaultMode;

    return-object p0
.end method

.method public static values()[Lcom/sightcall/universal/agent/Usecase$DefaultMode;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/agent/Usecase$DefaultMode;->$VALUES:[Lcom/sightcall/universal/agent/Usecase$DefaultMode;

    invoke-virtual {v0}, [Lcom/sightcall/universal/agent/Usecase$DefaultMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sightcall/universal/agent/Usecase$DefaultMode;

    return-object v0
.end method
