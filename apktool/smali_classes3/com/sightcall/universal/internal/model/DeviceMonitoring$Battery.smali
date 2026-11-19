.class Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/model/DeviceMonitoring;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Battery"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;
    }
.end annotation


# static fields
.field private static final INTENT_FILTER:Landroid/content/IntentFilter;


# instance fields
.field final charging:Z
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "charging"
    .end annotation
.end field

.field final level:I
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "level"
    .end annotation
.end field

.field final plugged:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "plugged"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;->INTENT_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method private constructor <init>(IZLcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;->level:I

    iput-boolean p2, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;->charging:Z

    iput-object p3, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;->plugged:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;

    return-void
.end method

.method public static bridge synthetic a()Landroid/content/IntentFilter;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;->INTENT_FILTER:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public static extract(Landroid/content/Intent;)Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "level"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "scale"

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    mul-int/2addr v1, v4

    div-int/2addr v1, v3

    const-string v3, "status"

    const/4 v4, -0x1

    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v3, v6, :cond_1

    const/4 v7, 0x5

    if-ne v3, v7, :cond_2

    :cond_1
    move v2, v5

    :cond_2
    const-string v3, "plugged"

    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v6, :cond_3

    sget-object v0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;->USB:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;

    goto :goto_0

    :cond_3
    if-ne p0, v5, :cond_4

    sget-object v0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;->AC:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;

    goto :goto_0

    :cond_4
    const/4 v3, 0x4

    if-ne p0, v3, :cond_5

    sget-object v0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;->WIRELESS:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;

    :cond_5
    :goto_0
    new-instance p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;

    invoke-direct {p0, v1, v2, v0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;-><init>(IZLcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;)V

    return-object p0
.end method

.method public static fetch(Landroid/content/Context;)Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;->INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;->extract(Landroid/content/Intent;)Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;

    move-result-object p0

    return-object p0
.end method

.method public static update(Lcom/sightcall/universal/internal/model/DeviceMonitoring;Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;)Z
    .locals 1

    invoke-static {p0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->a(Lcom/sightcall/universal/internal/model/DeviceMonitoring;)Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;

    move-result-object v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->a(Lcom/sightcall/universal/internal/model/DeviceMonitoring;)Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->a(Lcom/sightcall/universal/internal/model/DeviceMonitoring;)Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_1
    invoke-static {p0, p1}, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->e(Lcom/sightcall/universal/internal/model/DeviceMonitoring;Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;)V

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

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;

    iget v2, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;->level:I

    iget v3, p1, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;->level:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-boolean v2, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;->charging:Z

    iget-boolean v3, p1, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;->charging:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object p0, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;->plugged:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;

    iget-object p1, p1, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;->plugged:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;->level:I

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;->charging:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;->plugged:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Battery{level="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", charging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;->charging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", plugged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery;->plugged:Lcom/sightcall/universal/internal/model/DeviceMonitoring$Battery$Plugged;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
