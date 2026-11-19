.class Lcom/networkbench/agent/impl/performance/coulometry/b$1;
.super Lcom/networkbench/agent/impl/util/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/performance/coulometry/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field a:F

.field final synthetic b:Lcom/networkbench/agent/impl/performance/coulometry/b;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/performance/coulometry/b;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/b$1;->b:Lcom/networkbench/agent/impl/performance/coulometry/b;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/util/y;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/b$1;->a:F

    return-void
.end method


# virtual methods
.method public tryCatchRun()V
    .locals 6

    invoke-static {}, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->getInstance()Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->isForegrounded()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b$1;->b:Lcom/networkbench/agent/impl/performance/coulometry/b;

    iget-object v1, v0, Lcom/networkbench/agent/impl/performance/coulometry/b;->a:Landroid/os/BatteryManager;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v1

    const-string v2, "batterymanager"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryManager;

    iput-object v1, v0, Lcom/networkbench/agent/impl/performance/coulometry/b;->a:Landroid/os/BatteryManager;

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "status"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eq v1, v3, :cond_4

    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/b$1;->a:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/b$1;->b:Lcom/networkbench/agent/impl/performance/coulometry/b;

    iget-object v1, v1, Lcom/networkbench/agent/impl/performance/coulometry/b;->a:Landroid/os/BatteryManager;

    invoke-static {v1}, Lcom/networkbench/agent/impl/performance/coulometry/b;->a(Landroid/os/BatteryManager;)F

    move-result v1

    iput v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/b$1;->a:F

    :cond_2
    iget v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/b$1;->a:F

    const v3, 0x461c4000    # 10000.0f

    cmpl-float v1, v1, v3

    iget-object v3, p0, Lcom/networkbench/agent/impl/performance/coulometry/b$1;->b:Lcom/networkbench/agent/impl/performance/coulometry/b;

    if-lez v1, :cond_3

    iget-object v1, v3, Lcom/networkbench/agent/impl/performance/coulometry/b;->a:Landroid/os/BatteryManager;

    invoke-static {v1}, Lcom/networkbench/agent/impl/performance/coulometry/b;->a(Landroid/os/BatteryManager;)F

    move-result v1

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v1, v3

    goto :goto_0

    :cond_3
    iget-object v1, v3, Lcom/networkbench/agent/impl/performance/coulometry/b;->a:Landroid/os/BatteryManager;

    invoke-static {v1}, Lcom/networkbench/agent/impl/performance/coulometry/b;->a(Landroid/os/BatteryManager;)F

    move-result v1

    :goto_0
    const-string v3, "temperature"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    goto :goto_2

    :cond_4
    :goto_1
    move v1, v4

    :goto_2
    cmpl-float v0, v1, v4

    if-eqz v0, :cond_5

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_5

    if-eqz v5, :cond_5

    if-eq v5, v2, :cond_5

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b$1;->b:Lcom/networkbench/agent/impl/performance/coulometry/b;

    int-to-float v0, v5

    invoke-static {p0, v0, v1}, Lcom/networkbench/agent/impl/performance/coulometry/b;->a(Lcom/networkbench/agent/impl/performance/coulometry/b;FF)V

    :cond_5
    return-void
.end method
