.class public final enum Lcom/sightcall/universal/agent/Usecase$Survey$Mode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/Usecase$Survey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sightcall/universal/agent/Usecase$Survey$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sightcall/universal/agent/Usecase$Survey$Mode;

.field public static final enum AUTO:Lcom/sightcall/universal/agent/Usecase$Survey$Mode;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "auto"
    .end annotation
.end field

.field public static final enum MANUAL:Lcom/sightcall/universal/agent/Usecase$Survey$Mode;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "manual"
    .end annotation
.end field

.field public static final enum NONE:Lcom/sightcall/universal/agent/Usecase$Survey$Mode;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "none"
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lcom/sightcall/universal/agent/Usecase$Survey$Mode;
    .locals 3

    sget-object v0, Lcom/sightcall/universal/agent/Usecase$Survey$Mode;->MANUAL:Lcom/sightcall/universal/agent/Usecase$Survey$Mode;

    sget-object v1, Lcom/sightcall/universal/agent/Usecase$Survey$Mode;->AUTO:Lcom/sightcall/universal/agent/Usecase$Survey$Mode;

    sget-object v2, Lcom/sightcall/universal/agent/Usecase$Survey$Mode;->NONE:Lcom/sightcall/universal/agent/Usecase$Survey$Mode;

    filled-new-array {v0, v1, v2}, [Lcom/sightcall/universal/agent/Usecase$Survey$Mode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sightcall/universal/agent/Usecase$Survey$Mode;

    const-string v1, "MANUAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/agent/Usecase$Survey$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/agent/Usecase$Survey$Mode;->MANUAL:Lcom/sightcall/universal/agent/Usecase$Survey$Mode;

    new-instance v0, Lcom/sightcall/universal/agent/Usecase$Survey$Mode;

    const-string v1, "AUTO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/agent/Usecase$Survey$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/agent/Usecase$Survey$Mode;->AUTO:Lcom/sightcall/universal/agent/Usecase$Survey$Mode;

    new-instance v0, Lcom/sightcall/universal/agent/Usecase$Survey$Mode;

    const-string v1, "NONE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/agent/Usecase$Survey$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/agent/Usecase$Survey$Mode;->NONE:Lcom/sightcall/universal/agent/Usecase$Survey$Mode;

    invoke-static {}, Lcom/sightcall/universal/agent/Usecase$Survey$Mode;->$values()[Lcom/sightcall/universal/agent/Usecase$Survey$Mode;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/agent/Usecase$Survey$Mode;->$VALUES:[Lcom/sightcall/universal/agent/Usecase$Survey$Mode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sightcall/universal/agent/Usecase$Survey$Mode;
    .locals 1

    const-class v0, Lcom/sightcall/universal/agent/Usecase$Survey$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/agent/Usecase$Survey$Mode;

    return-object p0
.end method

.method public static values()[Lcom/sightcall/universal/agent/Usecase$Survey$Mode;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/agent/Usecase$Survey$Mode;->$VALUES:[Lcom/sightcall/universal/agent/Usecase$Survey$Mode;

    invoke-virtual {v0}, [Lcom/sightcall/universal/agent/Usecase$Survey$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sightcall/universal/agent/Usecase$Survey$Mode;

    return-object v0
.end method
