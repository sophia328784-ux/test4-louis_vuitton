.class public Lcom/sightcall/universal/guest/AgentHttpAcd$Request;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/guest/AgentHttpAcd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/guest/AgentHttpAcd$Request$Data;
    }
.end annotation


# instance fields
.field data:Lcom/sightcall/universal/guest/AgentHttpAcd$Request$Data;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "agent_request"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sightcall/universal/guest/AgentHttpAcd$Request$Data;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/sightcall/universal/guest/AgentHttpAcd$Request$Data;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sightcall/universal/guest/AgentHttpAcd$Request;->data:Lcom/sightcall/universal/guest/AgentHttpAcd$Request$Data;

    return-void
.end method
