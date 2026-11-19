.class public final enum Lcom/sightcall/universal/agent/Usecase$CallDistribution;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/Usecase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallDistribution"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sightcall/universal/agent/Usecase$CallDistribution;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sightcall/universal/agent/Usecase$CallDistribution;

.field public static final enum ACD:Lcom/sightcall/universal/agent/Usecase$CallDistribution;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "acd"
    .end annotation
.end field

.field public static final enum CODE:Lcom/sightcall/universal/agent/Usecase$CallDistribution;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "code"
    .end annotation
.end field

.field public static final enum DIRECT:Lcom/sightcall/universal/agent/Usecase$CallDistribution;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "direct"
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lcom/sightcall/universal/agent/Usecase$CallDistribution;
    .locals 3

    sget-object v0, Lcom/sightcall/universal/agent/Usecase$CallDistribution;->DIRECT:Lcom/sightcall/universal/agent/Usecase$CallDistribution;

    sget-object v1, Lcom/sightcall/universal/agent/Usecase$CallDistribution;->CODE:Lcom/sightcall/universal/agent/Usecase$CallDistribution;

    sget-object v2, Lcom/sightcall/universal/agent/Usecase$CallDistribution;->ACD:Lcom/sightcall/universal/agent/Usecase$CallDistribution;

    filled-new-array {v0, v1, v2}, [Lcom/sightcall/universal/agent/Usecase$CallDistribution;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sightcall/universal/agent/Usecase$CallDistribution;

    const-string v1, "DIRECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/agent/Usecase$CallDistribution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/agent/Usecase$CallDistribution;->DIRECT:Lcom/sightcall/universal/agent/Usecase$CallDistribution;

    new-instance v0, Lcom/sightcall/universal/agent/Usecase$CallDistribution;

    const-string v1, "CODE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/agent/Usecase$CallDistribution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/agent/Usecase$CallDistribution;->CODE:Lcom/sightcall/universal/agent/Usecase$CallDistribution;

    new-instance v0, Lcom/sightcall/universal/agent/Usecase$CallDistribution;

    const-string v1, "ACD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/agent/Usecase$CallDistribution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/agent/Usecase$CallDistribution;->ACD:Lcom/sightcall/universal/agent/Usecase$CallDistribution;

    invoke-static {}, Lcom/sightcall/universal/agent/Usecase$CallDistribution;->$values()[Lcom/sightcall/universal/agent/Usecase$CallDistribution;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/agent/Usecase$CallDistribution;->$VALUES:[Lcom/sightcall/universal/agent/Usecase$CallDistribution;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sightcall/universal/agent/Usecase$CallDistribution;
    .locals 1

    const-class v0, Lcom/sightcall/universal/agent/Usecase$CallDistribution;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/agent/Usecase$CallDistribution;

    return-object p0
.end method

.method public static values()[Lcom/sightcall/universal/agent/Usecase$CallDistribution;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/agent/Usecase$CallDistribution;->$VALUES:[Lcom/sightcall/universal/agent/Usecase$CallDistribution;

    invoke-virtual {v0}, [Lcom/sightcall/universal/agent/Usecase$CallDistribution;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sightcall/universal/agent/Usecase$CallDistribution;

    return-object v0
.end method
