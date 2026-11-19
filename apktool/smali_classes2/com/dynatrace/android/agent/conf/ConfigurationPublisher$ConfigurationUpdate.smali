.class public final Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConfigurationUpdate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0001\u0014Bo\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\u000c\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;",
        "",
        "",
        "is3rdGenEnabled",
        "isTouchInteractionEnabled",
        "",
        "tracestateKeyPrefix",
        "instanceId",
        "sessionId",
        "applicationId",
        "",
        "dataCollectionLevel",
        "crashReporting",
        "trafficControl",
        "agentStatus",
        "traceContextEnabled",
        "sessionReplayEnabled",
        "replayMetricsEnabled",
        "<init>",
        "(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZZZ)V",
        "Builder",
        "com.dynatrace.agent_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:I

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:Z

.field public final l:Z

.field public final m:Z


# direct methods
.method public constructor <init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZZZ)V
    .locals 0

    invoke-static {p3, p4, p5, p6}, Ld21;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->a:Z

    iput-boolean p2, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->b:Z

    iput-object p3, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->f:Ljava/lang/String;

    iput p7, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->g:I

    iput-boolean p8, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->h:Z

    iput-boolean p9, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->i:Z

    iput-boolean p10, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->j:Z

    iput-boolean p11, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->k:Z

    iput-boolean p12, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->l:Z

    iput-boolean p13, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->m:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;
    .locals 14

    new-instance v0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;

    iget-boolean v12, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->l:Z

    iget-boolean v13, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->m:Z

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->a:Z

    iget-boolean v2, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->b:Z

    iget-object v3, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->f:Ljava/lang/String;

    iget v7, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->g:I

    iget-boolean v8, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->h:Z

    iget-boolean v9, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->i:Z

    iget-boolean v10, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->j:Z

    iget-boolean v11, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->k:Z

    invoke-direct/range {v0 .. v13}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;-><init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZZZ)V

    return-object v0
.end method

.method public final b()Ljava/util/Map;
    .locals 15

    sget-object v0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;->IS_3RDGEN_ENABLED:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;->getId()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->a:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;->IS_TOUCHES_ENABLED:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;->getId()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;->TRACESTATE_KEY_PREFIX:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lkotlin/Pair;

    iget-object v1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->c:Ljava/lang/String;

    invoke-direct {v4, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;->INSTANCE_ID:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lkotlin/Pair;

    iget-object v1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->d:Ljava/lang/String;

    invoke-direct {v5, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;->SESSION_ID:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Lkotlin/Pair;

    iget-object v1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->e:Ljava/lang/String;

    invoke-direct {v6, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;->APPLICATION_ID:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Lkotlin/Pair;

    iget-object v1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->f:Ljava/lang/String;

    invoke-direct {v7, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;->DATA_COLLECTION_LEVEL:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;->getId()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;->CRASH_REPORTING:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;->getId()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->h:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v9, Lkotlin/Pair;

    invoke-direct {v9, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;->TRAFFIC_CONTROL:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;->getId()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->i:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v10, Lkotlin/Pair;

    invoke-direct {v10, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;->AGENT_STATUS:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;->getId()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->j:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v11, Lkotlin/Pair;

    invoke-direct {v11, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;->TRACE_CONTEXT_ENABLED:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;->getId()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->k:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v12, Lkotlin/Pair;

    invoke-direct {v12, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;->SESSION_REPLAY_ENABLED:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;->getId()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->l:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v13, Lkotlin/Pair;

    invoke-direct {v13, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;->REPLAY_METRICS_ENABLED:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;->getId()Ljava/lang/String;

    move-result-object v0

    iget-boolean p0, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->m:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    new-instance v14, Lkotlin/Pair;

    invoke-direct {v14, v0, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v2 .. v14}, [Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/MapsKt;->i([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->a:Z

    iget-boolean v3, p1, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->b:Z

    iget-boolean v3, p1, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->g:I

    iget v3, p1, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->g:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->h:Z

    iget-boolean v3, p1, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->h:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->i:Z

    iget-boolean v3, p1, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->i:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->j:Z

    iget-boolean v3, p1, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->j:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->k:Z

    iget-boolean v3, p1, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->k:Z

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->l:Z

    iget-boolean v3, p1, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->l:Z

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-boolean p0, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->m:Z

    iget-boolean p1, p1, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->m:Z

    if-eq p0, p1, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->b:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->g:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget-boolean v2, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->h:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->i:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->j:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->k:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->l:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->m:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConfigurationUpdate(is3rdGenEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isTouchInteractionEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", tracestateKeyPrefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", instanceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", applicationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dataCollectionLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", crashReporting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", trafficControl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", agentStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", traceContextEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sessionReplayEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", replayMetricsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;->m:Z

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Ld21;->q(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
