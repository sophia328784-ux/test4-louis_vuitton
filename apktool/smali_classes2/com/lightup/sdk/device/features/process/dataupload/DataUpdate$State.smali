.class final enum Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

.field public static final enum DONE:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

.field public static final enum KO:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

.field public static final enum LINK_BROKEN:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

.field public static final enum NOT_STARTED:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

.field public static final enum TRANSFERRING:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

.field public static final enum VALIDATING:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    const-string v1, "NOT_STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;->NOT_STARTED:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    new-instance v1, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    const-string v2, "TRANSFERRING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;->TRANSFERRING:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    new-instance v2, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    const-string v3, "LINK_BROKEN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;->LINK_BROKEN:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    new-instance v3, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    const-string v4, "KO"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;->KO:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    new-instance v4, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    const-string v5, "VALIDATING"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;->VALIDATING:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    new-instance v5, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    const-string v6, "DONE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;->DONE:Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    filled-new-array/range {v0 .. v5}, [Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    move-result-object v0

    sput-object v0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;->$VALUES:[Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;
    .locals 1

    const-class v0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    return-object p0
.end method

.method public static values()[Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;
    .locals 1

    sget-object v0, Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;->$VALUES:[Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    invoke-virtual {v0}, [Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lightup/sdk/device/features/process/dataupload/DataUpdate$State;

    return-object v0
.end method
