.class public Lcom/sightcall/universal/agent/SendLeadCallback$Error;
.super Lcom/sightcall/universal/api/ApiCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/SendLeadCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sightcall/universal/api/ApiCallback<",
        "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
        "Lcom/sightcall/universal/agent/Lead;",
        ">;>;"
    }
.end annotation


# instance fields
.field final lead:Lcom/sightcall/universal/agent/Lead;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/api/ApiCallback$Holder;Lcom/sightcall/universal/agent/Lead;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/api/ApiCallback$Holder<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/Lead;",
            ">;>;",
            "Lcom/sightcall/universal/agent/Lead;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sightcall/universal/api/ApiCallback;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;)V

    iput-object p2, p0, Lcom/sightcall/universal/agent/SendLeadCallback$Error;->lead:Lcom/sightcall/universal/agent/Lead;

    return-void
.end method


# virtual methods
.method public lead()Lcom/sightcall/universal/agent/Lead;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/SendLeadCallback$Error;->lead:Lcom/sightcall/universal/agent/Lead;

    return-object p0
.end method
