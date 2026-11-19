.class public final enum Lcom/sightcall/universal/quality/QualityOfService$NetworkType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/quality/QualityOfService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sightcall/universal/quality/QualityOfService$NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sightcall/universal/quality/QualityOfService$NetworkType;

.field public static final enum MOBILE_2G:Lcom/sightcall/universal/quality/QualityOfService$NetworkType;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "2G"
    .end annotation
.end field

.field public static final enum MOBILE_3G:Lcom/sightcall/universal/quality/QualityOfService$NetworkType;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "3G"
    .end annotation
.end field

.field public static final enum MOBILE_4G:Lcom/sightcall/universal/quality/QualityOfService$NetworkType;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "4G"
    .end annotation
.end field

.field public static final enum MOBILE_5G:Lcom/sightcall/universal/quality/QualityOfService$NetworkType;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "5G"
    .end annotation
.end field

.field public static final enum UNKNOWN:Lcom/sightcall/universal/quality/QualityOfService$NetworkType;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = ""
    .end annotation
.end field

.field public static final enum WIFI:Lcom/sightcall/universal/quality/QualityOfService$NetworkType;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "WiFi"
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lcom/sightcall/universal/quality/QualityOfService$NetworkType;
    .locals 6

    sget-object v0, Lcom/sightcall/universal/quality/QualityOfService$NetworkType;->UNKNOWN:Lcom/sightcall/universal/quality/QualityOfService$NetworkType;

    sget-object v1, Lcom/sightcall/universal/quality/QualityOfService$NetworkType;->MOBILE_2G:Lcom/sightcall/universal/quality/QualityOfService$NetworkType;

    sget-object v2, Lcom/sightcall/universal/quality/QualityOfService$NetworkType;->MOBILE_3G:Lcom/sightcall/universal/quality/QualityOfService$NetworkType;

    sget-object v3, Lcom/sightcall/universal/quality/QualityOfService$NetworkType;->MOBILE_4G:Lcom/sightcall/universal/quality/QualityOfService$NetworkType;

    sget-object v4, Lcom/sightcall/universal/quality/QualityOfService$NetworkType;->MOBILE_5G:Lcom/sightcall/universal/quality/QualityOfService$NetworkType;

    sget-object v5, Lcom/sightcall/universal/quality/QualityOfService$NetworkType;->WIFI:Lcom/sightcall/universal/quality/QualityOfService$NetworkType;

    filled-new-array/range {v0 .. v5}, [Lcom/sightcall/universal/quality/QualityOfService$NetworkType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sightcall/universal/quality/QualityOfService$NetworkType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/quality/QualityOfService$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/quality/QualityOfService$NetworkType;->UNKNOWN:Lcom/sightcall/universal/quality/QualityOfService$NetworkType;

    new-instance v0, Lcom/sightcall/universal/quality/QualityOfService$NetworkType;

    const-string v1, "MOBILE_2G"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/quality/QualityOfService$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/quality/QualityOfService$NetworkType;->MOBILE_2G:Lcom/sightcall/universal/quality/QualityOfService$NetworkType;

    new-instance v0, Lcom/sightcall/universal/quality/QualityOfService$NetworkType;

    const-string v1, "MOBILE_3G"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/quality/QualityOfService$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/quality/QualityOfService$NetworkType;->MOBILE_3G:Lcom/sightcall/universal/quality/QualityOfService$NetworkType;

    new-instance v0, Lcom/sightcall/universal/quality/QualityOfService$NetworkType;

    const-string v1, "MOBILE_4G"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/quality/QualityOfService$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/quality/QualityOfService$NetworkType;->MOBILE_4G:Lcom/sightcall/universal/quality/QualityOfService$NetworkType;

    new-instance v0, Lcom/sightcall/universal/quality/QualityOfService$NetworkType;

    const-string v1, "MOBILE_5G"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/quality/QualityOfService$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/quality/QualityOfService$NetworkType;->MOBILE_5G:Lcom/sightcall/universal/quality/QualityOfService$NetworkType;

    new-instance v0, Lcom/sightcall/universal/quality/QualityOfService$NetworkType;

    const-string v1, "WIFI"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/quality/QualityOfService$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/quality/QualityOfService$NetworkType;->WIFI:Lcom/sightcall/universal/quality/QualityOfService$NetworkType;

    invoke-static {}, Lcom/sightcall/universal/quality/QualityOfService$NetworkType;->$values()[Lcom/sightcall/universal/quality/QualityOfService$NetworkType;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/quality/QualityOfService$NetworkType;->$VALUES:[Lcom/sightcall/universal/quality/QualityOfService$NetworkType;

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

.method public static find(Landroid/content/Context;)Lcom/sightcall/universal/quality/QualityOfService$NetworkType;
    .locals 3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    if-eq v0, p0, :cond_1

    const/4 p0, 0x6

    if-eq v0, p0, :cond_1

    const/16 p0, 0x9

    if-eq v0, p0, :cond_1

    sget-object p0, Lcom/sightcall/universal/quality/QualityOfService$NetworkType;->UNKNOWN:Lcom/sightcall/universal/quality/QualityOfService$NetworkType;

    return-object p0

    :cond_1
    sget-object p0, Lcom/sightcall/universal/quality/QualityOfService$NetworkType;->WIFI:Lcom/sightcall/universal/quality/QualityOfService$NetworkType;

    return-object p0

    :cond_2
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/sightcall/universal/quality/QualityOfService$NetworkType;->UNKNOWN:Lcom/sightcall/universal/quality/QualityOfService$NetworkType;

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/sightcall/universal/quality/QualityOfService$NetworkType;->MOBILE_5G:Lcom/sightcall/universal/quality/QualityOfService$NetworkType;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/sightcall/universal/quality/QualityOfService$NetworkType;->MOBILE_4G:Lcom/sightcall/universal/quality/QualityOfService$NetworkType;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/sightcall/universal/quality/QualityOfService$NetworkType;->MOBILE_3G:Lcom/sightcall/universal/quality/QualityOfService$NetworkType;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/sightcall/universal/quality/QualityOfService$NetworkType;->MOBILE_2G:Lcom/sightcall/universal/quality/QualityOfService$NetworkType;

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_4
    sget-object p0, Lcom/sightcall/universal/quality/QualityOfService$NetworkType;->UNKNOWN:Lcom/sightcall/universal/quality/QualityOfService$NetworkType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sightcall/universal/quality/QualityOfService$NetworkType;
    .locals 1

    const-class v0, Lcom/sightcall/universal/quality/QualityOfService$NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/quality/QualityOfService$NetworkType;

    return-object p0
.end method

.method public static values()[Lcom/sightcall/universal/quality/QualityOfService$NetworkType;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/quality/QualityOfService$NetworkType;->$VALUES:[Lcom/sightcall/universal/quality/QualityOfService$NetworkType;

    invoke-virtual {v0}, [Lcom/sightcall/universal/quality/QualityOfService$NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sightcall/universal/quality/QualityOfService$NetworkType;

    return-object v0
.end method
