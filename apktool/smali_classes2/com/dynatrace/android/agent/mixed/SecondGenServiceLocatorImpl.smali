.class public Lcom/dynatrace/android/agent/mixed/SecondGenServiceLocatorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/agent/di/SecondGenServiceLocator;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/android/agent/mixed/SecondGenServiceLocatorImpl;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Lcom/dynatrace/android/agent/mixed/SessionInformationProviderImpl;
    .locals 0

    new-instance p0, Lcom/dynatrace/android/agent/mixed/SessionInformationProviderImpl;

    invoke-direct {p0}, Lcom/dynatrace/android/agent/mixed/SessionInformationProviderImpl;-><init>()V

    return-object p0
.end method

.method public final b()Lct0;
    .locals 1

    new-instance p0, Lct0;

    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lct0;-><init>(I)V

    return-object p0
.end method

.method public final c()Lcom/dynatrace/android/agent/mixed/SecondGenMetricsProviderImpl;
    .locals 2

    new-instance v0, Lcom/dynatrace/android/agent/metrics/AppVersionTracker;

    new-instance v1, Lcom/dynatrace/android/agent/util/SdkVersionProviderImpl;

    invoke-direct {v1}, Lcom/dynatrace/android/agent/util/SdkVersionProviderImpl;-><init>()V

    iget-object p0, p0, Lcom/dynatrace/android/agent/mixed/SecondGenServiceLocatorImpl;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/dynatrace/android/agent/metrics/AppVersionTracker;-><init>(Landroid/content/Context;Lcom/dynatrace/android/agent/util/SdkVersionProvider;)V

    invoke-static {p0}, Lcom/dynatrace/android/agent/metrics/BatteryTracker;->b(Landroid/content/Context;)Lcom/dynatrace/android/agent/metrics/BatteryTracker;

    move-result-object p0

    new-instance v1, Lcom/dynatrace/android/agent/mixed/SecondGenMetricsProviderImpl;

    invoke-direct {v1, v0, p0}, Lcom/dynatrace/android/agent/mixed/SecondGenMetricsProviderImpl;-><init>(Lcom/dynatrace/android/agent/metrics/AppVersionTracker;Lcom/dynatrace/android/agent/metrics/BatteryTracker;)V

    return-object v1
.end method
