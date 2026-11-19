.class public final Lcom/dynatrace/agent/metrics/SessionInformationMetrics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/agent/metrics/SessionInformationMetrics$Companion;,
        Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0080\u0008\u0018\u00002\u00020\u0001:\u0002\u0013\u0014B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cBA\u0008\u0016\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u000b\u0010\u0012\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/dynatrace/agent/metrics/SessionInformationMetrics;",
        "",
        "",
        "instanceId",
        "sessionId",
        "",
        "isGrailEventsCanBeCaptured",
        "crashReporting",
        "sessionActive",
        "Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;",
        "dataCollectionLevel",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;ZZZLcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;)V",
        "",
        "visitorId",
        "",
        "sessionInfoId",
        "sequenceNumber",
        "(JIIZZZI)V",
        "Companion",
        "DataCollectionLevel",
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


# static fields
.field public static final h:Lcom/dynatrace/agent/metrics/SessionInformationMetrics;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;

.field public final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/metrics/SessionInformationMetrics$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v2, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

    const/4 v7, 0x0

    sget-object v8, Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;->OFF:Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;

    const-string v3, ""

    const-string v4, "this is not a session, discard any events"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZLcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;)V

    sput-object v2, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->h:Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

    return-void
.end method

.method public constructor <init>(JIIZZZI)V
    .locals 2

    move-wide v0, p1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x5f

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x2d

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;->Companion:Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;->a()Lkotlin/enums/EnumEntries;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;

    invoke-virtual {p3}, Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;->b()I

    move-result p4

    if-ne p4, p8, :cond_0

    move p4, p6

    move-object p6, p3

    move p3, p5

    move p5, p7

    invoke-direct/range {p0 .. p6}, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZLcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;)V

    return-void

    :cond_0
    move p3, p5

    goto :goto_0

    :cond_1
    const-string p0, "Collection contains no element matching the predicate."

    invoke-static {p0}, Lzy0;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZLcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->a:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->b:Ljava/lang/String;

    .line 84
    iput-boolean p3, p0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->c:Z

    .line 85
    iput-boolean p4, p0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->d:Z

    .line 86
    iput-boolean p5, p0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->e:Z

    .line 87
    iput-object p6, p0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->f:Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;

    .line 88
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    sget-object p1, Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;->PERFORMANCE:Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;

    if-eq p6, p1, :cond_1

    sget-object p1, Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;->USER_BEHAVIOR:Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;

    if-ne p6, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 90
    :goto_1
    iput-boolean p1, p0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->g:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->c:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->e:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

    iget-object v1, p0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->c:Z

    iget-boolean v3, p1, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->d:Z

    iget-boolean v3, p1, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->e:Z

    iget-boolean v3, p1, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->e:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->f:Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;

    iget-object p1, p1, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->f:Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-boolean v2, p0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->c:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->d:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->e:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-object p0, p0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->f:Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SessionInformationMetrics(instanceId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isGrailEventsCanBeCaptured="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", crashReporting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sessionActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", dataCollectionLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->f:Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
