.class public Lcom/sightcall/universal/agent/CreateCodeCallback$Error;
.super Lcom/sightcall/universal/api/ApiCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/CreateCodeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Error"
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
.field final code:Lcom/sightcall/universal/agent/CreateCode;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/agent/CreateCode;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/api/ApiCallback;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/agent/CreateCodeCallback$Error;->code:Lcom/sightcall/universal/agent/CreateCode;

    return-void
.end method

.method public constructor <init>(Lcom/sightcall/universal/api/ApiCallback$Holder;Lcom/sightcall/universal/agent/CreateCode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/api/ApiCallback$Holder<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/Pincode;",
            ">;>;",
            "Lcom/sightcall/universal/agent/CreateCode;",
            ")V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1}, Lcom/sightcall/universal/api/ApiCallback;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;)V

    .line 7
    iput-object p2, p0, Lcom/sightcall/universal/agent/CreateCodeCallback$Error;->code:Lcom/sightcall/universal/agent/CreateCode;

    return-void
.end method


# virtual methods
.method public code()Lcom/sightcall/universal/agent/CreateCode;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/CreateCodeCallback$Error;->code:Lcom/sightcall/universal/agent/CreateCode;

    return-object p0
.end method
