.class public Lcom/sightcall/universal/agent/FetchUsecaseCallback$Success;
.super Lcom/sightcall/universal/api/ApiCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/FetchUsecaseCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Success"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sightcall/universal/api/ApiCallback<",
        "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
        "Lcom/sightcall/universal/agent/Usecase;",
        ">;>;"
    }
.end annotation


# instance fields
.field final usecase:Lcom/sightcall/universal/agent/Usecase;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/api/ApiCallback$Holder;Lcom/sightcall/universal/agent/Usecase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/api/ApiCallback$Holder<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/Usecase;",
            ">;>;",
            "Lcom/sightcall/universal/agent/Usecase;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sightcall/universal/api/ApiCallback;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;)V

    iput-object p2, p0, Lcom/sightcall/universal/agent/FetchUsecaseCallback$Success;->usecase:Lcom/sightcall/universal/agent/Usecase;

    return-void
.end method


# virtual methods
.method public usecase()Lcom/sightcall/universal/agent/Usecase;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/FetchUsecaseCallback$Success;->usecase:Lcom/sightcall/universal/agent/Usecase;

    return-object p0
.end method
