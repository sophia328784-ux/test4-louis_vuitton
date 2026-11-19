.class public final enum Lcom/networkbench/agent/impl/PrivacyDataType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/networkbench/agent/impl/PrivacyDataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/networkbench/agent/impl/PrivacyDataType;

.field public static final enum PrivacyDataAppName:Lcom/networkbench/agent/impl/PrivacyDataType;

.field public static final enum PrivacyDataAppVersion:Lcom/networkbench/agent/impl/PrivacyDataType;

.field public static final enum PrivacyDataBundleId:Lcom/networkbench/agent/impl/PrivacyDataType;

.field public static final enum PrivacyDataCarrierCode:Lcom/networkbench/agent/impl/PrivacyDataType;

.field public static final enum PrivacyDataDeviceSize:Lcom/networkbench/agent/impl/PrivacyDataType;

.field public static final enum PrivacyDataDeviceType:Lcom/networkbench/agent/impl/PrivacyDataType;

.field public static final enum PrivacyDataManufacturer:Lcom/networkbench/agent/impl/PrivacyDataType;

.field public static final enum PrivacyDataManufacturerModel:Lcom/networkbench/agent/impl/PrivacyDataType;

.field public static final enum PrivacyDataNetType:Lcom/networkbench/agent/impl/PrivacyDataType;

.field public static final enum PrivacyDataNone:Lcom/networkbench/agent/impl/PrivacyDataType;

.field public static final enum PrivacyDataOSVersion:Lcom/networkbench/agent/impl/PrivacyDataType;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/networkbench/agent/impl/PrivacyDataType;

    const-string v1, "PrivacyDataNone"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/networkbench/agent/impl/PrivacyDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/networkbench/agent/impl/PrivacyDataType;->PrivacyDataNone:Lcom/networkbench/agent/impl/PrivacyDataType;

    new-instance v1, Lcom/networkbench/agent/impl/PrivacyDataType;

    const-string v2, "PrivacyDataDeviceType"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/networkbench/agent/impl/PrivacyDataType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/networkbench/agent/impl/PrivacyDataType;->PrivacyDataDeviceType:Lcom/networkbench/agent/impl/PrivacyDataType;

    new-instance v2, Lcom/networkbench/agent/impl/PrivacyDataType;

    const-string v3, "PrivacyDataManufacturer"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/networkbench/agent/impl/PrivacyDataType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/networkbench/agent/impl/PrivacyDataType;->PrivacyDataManufacturer:Lcom/networkbench/agent/impl/PrivacyDataType;

    new-instance v3, Lcom/networkbench/agent/impl/PrivacyDataType;

    const-string v4, "PrivacyDataManufacturerModel"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/networkbench/agent/impl/PrivacyDataType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/networkbench/agent/impl/PrivacyDataType;->PrivacyDataManufacturerModel:Lcom/networkbench/agent/impl/PrivacyDataType;

    new-instance v4, Lcom/networkbench/agent/impl/PrivacyDataType;

    const-string v5, "PrivacyDataOSVersion"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/networkbench/agent/impl/PrivacyDataType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/networkbench/agent/impl/PrivacyDataType;->PrivacyDataOSVersion:Lcom/networkbench/agent/impl/PrivacyDataType;

    new-instance v5, Lcom/networkbench/agent/impl/PrivacyDataType;

    const-string v6, "PrivacyDataDeviceSize"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/networkbench/agent/impl/PrivacyDataType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/networkbench/agent/impl/PrivacyDataType;->PrivacyDataDeviceSize:Lcom/networkbench/agent/impl/PrivacyDataType;

    new-instance v6, Lcom/networkbench/agent/impl/PrivacyDataType;

    const-string v7, "PrivacyDataBundleId"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/networkbench/agent/impl/PrivacyDataType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/networkbench/agent/impl/PrivacyDataType;->PrivacyDataBundleId:Lcom/networkbench/agent/impl/PrivacyDataType;

    new-instance v7, Lcom/networkbench/agent/impl/PrivacyDataType;

    const-string v8, "PrivacyDataAppName"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/networkbench/agent/impl/PrivacyDataType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/networkbench/agent/impl/PrivacyDataType;->PrivacyDataAppName:Lcom/networkbench/agent/impl/PrivacyDataType;

    new-instance v8, Lcom/networkbench/agent/impl/PrivacyDataType;

    const-string v9, "PrivacyDataAppVersion"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/networkbench/agent/impl/PrivacyDataType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/networkbench/agent/impl/PrivacyDataType;->PrivacyDataAppVersion:Lcom/networkbench/agent/impl/PrivacyDataType;

    new-instance v9, Lcom/networkbench/agent/impl/PrivacyDataType;

    const-string v10, "PrivacyDataCarrierCode"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/networkbench/agent/impl/PrivacyDataType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/networkbench/agent/impl/PrivacyDataType;->PrivacyDataCarrierCode:Lcom/networkbench/agent/impl/PrivacyDataType;

    new-instance v10, Lcom/networkbench/agent/impl/PrivacyDataType;

    const-string v11, "PrivacyDataNetType"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/networkbench/agent/impl/PrivacyDataType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/networkbench/agent/impl/PrivacyDataType;->PrivacyDataNetType:Lcom/networkbench/agent/impl/PrivacyDataType;

    filled-new-array/range {v0 .. v10}, [Lcom/networkbench/agent/impl/PrivacyDataType;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/PrivacyDataType;->$VALUES:[Lcom/networkbench/agent/impl/PrivacyDataType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/networkbench/agent/impl/PrivacyDataType;
    .locals 1

    const-class v0, Lcom/networkbench/agent/impl/PrivacyDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/PrivacyDataType;

    return-object p0
.end method

.method public static values()[Lcom/networkbench/agent/impl/PrivacyDataType;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/PrivacyDataType;->$VALUES:[Lcom/networkbench/agent/impl/PrivacyDataType;

    invoke-virtual {v0}, [Lcom/networkbench/agent/impl/PrivacyDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/networkbench/agent/impl/PrivacyDataType;

    return-object v0
.end method
