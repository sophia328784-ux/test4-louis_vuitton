.class public final enum Lcom/lightup/sdk/device/model/device/DeviceGroup;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lightup/sdk/device/model/device/DeviceGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lightup/sdk/device/model/device/DeviceGroup;

.field public static final enum BOTH:Lcom/lightup/sdk/device/model/device/DeviceGroup;

.field public static final enum LEFT:Lcom/lightup/sdk/device/model/device/DeviceGroup;

.field public static final enum RIGHT:Lcom/lightup/sdk/device/model/device/DeviceGroup;


# direct methods
.method private static synthetic $values()[Lcom/lightup/sdk/device/model/device/DeviceGroup;
    .locals 3

    sget-object v0, Lcom/lightup/sdk/device/model/device/DeviceGroup;->LEFT:Lcom/lightup/sdk/device/model/device/DeviceGroup;

    sget-object v1, Lcom/lightup/sdk/device/model/device/DeviceGroup;->RIGHT:Lcom/lightup/sdk/device/model/device/DeviceGroup;

    sget-object v2, Lcom/lightup/sdk/device/model/device/DeviceGroup;->BOTH:Lcom/lightup/sdk/device/model/device/DeviceGroup;

    filled-new-array {v0, v1, v2}, [Lcom/lightup/sdk/device/model/device/DeviceGroup;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/lightup/sdk/device/model/device/DeviceGroup;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/model/device/DeviceGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/model/device/DeviceGroup;->LEFT:Lcom/lightup/sdk/device/model/device/DeviceGroup;

    new-instance v0, Lcom/lightup/sdk/device/model/device/DeviceGroup;

    const-string v1, "RIGHT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/model/device/DeviceGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/model/device/DeviceGroup;->RIGHT:Lcom/lightup/sdk/device/model/device/DeviceGroup;

    new-instance v0, Lcom/lightup/sdk/device/model/device/DeviceGroup;

    const-string v1, "BOTH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/lightup/sdk/device/model/device/DeviceGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/model/device/DeviceGroup;->BOTH:Lcom/lightup/sdk/device/model/device/DeviceGroup;

    invoke-static {}, Lcom/lightup/sdk/device/model/device/DeviceGroup;->$values()[Lcom/lightup/sdk/device/model/device/DeviceGroup;

    move-result-object v0

    sput-object v0, Lcom/lightup/sdk/device/model/device/DeviceGroup;->$VALUES:[Lcom/lightup/sdk/device/model/device/DeviceGroup;

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

.method public static valueOf(Ljava/lang/String;)Lcom/lightup/sdk/device/model/device/DeviceGroup;
    .locals 1

    const-class v0, Lcom/lightup/sdk/device/model/device/DeviceGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lightup/sdk/device/model/device/DeviceGroup;

    return-object p0
.end method

.method public static values()[Lcom/lightup/sdk/device/model/device/DeviceGroup;
    .locals 1

    sget-object v0, Lcom/lightup/sdk/device/model/device/DeviceGroup;->$VALUES:[Lcom/lightup/sdk/device/model/device/DeviceGroup;

    invoke-virtual {v0}, [Lcom/lightup/sdk/device/model/device/DeviceGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lightup/sdk/device/model/device/DeviceGroup;

    return-object v0
.end method
