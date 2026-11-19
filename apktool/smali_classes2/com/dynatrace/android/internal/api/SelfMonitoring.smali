.class public Lcom/dynatrace/android/internal/api/SelfMonitoring;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/dynatrace/android/agent/Dynatrace;->c()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/dynatrace/android/agent/AdkSettings;->k:Lcom/dynatrace/android/agent/AdkSettings;

    iget-object v1, v0, Lcom/dynatrace/android/agent/AdkSettings;->g:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    iget-boolean v1, v1, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->b:Z

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/dynatrace/android/agent/AdkSettings;->f:Lcom/dynatrace/android/agent/conf/Configuration;

    iget-object v1, v1, Lcom/dynatrace/android/agent/conf/Configuration;->d:Lcom/dynatrace/android/agent/conf/AgentMode;

    sget-object v2, Lcom/dynatrace/android/agent/conf/AgentMode;->APP_MON:Lcom/dynatrace/android/agent/conf/AgentMode;

    if-ne v1, v2, :cond_3

    :goto_0
    return-void

    :cond_3
    sget-object v1, Lcom/dynatrace/android/agent/data/Session;->n:Lcom/dynatrace/android/agent/data/Session;

    iget v2, v1, Lcom/dynatrace/android/agent/data/Session;->f:I

    const/16 v3, 0x14

    if-lt v2, v3, :cond_4

    return-void

    :cond_4
    iget v0, v0, Lcom/dynatrace/android/agent/AdkSettings;->c:I

    sget-boolean v2, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Handle self monitoring event name=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" payload=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_5
    new-instance v2, Lcom/dynatrace/android/agent/SelfMonitoringSegment;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/dynatrace/android/agent/SelfMonitoringSegment;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dynatrace/android/agent/data/Session;I)V

    sget-object p0, Lcom/dynatrace/android/agent/Core;->j:Lcom/dynatrace/android/agent/CalloutTable;

    invoke-virtual {p0}, Lcom/dynatrace/android/agent/CalloutTable;->b()V

    iget p0, v2, Lcom/dynatrace/android/agent/CustomSegment;->p:I

    invoke-static {v2, p0}, Lcom/dynatrace/android/agent/Core;->g(Lcom/dynatrace/android/agent/CustomSegment;I)V

    iget p0, v1, Lcom/dynatrace/android/agent/data/Session;->f:I

    add-int/lit8 p0, p0, 0x1

    iput p0, v1, Lcom/dynatrace/android/agent/data/Session;->f:I

    return-void
.end method
