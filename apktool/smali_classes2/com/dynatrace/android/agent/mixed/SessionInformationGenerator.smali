.class public final Lcom/dynatrace/android/agent/mixed/SessionInformationGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/dynatrace/android/agent/data/Session;)Lcom/dynatrace/agent/metrics/SessionInformationMetrics;
    .locals 11

    if-nez p0, :cond_0

    const-string p0, "SessionInformationGenerator.generate: session is null, returning NO_SESSION"

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    sget-object p0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->h:Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

    return-object p0

    :cond_0
    sget-object v0, Lcom/dynatrace/android/agent/conf/DataCollectionLevel;->OFF:Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

    iget-object v1, p0, Lcom/dynatrace/android/agent/data/Session;->i:Lcom/dynatrace/android/agent/conf/PrivacyRules;

    if-eqz v1, :cond_1

    sget-object v0, Lcom/dynatrace/android/agent/EventType;->CRASH:Lcom/dynatrace/android/agent/EventType;

    invoke-virtual {v1, v0}, Lcom/dynatrace/android/agent/conf/PrivacyRules;->a(Lcom/dynatrace/android/agent/EventType;)Z

    move-result v0

    iget-object v1, v1, Lcom/dynatrace/android/agent/conf/PrivacyRules;->a:Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;

    iget-object v1, v1, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;->a:Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

    move v8, v0

    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string v1, "SessionInformationGenerator.generate: privacyRules is null, returning session with event and crash reporting turned off"

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v8, v1

    :goto_0
    new-instance v2, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

    iget-wide v3, p0, Lcom/dynatrace/android/agent/data/Session;->b:J

    iget v5, p0, Lcom/dynatrace/android/agent/data/Session;->c:I

    iget-boolean v7, p0, Lcom/dynatrace/android/agent/data/Session;->k:Z

    invoke-virtual {p0}, Lcom/dynatrace/android/agent/data/Session;->e()Z

    move-result v9

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/conf/DataCollectionLevel;->a()I

    move-result v10

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;-><init>(JIIZZZI)V

    return-object v2
.end method
