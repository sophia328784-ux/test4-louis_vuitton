.class public Lcom/sightcall/universal/agent/RefreshCallback$Success;
.super Lcom/sightcall/universal/api/ApiCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/RefreshCallback;
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
.field private final agent:Lcom/sightcall/universal/agent/Agent;

.field private final code:Lcom/sightcall/universal/agent/Code;

.field private final consent:Lcom/sightcall/universal/agent/Consent;

.field private final usecases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sightcall/universal/agent/Usecase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/api/ApiCallback$Holder;Lcom/sightcall/universal/agent/Agent;Ljava/util/List;Lcom/sightcall/universal/agent/Consent;Lcom/sightcall/universal/agent/Code;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/api/ApiCallback$Holder<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/Identity;",
            ">;>;",
            "Lcom/sightcall/universal/agent/Agent;",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/agent/Usecase;",
            ">;",
            "Lcom/sightcall/universal/agent/Consent;",
            "Lcom/sightcall/universal/agent/Code;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sightcall/universal/api/ApiCallback;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;)V

    iput-object p2, p0, Lcom/sightcall/universal/agent/RefreshCallback$Success;->agent:Lcom/sightcall/universal/agent/Agent;

    iput-object p3, p0, Lcom/sightcall/universal/agent/RefreshCallback$Success;->usecases:Ljava/util/List;

    iput-object p4, p0, Lcom/sightcall/universal/agent/RefreshCallback$Success;->consent:Lcom/sightcall/universal/agent/Consent;

    iput-object p5, p0, Lcom/sightcall/universal/agent/RefreshCallback$Success;->code:Lcom/sightcall/universal/agent/Code;

    return-void
.end method


# virtual methods
.method public agent()Lcom/sightcall/universal/agent/Agent;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/RefreshCallback$Success;->agent:Lcom/sightcall/universal/agent/Agent;

    return-object p0
.end method

.method public code()Lcom/sightcall/universal/agent/Code;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/RefreshCallback$Success;->code:Lcom/sightcall/universal/agent/Code;

    return-object p0
.end method

.method public consent()Lcom/sightcall/universal/agent/Consent;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/RefreshCallback$Success;->consent:Lcom/sightcall/universal/agent/Consent;

    return-object p0
.end method

.method public usecases()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/agent/Usecase;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/universal/agent/RefreshCallback$Success;->usecases:Ljava/util/List;

    return-object p0
.end method
