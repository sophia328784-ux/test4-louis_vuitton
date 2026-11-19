.class public final Lcom/dynatrace/agent/communication/api/ServerDataUpdate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0080\u0008\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/dynatrace/agent/communication/api/ServerDataUpdate;",
        "",
        "Lcom/dynatrace/agent/communication/api/AgentState;",
        "state",
        "Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;",
        "config",
        "Lcom/dynatrace/android/agent/conf/ServerConfiguration;",
        "configV3",
        "<init>",
        "(Lcom/dynatrace/agent/communication/api/AgentState;Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;Lcom/dynatrace/android/agent/conf/ServerConfiguration;)V",
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
.field public final a:Lcom/dynatrace/agent/communication/api/AgentState;

.field public final b:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

.field public final c:Lcom/dynatrace/android/agent/conf/ServerConfiguration;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/communication/api/AgentState;Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;Lcom/dynatrace/android/agent/conf/ServerConfiguration;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/communication/api/ServerDataUpdate;->a:Lcom/dynatrace/agent/communication/api/AgentState;

    iput-object p2, p0, Lcom/dynatrace/agent/communication/api/ServerDataUpdate;->b:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    iput-object p3, p0, Lcom/dynatrace/agent/communication/api/ServerDataUpdate;->c:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/dynatrace/agent/communication/api/ServerDataUpdate;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/dynatrace/agent/communication/api/ServerDataUpdate;

    iget-object v1, p0, Lcom/dynatrace/agent/communication/api/ServerDataUpdate;->a:Lcom/dynatrace/agent/communication/api/AgentState;

    iget-object v3, p1, Lcom/dynatrace/agent/communication/api/ServerDataUpdate;->a:Lcom/dynatrace/agent/communication/api/AgentState;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/dynatrace/agent/communication/api/ServerDataUpdate;->b:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    iget-object v3, p1, Lcom/dynatrace/agent/communication/api/ServerDataUpdate;->b:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/dynatrace/agent/communication/api/ServerDataUpdate;->c:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    iget-object p1, p1, Lcom/dynatrace/agent/communication/api/ServerDataUpdate;->c:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/dynatrace/agent/communication/api/ServerDataUpdate;->a:Lcom/dynatrace/agent/communication/api/AgentState;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dynatrace/agent/communication/api/ServerDataUpdate;->b:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/dynatrace/agent/communication/api/ServerDataUpdate;->c:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ServerDataUpdate(state="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dynatrace/agent/communication/api/ServerDataUpdate;->a:Lcom/dynatrace/agent/communication/api/AgentState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/agent/communication/api/ServerDataUpdate;->b:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", configV3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dynatrace/agent/communication/api/ServerDataUpdate;->c:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
