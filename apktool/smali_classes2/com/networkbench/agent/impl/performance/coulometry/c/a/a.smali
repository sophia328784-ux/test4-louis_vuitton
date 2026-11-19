.class public Lcom/networkbench/agent/impl/performance/coulometry/c/a/a;
.super Lcom/networkbench/agent/impl/performance/coulometry/c/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/networkbench/agent/impl/performance/coulometry/b/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/performance/coulometry/c/g;-><init>(Landroid/content/Context;Lcom/networkbench/agent/impl/performance/coulometry/b/b;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/networkbench/agent/impl/performance/coulometry/b/b;)Lcom/networkbench/agent/impl/performance/coulometry/c/a;
    .locals 0

    new-instance p0, Lcom/networkbench/agent/impl/performance/coulometry/c/a/b;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/performance/coulometry/c/a/b;-><init>(Lcom/networkbench/agent/impl/performance/coulometry/b/b;)V

    return-object p0
.end method

.method public b()V
    .locals 0

    const-string p0, "AlarmHook onInstall "

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 0

    const-string p0, "android.app.IAlarmManager"

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    const-string p0, "alarm"

    return-object p0
.end method
