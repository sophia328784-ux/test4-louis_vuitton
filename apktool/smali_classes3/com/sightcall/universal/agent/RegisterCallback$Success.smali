.class public Lcom/sightcall/universal/agent/RegisterCallback$Success;
.super Lcom/sightcall/universal/api/ApiCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/RegisterCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Success"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sightcall/universal/api/ApiCallback<",
        "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
        "Lcom/sightcall/universal/agent/Identity;",
        ">;>;"
    }
.end annotation


# instance fields
.field final agent:Lcom/sightcall/universal/agent/Agent;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/api/ApiCallback$Holder;Lcom/sightcall/universal/agent/Agent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/api/ApiCallback$Holder<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/Identity;",
            ">;>;",
            "Lcom/sightcall/universal/agent/Agent;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sightcall/universal/api/ApiCallback;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;)V

    iput-object p2, p0, Lcom/sightcall/universal/agent/RegisterCallback$Success;->agent:Lcom/sightcall/universal/agent/Agent;

    return-void
.end method


# virtual methods
.method public agent()Lcom/sightcall/universal/agent/Agent;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/RegisterCallback$Success;->agent:Lcom/sightcall/universal/agent/Agent;

    return-object p0
.end method
