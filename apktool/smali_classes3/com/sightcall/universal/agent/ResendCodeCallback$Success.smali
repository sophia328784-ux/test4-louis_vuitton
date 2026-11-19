.class public Lcom/sightcall/universal/agent/ResendCodeCallback$Success;
.super Lcom/sightcall/universal/api/ApiCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/ResendCodeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Success"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sightcall/universal/api/ApiCallback<",
        "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
        "Lcom/sightcall/universal/agent/Pincode;",
        ">;>;"
    }
.end annotation


# instance fields
.field final code:Lcom/sightcall/universal/agent/Code;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/api/ApiCallback$Holder;Lcom/sightcall/universal/agent/Code;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/api/ApiCallback$Holder<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/Pincode;",
            ">;>;",
            "Lcom/sightcall/universal/agent/Code;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sightcall/universal/api/ApiCallback;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;)V

    iput-object p2, p0, Lcom/sightcall/universal/agent/ResendCodeCallback$Success;->code:Lcom/sightcall/universal/agent/Code;

    return-void
.end method


# virtual methods
.method public code()Lcom/sightcall/universal/agent/Code;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/ResendCodeCallback$Success;->code:Lcom/sightcall/universal/agent/Code;

    return-object p0
.end method
