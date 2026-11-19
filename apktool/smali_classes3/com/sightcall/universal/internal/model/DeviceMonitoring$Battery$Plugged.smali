.class final enum Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Plugged"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;

.field public static final enum AC:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "AC"
    .end annotation
.end field

.field public static final enum USB:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "USB"
    .end annotation
.end field

.field public static final enum WIRELESS:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "WIRELESS"
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;
    .locals 3

    sget-object v0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;->AC:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;

    sget-object v1, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;->USB:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;

    sget-object v2, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;->WIRELESS:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;

    filled-new-array {v0, v1, v2}, [Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;

    const-string v1, "AC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;->AC:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;

    new-instance v0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;

    const-string v1, "USB"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;->USB:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;

    new-instance v0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;

    const-string v1, "WIRELESS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;->WIRELESS:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;

    invoke-static {}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;->$values()[Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;->$VALUES:[Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;
    .locals 1

    const-class v0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;

    return-object p0
.end method

.method public static values()[Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;->$VALUES:[Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;

    invoke-virtual {v0}, [Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;

    return-object v0
.end method
