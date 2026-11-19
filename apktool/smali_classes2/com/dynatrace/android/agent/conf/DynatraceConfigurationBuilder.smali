.class public Lcom/dynatrace/android/agent/conf/DynatraceConfigurationBuilder;
.super Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/dynatrace/android/agent/conf/AgentMode;->SAAS:Lcom/dynatrace/android/agent/conf/AgentMode;

    invoke-direct {p0, v0, p1, p2}, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;-><init>(Lcom/dynatrace/android/agent/conf/AgentMode;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
