.class public Lcom/dynatrace/android/agent/mixed/SessionInformationProviderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/agent/di/SessionInformationProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/dynatrace/agent/metrics/SessionInformationMetrics;
    .locals 0

    sget-object p0, Lcom/dynatrace/android/agent/data/Session;->n:Lcom/dynatrace/android/agent/data/Session;

    invoke-static {p0}, Lcom/dynatrace/android/agent/mixed/SessionInformationGenerator;->a(Lcom/dynatrace/android/agent/data/Session;)Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

    move-result-object p0

    return-object p0
.end method
