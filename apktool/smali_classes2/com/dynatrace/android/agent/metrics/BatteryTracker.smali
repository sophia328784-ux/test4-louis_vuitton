.class public Lcom/dynatrace/android/agent/metrics/BatteryTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/os/BatteryManager;


# direct methods
.method public constructor <init>(Landroid/os/BatteryManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/android/agent/metrics/BatteryTracker;->a:Landroid/os/BatteryManager;

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/dynatrace/android/agent/metrics/BatteryTracker;
    .locals 1

    :try_start_0
    const-string v0, "batterymanager"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryManager;

    if-nez p0, :cond_0

    sget-boolean p0, Lcom/dynatrace/android/agent/Global;->a:Z

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/dynatrace/android/agent/metrics/BatteryTracker;

    invoke-direct {v0, p0}, Lcom/dynatrace/android/agent/metrics/BatteryTracker;-><init>(Landroid/os/BatteryManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-boolean p0, Lcom/dynatrace/android/agent/Global;->a:Z

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 3

    const-string v0, "invalid battery level \'"

    const/high16 v1, -0x80000000

    :try_start_0
    iget-object p0, p0, Lcom/dynatrace/android/agent/metrics/BatteryTracker;->a:Landroid/os/BatteryManager;

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result p0

    if-ltz p0, :cond_1

    const/16 v2, 0x64

    if-le p0, v2, :cond_0

    goto :goto_0

    :cond_0
    return p0

    :cond_1
    :goto_0
    sget-boolean v2, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\' detected"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    sget-boolean p0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->g()Ljava/lang/String;

    :cond_2
    return v1
.end method
