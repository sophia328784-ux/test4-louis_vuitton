.class Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/model/DeviceMonitoring;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sim"
.end annotation


# static fields
.field private static final DEFAULT_SIGNAL_STRENGTH_VALUE:I = 0x4

.field static final LISTEN:I = 0x141


# instance fields
.field final carrier:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "carrier"
    .end annotation
.end field

.field final strength:I
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "strength"
    .end annotation
.end field

.field final type:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "type"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;->carrier:Ljava/lang/String;

    iput-object p1, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;->type:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;

    iput p3, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;->strength:I

    return-void
.end method

.method public static fetch(Landroid/content/Context;)Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;->fetch(Landroid/content/Context;Landroid/telephony/SignalStrength;)Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;

    move-result-object p0

    return-object p0
.end method

.method public static fetch(Landroid/content/Context;Landroid/telephony/SignalStrength;)Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;
    .locals 4

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;->findMobileType(Landroid/telephony/TelephonyManager;)Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;->findSignalStrength(Landroid/telephony/SignalStrength;)I

    move-result p1

    new-instance v0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;

    invoke-direct {v0, v1, p0, p1}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;-><init>(Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;Ljava/lang/String;I)V

    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method private static findMobileType(Landroid/telephony/TelephonyManager;)Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;
    .locals 2

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->context()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/pratik/InstantAppWrapper;->isInstantApp(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/sightcall/pratik/utils/SdkUtilsKt;->isAtLeastSdk30()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;->_3G:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;->_5G:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;->_4G:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;->_3G:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;->_2G:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;->UNKNOWN:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;->UNKNOWN:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
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

.method public static findSignalStrength(Landroid/telephony/SignalStrength;)I
    .locals 1

    const/4 v0, 0x4

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method public static update(Lcom/sightcall/universal/internal/model/DeviceMonitoring;Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;)Z
    .locals 1

    invoke-static {p0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->c(Lcom/sightcall/universal/internal/model/DeviceMonitoring;)Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;

    move-result-object v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->c(Lcom/sightcall/universal/internal/model/DeviceMonitoring;)Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->c(Lcom/sightcall/universal/internal/model/DeviceMonitoring;)Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_1
    invoke-static {p0, p1}, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->f(Lcom/sightcall/universal/internal/model/DeviceMonitoring;Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;

    iget v2, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;->strength:I

    iget v3, p1, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;->strength:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;->carrier:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;->carrier:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    :goto_0
    return v1

    :cond_4
    iget-object p0, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;->type:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;

    iget-object p1, p1, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;->type:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;

    if-ne p0, p1, :cond_5

    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;->carrier:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;->type:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget p0, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;->strength:I

    add-int/2addr v1, p0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sim{carrier=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;->carrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;->type:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", strength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Sim;->strength:I

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
