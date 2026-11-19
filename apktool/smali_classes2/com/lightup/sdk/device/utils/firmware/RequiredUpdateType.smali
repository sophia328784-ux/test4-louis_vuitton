.class public final enum Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;

.field public static final enum NONE:Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;

.field public static final enum UPDATE_NOT_POSSIBLE:Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;

.field public static final enum UPDATE_POSSIBLE:Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;->NONE:Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;

    new-instance v1, Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;

    const-string v2, "UPDATE_POSSIBLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;->UPDATE_POSSIBLE:Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;

    new-instance v2, Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;

    const-string v3, "UPDATE_NOT_POSSIBLE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;->UPDATE_NOT_POSSIBLE:Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;

    filled-new-array {v0, v1, v2}, [Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;

    move-result-object v0

    sput-object v0, Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;->$VALUES:[Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;
    .locals 1

    const-class v0, Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;

    return-object p0
.end method

.method public static values()[Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;
    .locals 1

    sget-object v0, Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;->$VALUES:[Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;

    invoke-virtual {v0}, [Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lightup/sdk/device/utils/firmware/RequiredUpdateType;

    return-object v0
.end method
