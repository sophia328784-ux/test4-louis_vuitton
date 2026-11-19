.class public final Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\u0008\u0080\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;",
        "",
        "Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;",
        "type",
        "",
        "time",
        "<init>",
        "(Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;J)V",
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
.field public final a:Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

.field public final b:J


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;J)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;->a:Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    iput-wide p2, p0, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;->b:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;

    iget-object v1, p0, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;->a:Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    iget-object v3, p1, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;->a:Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;->b:J

    iget-wide p0, p1, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;->b:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;->a:Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppStartupInstant(type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;->a:Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;->b:J

    const/16 p0, 0x29

    invoke-static {v0, v1, v2, p0}, Lfc;->k(Ljava/lang/StringBuilder;JC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
