.class public final enum Lcom/lightup/sdk/device/model/device/DeviceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lightup/sdk/device/model/device/DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lightup/sdk/device/model/device/DeviceType;

.field public static final enum BAG_DEVICE_TYPE:Lcom/lightup/sdk/device/model/device/DeviceType;

.field public static final enum GENERIC_DEVICE_TYPE:Lcom/lightup/sdk/device/model/device/DeviceType;

.field public static final enum GLOVE_DEVICE_TYPE:Lcom/lightup/sdk/device/model/device/DeviceType;

.field public static final enum HEATING_BELT_DEVICE_TYPE:Lcom/lightup/sdk/device/model/device/DeviceType;

.field public static final enum HEATING_GLOVES_DEVICE_TYPE:Lcom/lightup/sdk/device/model/device/DeviceType;

.field public static final enum KEEP_ALL:Lcom/lightup/sdk/device/model/device/DeviceType;

.field public static final enum LIGHTUP:Lcom/lightup/sdk/device/model/device/DeviceType;

.field public static final enum SHOES_DEVICE_TYPE:Lcom/lightup/sdk/device/model/device/DeviceType;

.field public static final enum SLEEVE:Lcom/lightup/sdk/device/model/device/DeviceType;

.field public static final enum STUDIO_DEVICE_TYPE:Lcom/lightup/sdk/device/model/device/DeviceType;

.field public static final enum TRACKER_DEVICE_TYPE:Lcom/lightup/sdk/device/model/device/DeviceType;

.field public static final enum X408:Lcom/lightup/sdk/device/model/device/DeviceType;


# direct methods
.method private static synthetic $values()[Lcom/lightup/sdk/device/model/device/DeviceType;
    .locals 12

    sget-object v0, Lcom/lightup/sdk/device/model/device/DeviceType;->GENERIC_DEVICE_TYPE:Lcom/lightup/sdk/device/model/device/DeviceType;

    sget-object v1, Lcom/lightup/sdk/device/model/device/DeviceType;->SHOES_DEVICE_TYPE:Lcom/lightup/sdk/device/model/device/DeviceType;

    sget-object v2, Lcom/lightup/sdk/device/model/device/DeviceType;->TRACKER_DEVICE_TYPE:Lcom/lightup/sdk/device/model/device/DeviceType;

    sget-object v3, Lcom/lightup/sdk/device/model/device/DeviceType;->BAG_DEVICE_TYPE:Lcom/lightup/sdk/device/model/device/DeviceType;

    sget-object v4, Lcom/lightup/sdk/device/model/device/DeviceType;->GLOVE_DEVICE_TYPE:Lcom/lightup/sdk/device/model/device/DeviceType;

    sget-object v5, Lcom/lightup/sdk/device/model/device/DeviceType;->HEATING_GLOVES_DEVICE_TYPE:Lcom/lightup/sdk/device/model/device/DeviceType;

    sget-object v6, Lcom/lightup/sdk/device/model/device/DeviceType;->STUDIO_DEVICE_TYPE:Lcom/lightup/sdk/device/model/device/DeviceType;

    sget-object v7, Lcom/lightup/sdk/device/model/device/DeviceType;->HEATING_BELT_DEVICE_TYPE:Lcom/lightup/sdk/device/model/device/DeviceType;

    sget-object v8, Lcom/lightup/sdk/device/model/device/DeviceType;->KEEP_ALL:Lcom/lightup/sdk/device/model/device/DeviceType;

    sget-object v9, Lcom/lightup/sdk/device/model/device/DeviceType;->X408:Lcom/lightup/sdk/device/model/device/DeviceType;

    sget-object v10, Lcom/lightup/sdk/device/model/device/DeviceType;->SLEEVE:Lcom/lightup/sdk/device/model/device/DeviceType;

    sget-object v11, Lcom/lightup/sdk/device/model/device/DeviceType;->LIGHTUP:Lcom/lightup/sdk/device/model/device/DeviceType;

    filled-new-array/range {v0 .. v11}, [Lcom/lightup/sdk/device/model/device/DeviceType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/lightup/sdk/device/model/device/DeviceType;

    const-string v1, "GENERIC_DEVICE_TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/model/device/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/model/device/DeviceType;->GENERIC_DEVICE_TYPE:Lcom/lightup/sdk/device/model/device/DeviceType;

    new-instance v0, Lcom/lightup/sdk/device/model/device/DeviceType;

    const-string v1, "SHOES_DEVICE_TYPE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/model/device/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/model/device/DeviceType;->SHOES_DEVICE_TYPE:Lcom/lightup/sdk/device/model/device/DeviceType;

    new-instance v0, Lcom/lightup/sdk/device/model/device/DeviceType;

    const-string v1, "TRACKER_DEVICE_TYPE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/model/device/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/model/device/DeviceType;->TRACKER_DEVICE_TYPE:Lcom/lightup/sdk/device/model/device/DeviceType;

    new-instance v0, Lcom/lightup/sdk/device/model/device/DeviceType;

    const-string v1, "BAG_DEVICE_TYPE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/model/device/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/model/device/DeviceType;->BAG_DEVICE_TYPE:Lcom/lightup/sdk/device/model/device/DeviceType;

    new-instance v0, Lcom/lightup/sdk/device/model/device/DeviceType;

    const-string v1, "GLOVE_DEVICE_TYPE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/model/device/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/model/device/DeviceType;->GLOVE_DEVICE_TYPE:Lcom/lightup/sdk/device/model/device/DeviceType;

    new-instance v0, Lcom/lightup/sdk/device/model/device/DeviceType;

    const-string v1, "HEATING_GLOVES_DEVICE_TYPE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/model/device/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/model/device/DeviceType;->HEATING_GLOVES_DEVICE_TYPE:Lcom/lightup/sdk/device/model/device/DeviceType;

    new-instance v0, Lcom/lightup/sdk/device/model/device/DeviceType;

    const-string v1, "STUDIO_DEVICE_TYPE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/model/device/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/model/device/DeviceType;->STUDIO_DEVICE_TYPE:Lcom/lightup/sdk/device/model/device/DeviceType;

    new-instance v0, Lcom/lightup/sdk/device/model/device/DeviceType;

    const-string v1, "HEATING_BELT_DEVICE_TYPE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/model/device/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/model/device/DeviceType;->HEATING_BELT_DEVICE_TYPE:Lcom/lightup/sdk/device/model/device/DeviceType;

    new-instance v0, Lcom/lightup/sdk/device/model/device/DeviceType;

    const-string v1, "KEEP_ALL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/model/device/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/model/device/DeviceType;->KEEP_ALL:Lcom/lightup/sdk/device/model/device/DeviceType;

    new-instance v0, Lcom/lightup/sdk/device/model/device/DeviceType;

    const-string v1, "X408"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/model/device/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/model/device/DeviceType;->X408:Lcom/lightup/sdk/device/model/device/DeviceType;

    new-instance v0, Lcom/lightup/sdk/device/model/device/DeviceType;

    const-string v1, "SLEEVE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/model/device/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/model/device/DeviceType;->SLEEVE:Lcom/lightup/sdk/device/model/device/DeviceType;

    new-instance v0, Lcom/lightup/sdk/device/model/device/DeviceType;

    const-string v1, "LIGHTUP"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/model/device/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/model/device/DeviceType;->LIGHTUP:Lcom/lightup/sdk/device/model/device/DeviceType;

    invoke-static {}, Lcom/lightup/sdk/device/model/device/DeviceType;->$values()[Lcom/lightup/sdk/device/model/device/DeviceType;

    move-result-object v0

    sput-object v0, Lcom/lightup/sdk/device/model/device/DeviceType;->$VALUES:[Lcom/lightup/sdk/device/model/device/DeviceType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/lightup/sdk/device/model/device/DeviceType;
    .locals 1

    const-class v0, Lcom/lightup/sdk/device/model/device/DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lightup/sdk/device/model/device/DeviceType;

    return-object p0
.end method

.method public static values()[Lcom/lightup/sdk/device/model/device/DeviceType;
    .locals 1

    sget-object v0, Lcom/lightup/sdk/device/model/device/DeviceType;->$VALUES:[Lcom/lightup/sdk/device/model/device/DeviceType;

    invoke-virtual {v0}, [Lcom/lightup/sdk/device/model/device/DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lightup/sdk/device/model/device/DeviceType;

    return-object v0
.end method
