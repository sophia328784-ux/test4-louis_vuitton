.class public final enum Lcom/lightup/sdk/device/enums/DeviceMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lightup/sdk/device/enums/DeviceMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lightup/sdk/device/enums/DeviceMode;

.field public static final enum ALWAYS_ON:Lcom/lightup/sdk/device/enums/DeviceMode;

.field public static final enum DISCREET:Lcom/lightup/sdk/device/enums/DeviceMode;

.field public static final enum ECO:Lcom/lightup/sdk/device/enums/DeviceMode;

.field public static final enum MERCH:Lcom/lightup/sdk/device/enums/DeviceMode;

.field public static final enum STANDARD:Lcom/lightup/sdk/device/enums/DeviceMode;

.field public static final enum UNKNOWN:Lcom/lightup/sdk/device/enums/DeviceMode;

.field public static final enum WALKING:Lcom/lightup/sdk/device/enums/DeviceMode;

.field private static map:Ljava/util/Map;


# instance fields
.field private final deviceMode:I


# direct methods
.method private static synthetic $values()[Lcom/lightup/sdk/device/enums/DeviceMode;
    .locals 7

    sget-object v0, Lcom/lightup/sdk/device/enums/DeviceMode;->UNKNOWN:Lcom/lightup/sdk/device/enums/DeviceMode;

    sget-object v1, Lcom/lightup/sdk/device/enums/DeviceMode;->STANDARD:Lcom/lightup/sdk/device/enums/DeviceMode;

    sget-object v2, Lcom/lightup/sdk/device/enums/DeviceMode;->ECO:Lcom/lightup/sdk/device/enums/DeviceMode;

    sget-object v3, Lcom/lightup/sdk/device/enums/DeviceMode;->MERCH:Lcom/lightup/sdk/device/enums/DeviceMode;

    sget-object v4, Lcom/lightup/sdk/device/enums/DeviceMode;->ALWAYS_ON:Lcom/lightup/sdk/device/enums/DeviceMode;

    sget-object v5, Lcom/lightup/sdk/device/enums/DeviceMode;->WALKING:Lcom/lightup/sdk/device/enums/DeviceMode;

    sget-object v6, Lcom/lightup/sdk/device/enums/DeviceMode;->DISCREET:Lcom/lightup/sdk/device/enums/DeviceMode;

    filled-new-array/range {v0 .. v6}, [Lcom/lightup/sdk/device/enums/DeviceMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/lightup/sdk/device/enums/DeviceMode;

    const/16 v1, 0xff

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/lightup/sdk/device/enums/DeviceMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lightup/sdk/device/enums/DeviceMode;->UNKNOWN:Lcom/lightup/sdk/device/enums/DeviceMode;

    new-instance v0, Lcom/lightup/sdk/device/enums/DeviceMode;

    const-string v1, "STANDARD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/lightup/sdk/device/enums/DeviceMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lightup/sdk/device/enums/DeviceMode;->STANDARD:Lcom/lightup/sdk/device/enums/DeviceMode;

    new-instance v0, Lcom/lightup/sdk/device/enums/DeviceMode;

    const-string v1, "ECO"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/lightup/sdk/device/enums/DeviceMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lightup/sdk/device/enums/DeviceMode;->ECO:Lcom/lightup/sdk/device/enums/DeviceMode;

    new-instance v0, Lcom/lightup/sdk/device/enums/DeviceMode;

    const-string v1, "MERCH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v4}, Lcom/lightup/sdk/device/enums/DeviceMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lightup/sdk/device/enums/DeviceMode;->MERCH:Lcom/lightup/sdk/device/enums/DeviceMode;

    new-instance v0, Lcom/lightup/sdk/device/enums/DeviceMode;

    const-string v1, "ALWAYS_ON"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v4, v2}, Lcom/lightup/sdk/device/enums/DeviceMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lightup/sdk/device/enums/DeviceMode;->ALWAYS_ON:Lcom/lightup/sdk/device/enums/DeviceMode;

    new-instance v0, Lcom/lightup/sdk/device/enums/DeviceMode;

    const-string v1, "WALKING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v4}, Lcom/lightup/sdk/device/enums/DeviceMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lightup/sdk/device/enums/DeviceMode;->WALKING:Lcom/lightup/sdk/device/enums/DeviceMode;

    new-instance v0, Lcom/lightup/sdk/device/enums/DeviceMode;

    const-string v1, "DISCREET"

    const/4 v4, 0x6

    invoke-direct {v0, v1, v4, v2}, Lcom/lightup/sdk/device/enums/DeviceMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lightup/sdk/device/enums/DeviceMode;->DISCREET:Lcom/lightup/sdk/device/enums/DeviceMode;

    invoke-static {}, Lcom/lightup/sdk/device/enums/DeviceMode;->$values()[Lcom/lightup/sdk/device/enums/DeviceMode;

    move-result-object v0

    sput-object v0, Lcom/lightup/sdk/device/enums/DeviceMode;->$VALUES:[Lcom/lightup/sdk/device/enums/DeviceMode;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lightup/sdk/device/enums/DeviceMode;->map:Ljava/util/Map;

    invoke-static {}, Lcom/lightup/sdk/device/enums/DeviceMode;->values()[Lcom/lightup/sdk/device/enums/DeviceMode;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    sget-object v4, Lcom/lightup/sdk/device/enums/DeviceMode;->map:Ljava/util/Map;

    iget v5, v2, Lcom/lightup/sdk/device/enums/DeviceMode;->deviceMode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/lightup/sdk/device/enums/DeviceMode;->deviceMode:I

    return-void
.end method

.method public static valueOf(I)Lcom/lightup/sdk/device/enums/DeviceMode;
    .locals 1

    sget-object v0, Lcom/lightup/sdk/device/enums/DeviceMode;->map:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lightup/sdk/device/enums/DeviceMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lightup/sdk/device/enums/DeviceMode;
    .locals 1

    .line 13
    const-class v0, Lcom/lightup/sdk/device/enums/DeviceMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lightup/sdk/device/enums/DeviceMode;

    return-object p0
.end method

.method public static values()[Lcom/lightup/sdk/device/enums/DeviceMode;
    .locals 1

    sget-object v0, Lcom/lightup/sdk/device/enums/DeviceMode;->$VALUES:[Lcom/lightup/sdk/device/enums/DeviceMode;

    invoke-virtual {v0}, [Lcom/lightup/sdk/device/enums/DeviceMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lightup/sdk/device/enums/DeviceMode;

    return-object v0
.end method


# virtual methods
.method public getDeviceMode()I
    .locals 0

    iget p0, p0, Lcom/lightup/sdk/device/enums/DeviceMode;->deviceMode:I

    return p0
.end method
