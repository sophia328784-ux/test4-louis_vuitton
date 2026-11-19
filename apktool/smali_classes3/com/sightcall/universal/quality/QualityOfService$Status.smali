.class public final enum Lcom/sightcall/universal/quality/QualityOfService$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/quality/QualityOfService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sightcall/universal/quality/QualityOfService$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sightcall/universal/quality/QualityOfService$Status;

.field public static final enum FAILURE:Lcom/sightcall/universal/quality/QualityOfService$Status;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "failure"
    .end annotation
.end field

.field public static final enum SUCCESS:Lcom/sightcall/universal/quality/QualityOfService$Status;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "success"
    .end annotation
.end field

.field public static final enum WARNING:Lcom/sightcall/universal/quality/QualityOfService$Status;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "warning"
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lcom/sightcall/universal/quality/QualityOfService$Status;
    .locals 3

    sget-object v0, Lcom/sightcall/universal/quality/QualityOfService$Status;->SUCCESS:Lcom/sightcall/universal/quality/QualityOfService$Status;

    sget-object v1, Lcom/sightcall/universal/quality/QualityOfService$Status;->WARNING:Lcom/sightcall/universal/quality/QualityOfService$Status;

    sget-object v2, Lcom/sightcall/universal/quality/QualityOfService$Status;->FAILURE:Lcom/sightcall/universal/quality/QualityOfService$Status;

    filled-new-array {v0, v1, v2}, [Lcom/sightcall/universal/quality/QualityOfService$Status;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sightcall/universal/quality/QualityOfService$Status;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/quality/QualityOfService$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/quality/QualityOfService$Status;->SUCCESS:Lcom/sightcall/universal/quality/QualityOfService$Status;

    new-instance v0, Lcom/sightcall/universal/quality/QualityOfService$Status;

    const-string v1, "WARNING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/quality/QualityOfService$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/quality/QualityOfService$Status;->WARNING:Lcom/sightcall/universal/quality/QualityOfService$Status;

    new-instance v0, Lcom/sightcall/universal/quality/QualityOfService$Status;

    const-string v1, "FAILURE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/quality/QualityOfService$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/quality/QualityOfService$Status;->FAILURE:Lcom/sightcall/universal/quality/QualityOfService$Status;

    invoke-static {}, Lcom/sightcall/universal/quality/QualityOfService$Status;->$values()[Lcom/sightcall/universal/quality/QualityOfService$Status;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/quality/QualityOfService$Status;->$VALUES:[Lcom/sightcall/universal/quality/QualityOfService$Status;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sightcall/universal/quality/QualityOfService$Status;
    .locals 1

    const-class v0, Lcom/sightcall/universal/quality/QualityOfService$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/quality/QualityOfService$Status;

    return-object p0
.end method

.method public static values()[Lcom/sightcall/universal/quality/QualityOfService$Status;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/quality/QualityOfService$Status;->$VALUES:[Lcom/sightcall/universal/quality/QualityOfService$Status;

    invoke-virtual {v0}, [Lcom/sightcall/universal/quality/QualityOfService$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sightcall/universal/quality/QualityOfService$Status;

    return-object v0
.end method
