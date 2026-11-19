.class public final enum Lcom/lp/ble/manager/BLEConnectApResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lp/ble/manager/BLEConnectApResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lp/ble/manager/BLEConnectApResult;

.field public static final enum LP_CONNECT_AP_DHCP_TIMEOUT:Lcom/lp/ble/manager/BLEConnectApResult;

.field public static final enum LP_CONNECT_AP_NO_SSID:Lcom/lp/ble/manager/BLEConnectApResult;

.field public static final enum LP_CONNECT_AP_NO_SUPPORT_SECRET:Lcom/lp/ble/manager/BLEConnectApResult;

.field public static final enum LP_CONNECT_AP_OTHER_ERROR:Lcom/lp/ble/manager/BLEConnectApResult;

.field public static final enum LP_CONNECT_AP_PARAMETER_ERROR:Lcom/lp/ble/manager/BLEConnectApResult;

.field public static final enum LP_CONNECT_AP_PASSWORD_ERROR:Lcom/lp/ble/manager/BLEConnectApResult;

.field public static final enum LP_CONNECT_AP_RETRY:Lcom/lp/ble/manager/BLEConnectApResult;

.field public static final enum LP_CONNECT_AP_START:Lcom/lp/ble/manager/BLEConnectApResult;

.field public static final enum LP_CONNECT_AP_SUCCESS:Lcom/lp/ble/manager/BLEConnectApResult;

.field public static final enum LP_CONNECT_AP_WIFI_TIMEOUT:Lcom/lp/ble/manager/BLEConnectApResult;

.field public static final enum LP_CONNECT_NEED_PASSWORD_ERROR:Lcom/lp/ble/manager/BLEConnectApResult;

.field public static final enum LP_CONNECT_Type_Connect_Router_Success_App_Not_Found:Lcom/lp/ble/manager/BLEConnectApResult;

.field public static final enum LP_CONNECT_Type_Found_Device_But_Not_Online:Lcom/lp/ble/manager/BLEConnectApResult;

.field public static final enum LP_CONNECT_Type_User_Close_Bluetooth:Lcom/lp/ble/manager/BLEConnectApResult;


# direct methods
.method private static synthetic $values()[Lcom/lp/ble/manager/BLEConnectApResult;
    .locals 14

    sget-object v0, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_AP_SUCCESS:Lcom/lp/ble/manager/BLEConnectApResult;

    sget-object v1, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_AP_START:Lcom/lp/ble/manager/BLEConnectApResult;

    sget-object v2, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_AP_NO_SSID:Lcom/lp/ble/manager/BLEConnectApResult;

    sget-object v3, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_AP_WIFI_TIMEOUT:Lcom/lp/ble/manager/BLEConnectApResult;

    sget-object v4, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_AP_DHCP_TIMEOUT:Lcom/lp/ble/manager/BLEConnectApResult;

    sget-object v5, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_AP_PASSWORD_ERROR:Lcom/lp/ble/manager/BLEConnectApResult;

    sget-object v6, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_AP_NO_SUPPORT_SECRET:Lcom/lp/ble/manager/BLEConnectApResult;

    sget-object v7, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_AP_PARAMETER_ERROR:Lcom/lp/ble/manager/BLEConnectApResult;

    sget-object v8, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_AP_RETRY:Lcom/lp/ble/manager/BLEConnectApResult;

    sget-object v9, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_AP_OTHER_ERROR:Lcom/lp/ble/manager/BLEConnectApResult;

    sget-object v10, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_Type_Connect_Router_Success_App_Not_Found:Lcom/lp/ble/manager/BLEConnectApResult;

    sget-object v11, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_Type_User_Close_Bluetooth:Lcom/lp/ble/manager/BLEConnectApResult;

    sget-object v12, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_Type_Found_Device_But_Not_Online:Lcom/lp/ble/manager/BLEConnectApResult;

    sget-object v13, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_NEED_PASSWORD_ERROR:Lcom/lp/ble/manager/BLEConnectApResult;

    filled-new-array/range {v0 .. v13}, [Lcom/lp/ble/manager/BLEConnectApResult;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/lp/ble/manager/BLEConnectApResult;

    const-string v1, "LP_CONNECT_AP_SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lp/ble/manager/BLEConnectApResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_AP_SUCCESS:Lcom/lp/ble/manager/BLEConnectApResult;

    new-instance v0, Lcom/lp/ble/manager/BLEConnectApResult;

    const-string v1, "LP_CONNECT_AP_START"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/lp/ble/manager/BLEConnectApResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_AP_START:Lcom/lp/ble/manager/BLEConnectApResult;

    new-instance v0, Lcom/lp/ble/manager/BLEConnectApResult;

    const-string v1, "LP_CONNECT_AP_NO_SSID"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/lp/ble/manager/BLEConnectApResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_AP_NO_SSID:Lcom/lp/ble/manager/BLEConnectApResult;

    new-instance v0, Lcom/lp/ble/manager/BLEConnectApResult;

    const-string v1, "LP_CONNECT_AP_WIFI_TIMEOUT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/lp/ble/manager/BLEConnectApResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_AP_WIFI_TIMEOUT:Lcom/lp/ble/manager/BLEConnectApResult;

    new-instance v0, Lcom/lp/ble/manager/BLEConnectApResult;

    const-string v1, "LP_CONNECT_AP_DHCP_TIMEOUT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/lp/ble/manager/BLEConnectApResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_AP_DHCP_TIMEOUT:Lcom/lp/ble/manager/BLEConnectApResult;

    new-instance v0, Lcom/lp/ble/manager/BLEConnectApResult;

    const-string v1, "LP_CONNECT_AP_PASSWORD_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lp/ble/manager/BLEConnectApResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_AP_PASSWORD_ERROR:Lcom/lp/ble/manager/BLEConnectApResult;

    new-instance v0, Lcom/lp/ble/manager/BLEConnectApResult;

    const-string v1, "LP_CONNECT_AP_NO_SUPPORT_SECRET"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/lp/ble/manager/BLEConnectApResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_AP_NO_SUPPORT_SECRET:Lcom/lp/ble/manager/BLEConnectApResult;

    new-instance v0, Lcom/lp/ble/manager/BLEConnectApResult;

    const-string v1, "LP_CONNECT_AP_PARAMETER_ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/lp/ble/manager/BLEConnectApResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_AP_PARAMETER_ERROR:Lcom/lp/ble/manager/BLEConnectApResult;

    new-instance v0, Lcom/lp/ble/manager/BLEConnectApResult;

    const-string v1, "LP_CONNECT_AP_RETRY"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/lp/ble/manager/BLEConnectApResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_AP_RETRY:Lcom/lp/ble/manager/BLEConnectApResult;

    new-instance v0, Lcom/lp/ble/manager/BLEConnectApResult;

    const-string v1, "LP_CONNECT_AP_OTHER_ERROR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/lp/ble/manager/BLEConnectApResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_AP_OTHER_ERROR:Lcom/lp/ble/manager/BLEConnectApResult;

    new-instance v0, Lcom/lp/ble/manager/BLEConnectApResult;

    const-string v1, "LP_CONNECT_Type_Connect_Router_Success_App_Not_Found"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/lp/ble/manager/BLEConnectApResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_Type_Connect_Router_Success_App_Not_Found:Lcom/lp/ble/manager/BLEConnectApResult;

    new-instance v0, Lcom/lp/ble/manager/BLEConnectApResult;

    const-string v1, "LP_CONNECT_Type_User_Close_Bluetooth"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/lp/ble/manager/BLEConnectApResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_Type_User_Close_Bluetooth:Lcom/lp/ble/manager/BLEConnectApResult;

    new-instance v0, Lcom/lp/ble/manager/BLEConnectApResult;

    const-string v1, "LP_CONNECT_Type_Found_Device_But_Not_Online"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/lp/ble/manager/BLEConnectApResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_Type_Found_Device_But_Not_Online:Lcom/lp/ble/manager/BLEConnectApResult;

    new-instance v0, Lcom/lp/ble/manager/BLEConnectApResult;

    const-string v1, "LP_CONNECT_NEED_PASSWORD_ERROR"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/lp/ble/manager/BLEConnectApResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lp/ble/manager/BLEConnectApResult;->LP_CONNECT_NEED_PASSWORD_ERROR:Lcom/lp/ble/manager/BLEConnectApResult;

    invoke-static {}, Lcom/lp/ble/manager/BLEConnectApResult;->$values()[Lcom/lp/ble/manager/BLEConnectApResult;

    move-result-object v0

    sput-object v0, Lcom/lp/ble/manager/BLEConnectApResult;->$VALUES:[Lcom/lp/ble/manager/BLEConnectApResult;

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

.method public static valueOf(Ljava/lang/String;)Lcom/lp/ble/manager/BLEConnectApResult;
    .locals 1

    const-class v0, Lcom/lp/ble/manager/BLEConnectApResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lp/ble/manager/BLEConnectApResult;

    return-object p0
.end method

.method public static values()[Lcom/lp/ble/manager/BLEConnectApResult;
    .locals 1

    sget-object v0, Lcom/lp/ble/manager/BLEConnectApResult;->$VALUES:[Lcom/lp/ble/manager/BLEConnectApResult;

    invoke-virtual {v0}, [Lcom/lp/ble/manager/BLEConnectApResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lp/ble/manager/BLEConnectApResult;

    return-object v0
.end method
