.class final enum Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Errors"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;

.field public static final enum ERROR_CODE_BAD_ACK:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;

.field public static final enum ERROR_CODE_INTERRUPTED:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;

.field public static final enum ERROR_CODE_KO:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;

.field public static final enum ERROR_CODE_LINK_BROKEN:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;

.field public static final enum ERROR_CODE_TIMEOUT:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;

    const-string v1, "ERROR_CODE_INTERRUPTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;->ERROR_CODE_INTERRUPTED:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;

    new-instance v1, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;

    const-string v2, "ERROR_CODE_KO"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;->ERROR_CODE_KO:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;

    new-instance v2, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;

    const-string v3, "ERROR_CODE_TIMEOUT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;->ERROR_CODE_TIMEOUT:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;

    new-instance v3, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;

    const-string v4, "ERROR_CODE_LINK_BROKEN"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;->ERROR_CODE_LINK_BROKEN:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;

    new-instance v4, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;

    const-string v5, "ERROR_CODE_BAD_ACK"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;->ERROR_CODE_BAD_ACK:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;

    move-result-object v0

    sput-object v0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;->$VALUES:[Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;
    .locals 1

    const-class v0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;

    return-object p0
.end method

.method public static values()[Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;
    .locals 1

    sget-object v0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;->$VALUES:[Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;

    invoke-virtual {v0}, [Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$Errors;

    return-object v0
.end method
