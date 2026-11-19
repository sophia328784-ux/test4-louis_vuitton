.class public Lcom/dynatrace/android/agent/mixed/SecondGenMetricsProviderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/agent/metrics/SecondGenMetricsProvider;


# instance fields
.field public final a:Lcom/dynatrace/android/agent/metrics/AppVersionTracker;

.field public final b:Lcom/dynatrace/android/agent/metrics/BatteryTracker;


# direct methods
.method public constructor <init>(Lcom/dynatrace/android/agent/metrics/AppVersionTracker;Lcom/dynatrace/android/agent/metrics/BatteryTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/android/agent/mixed/SecondGenMetricsProviderImpl;->a:Lcom/dynatrace/android/agent/metrics/AppVersionTracker;

    iput-object p2, p0, Lcom/dynatrace/android/agent/mixed/SecondGenMetricsProviderImpl;->b:Lcom/dynatrace/android/agent/metrics/BatteryTracker;

    return-void
.end method


# virtual methods
.method public final a()Lcom/dynatrace/agent/metrics/AppVersion;
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/android/agent/mixed/SecondGenMetricsProviderImpl;->a:Lcom/dynatrace/android/agent/metrics/AppVersionTracker;

    invoke-virtual {p0}, Lcom/dynatrace/android/agent/metrics/AppVersionTracker;->a()Lcom/dynatrace/agent/metrics/AppVersion;

    move-result-object p0

    return-object p0
.end method

.method public final b()I
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/android/agent/mixed/SecondGenMetricsProviderImpl;->b:Lcom/dynatrace/android/agent/metrics/BatteryTracker;

    invoke-virtual {p0}, Lcom/dynatrace/android/agent/metrics/BatteryTracker;->a()I

    move-result p0

    return p0
.end method
