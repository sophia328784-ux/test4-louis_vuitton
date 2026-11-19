.class public final enum Lcom/sightcall/universal/agent/Lead$Region;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/Lead;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Region"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sightcall/universal/agent/Lead$Region;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sightcall/universal/agent/Lead$Region;

.field public static final enum AMERICAS:Lcom/sightcall/universal/agent/Lead$Region;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "amer"
    .end annotation
.end field

.field public static final enum APAC:Lcom/sightcall/universal/agent/Lead$Region;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "apac"
    .end annotation
.end field

.field public static final enum EMEA:Lcom/sightcall/universal/agent/Lead$Region;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "emea"
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lcom/sightcall/universal/agent/Lead$Region;
    .locals 3

    sget-object v0, Lcom/sightcall/universal/agent/Lead$Region;->APAC:Lcom/sightcall/universal/agent/Lead$Region;

    sget-object v1, Lcom/sightcall/universal/agent/Lead$Region;->EMEA:Lcom/sightcall/universal/agent/Lead$Region;

    sget-object v2, Lcom/sightcall/universal/agent/Lead$Region;->AMERICAS:Lcom/sightcall/universal/agent/Lead$Region;

    filled-new-array {v0, v1, v2}, [Lcom/sightcall/universal/agent/Lead$Region;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sightcall/universal/agent/Lead$Region;

    const-string v1, "APAC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/agent/Lead$Region;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/agent/Lead$Region;->APAC:Lcom/sightcall/universal/agent/Lead$Region;

    new-instance v0, Lcom/sightcall/universal/agent/Lead$Region;

    const-string v1, "EMEA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/agent/Lead$Region;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/agent/Lead$Region;->EMEA:Lcom/sightcall/universal/agent/Lead$Region;

    new-instance v0, Lcom/sightcall/universal/agent/Lead$Region;

    const-string v1, "AMERICAS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/agent/Lead$Region;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/agent/Lead$Region;->AMERICAS:Lcom/sightcall/universal/agent/Lead$Region;

    invoke-static {}, Lcom/sightcall/universal/agent/Lead$Region;->$values()[Lcom/sightcall/universal/agent/Lead$Region;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/agent/Lead$Region;->$VALUES:[Lcom/sightcall/universal/agent/Lead$Region;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sightcall/universal/agent/Lead$Region;
    .locals 1

    const-class v0, Lcom/sightcall/universal/agent/Lead$Region;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/agent/Lead$Region;

    return-object p0
.end method

.method public static values()[Lcom/sightcall/universal/agent/Lead$Region;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/agent/Lead$Region;->$VALUES:[Lcom/sightcall/universal/agent/Lead$Region;

    invoke-virtual {v0}, [Lcom/sightcall/universal/agent/Lead$Region;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sightcall/universal/agent/Lead$Region;

    return-object v0
.end method
