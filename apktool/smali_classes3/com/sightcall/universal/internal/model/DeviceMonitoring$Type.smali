.class final enum Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/model/DeviceMonitoring;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;

.field public static final enum UNKNOWN:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "UNKNOWN"
    .end annotation
.end field

.field public static final enum WIFI:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "WIFI"
    .end annotation
.end field

.field public static final enum _2G:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "2G"
    .end annotation
.end field

.field public static final enum _3G:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "3G"
    .end annotation
.end field

.field public static final enum _4G:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "4G"
    .end annotation
.end field

.field public static final enum _5G:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "5G"
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;
    .locals 6

    sget-object v0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;->_2G:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;

    sget-object v1, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;->_3G:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;

    sget-object v2, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;->_4G:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;

    sget-object v3, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;->_5G:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;

    sget-object v4, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;->WIFI:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;

    sget-object v5, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;->UNKNOWN:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;

    filled-new-array/range {v0 .. v5}, [Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;

    const-string v1, "_2G"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;->_2G:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;

    new-instance v0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;

    const-string v1, "_3G"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;->_3G:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;

    new-instance v0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;

    const-string v1, "_4G"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;->_4G:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;

    new-instance v0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;

    const-string v1, "_5G"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;->_5G:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;

    new-instance v0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;

    const-string v1, "WIFI"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;->WIFI:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;

    new-instance v0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;->UNKNOWN:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;

    invoke-static {}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;->$values()[Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;->$VALUES:[Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;
    .locals 1

    const-class v0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;

    return-object p0
.end method

.method public static values()[Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;->$VALUES:[Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;

    invoke-virtual {v0}, [Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;

    return-object v0
.end method
