.class Lcom/sightcall/universal/agent/UniversalAgent$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/agent/RefreshCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/agent/UniversalAgent;->fetchUsecases(Lcom/sightcall/universal/agent/FetchUsecasesCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/agent/UniversalAgent;

.field final synthetic val$cb:Lcom/sightcall/universal/agent/FetchUsecasesCallback;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/FetchUsecasesCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgent$19;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    iput-object p2, p0, Lcom/sightcall/universal/agent/UniversalAgent$19;->val$cb:Lcom/sightcall/universal/agent/FetchUsecasesCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshError(Lcom/sightcall/universal/agent/RefreshCallback$Error;)V
    .locals 1

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$19;->val$cb:Lcom/sightcall/universal/agent/FetchUsecasesCallback;

    new-instance v0, Lcom/sightcall/universal/agent/FetchUsecasesCallback$Error;

    invoke-static {p1}, Lcom/sightcall/universal/api/ApiCallback$Holder;->hold(Lcom/sightcall/universal/api/ApiCallback;)Lcom/sightcall/universal/api/ApiCallback$Holder;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sightcall/universal/agent/FetchUsecasesCallback$Error;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;)V

    invoke-interface {p0, v0}, Lcom/sightcall/universal/agent/FetchUsecasesCallback;->onFetchUsecasesError(Lcom/sightcall/universal/agent/FetchUsecasesCallback$Error;)V

    return-void
.end method

.method public onRefreshSuccess(Lcom/sightcall/universal/agent/RefreshCallback$Success;)V
    .locals 2

    invoke-static {p1}, Lcom/sightcall/universal/api/ApiCallback$Holder;->hold(Lcom/sightcall/universal/api/ApiCallback;)Lcom/sightcall/universal/api/ApiCallback$Holder;

    move-result-object p1

    iget-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgent$19;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->usecases()Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$19;->val$cb:Lcom/sightcall/universal/agent/FetchUsecasesCallback;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sightcall/universal/agent/FetchUsecasesCallback$Error;

    invoke-direct {v0, p1}, Lcom/sightcall/universal/agent/FetchUsecasesCallback$Error;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;)V

    invoke-interface {p0, v0}, Lcom/sightcall/universal/agent/FetchUsecasesCallback;->onFetchUsecasesError(Lcom/sightcall/universal/agent/FetchUsecasesCallback$Error;)V

    return-void

    :cond_0
    new-instance v1, Lcom/sightcall/universal/agent/FetchUsecasesCallback$Success;

    invoke-direct {v1, p1, v0}, Lcom/sightcall/universal/agent/FetchUsecasesCallback$Success;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;Ljava/util/List;)V

    invoke-interface {p0, v1}, Lcom/sightcall/universal/agent/FetchUsecasesCallback;->onFetchUsecasesSuccess(Lcom/sightcall/universal/agent/FetchUsecasesCallback$Success;)V

    return-void
.end method
