.class public Lcom/sightcall/universal/guest/AgentHttpAcd$Result;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/guest/AgentHttpAcd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/guest/AgentHttpAcd$Result$Data;
    }
.end annotation


# instance fields
.field data:Lcom/sightcall/universal/guest/AgentHttpAcd$Result$Data;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "agent_request"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public data()Lcom/sightcall/universal/guest/AgentHttpAcd$Result$Data;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/guest/AgentHttpAcd$Result;->data:Lcom/sightcall/universal/guest/AgentHttpAcd$Result$Data;

    return-object p0
.end method

.method public estimatedTime()I
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/guest/AgentHttpAcd$Result;->data:Lcom/sightcall/universal/guest/AgentHttpAcd$Result$Data;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/sightcall/universal/guest/AgentHttpAcd$Result$Data;->estimatedTime:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public id()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/guest/AgentHttpAcd$Result;->data:Lcom/sightcall/universal/guest/AgentHttpAcd$Result$Data;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/guest/AgentHttpAcd$Result$Data;->id:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public status()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/guest/AgentHttpAcd$Result;->data:Lcom/sightcall/universal/guest/AgentHttpAcd$Result$Data;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/guest/AgentHttpAcd$Result$Data;->status:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
