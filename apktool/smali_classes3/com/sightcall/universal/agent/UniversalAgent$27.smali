.class Lcom/sightcall/universal/agent/UniversalAgent$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/agent/UniversalAgent;->fetchUsecase(Ljava/lang/String;Lcom/sightcall/universal/agent/FetchUsecaseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
        "Lcom/sightcall/universal/agent/Usecase;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/agent/UniversalAgent;

.field final synthetic val$agent:Lcom/sightcall/universal/agent/Agent;

.field final synthetic val$cb:Lcom/sightcall/universal/agent/FetchUsecaseCallback;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/agent/FetchUsecaseCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgent$27;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    iput-object p2, p0, Lcom/sightcall/universal/agent/UniversalAgent$27;->val$agent:Lcom/sightcall/universal/agent/Agent;

    iput-object p3, p0, Lcom/sightcall/universal/agent/UniversalAgent$27;->val$cb:Lcom/sightcall/universal/agent/FetchUsecaseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/Usecase;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/sightcall/universal/agent/UniversalAgent;->o(Lretrofit2/Call;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$27;->val$cb:Lcom/sightcall/universal/agent/FetchUsecaseCallback;

    new-instance v0, Lcom/sightcall/universal/agent/FetchUsecaseCallback$Error;

    invoke-static {p1, p2}, Lcom/sightcall/universal/api/ApiCallback$Holder;->hold(Lretrofit2/Call;Ljava/lang/Throwable;)Lcom/sightcall/universal/api/ApiCallback$Holder;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sightcall/universal/agent/FetchUsecaseCallback$Error;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;)V

    invoke-interface {p0, v0}, Lcom/sightcall/universal/agent/FetchUsecaseCallback;->onFetchUsecaseError(Lcom/sightcall/universal/agent/FetchUsecaseCallback$Error;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/Usecase;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/Usecase;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/sightcall/universal/agent/UniversalAgent;->p(Lretrofit2/Call;Lretrofit2/Response;)V

    invoke-static {p1, p2}, Lcom/sightcall/universal/api/ApiCallback$Holder;->hold(Lretrofit2/Call;Lretrofit2/Response;)Lcom/sightcall/universal/api/ApiCallback$Holder;

    move-result-object v0

    iget-object v1, p0, Lcom/sightcall/universal/agent/UniversalAgent$27;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    iget-object v2, p0, Lcom/sightcall/universal/agent/UniversalAgent$27;->val$agent:Lcom/sightcall/universal/agent/Agent;

    invoke-static {v1, v2, p1, p2}, Lcom/sightcall/universal/agent/UniversalAgent;->k(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/Agent;Lretrofit2/Call;Lretrofit2/Response;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p2, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget-boolean p1, p1, Lokhttp3/Response;->r:Z

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p2, Lretrofit2/Response;->b:Ljava/lang/Object;

    check-cast p1, Lcom/sightcall/universal/api/JsonApi$Wrapper;

    invoke-static {p1}, Lcom/sightcall/universal/api/JsonApi$Wrapper;->unwrap(Lcom/sightcall/universal/api/JsonApi$Wrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sightcall/universal/agent/Usecase;

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$27;->val$cb:Lcom/sightcall/universal/agent/FetchUsecaseCallback;

    new-instance p1, Lcom/sightcall/universal/agent/FetchUsecaseCallback$Error;

    invoke-direct {p1, v0}, Lcom/sightcall/universal/agent/FetchUsecaseCallback$Error;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;)V

    invoke-interface {p0, p1}, Lcom/sightcall/universal/agent/FetchUsecaseCallback;->onFetchUsecaseError(Lcom/sightcall/universal/agent/FetchUsecaseCallback$Error;)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/sightcall/universal/agent/UniversalAgent$27;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-static {p2}, Lcom/sightcall/universal/agent/UniversalAgent;->h(Lcom/sightcall/universal/agent/UniversalAgent;)Lcom/sightcall/universal/util/Lazy;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sightcall/universal/util/Lazy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sightcall/universal/agent/Usecase;

    if-eqz v3, :cond_2

    iget-object v4, p1, Lcom/sightcall/universal/agent/Usecase;->id:Ljava/lang/String;

    iget-object v5, v3, Lcom/sightcall/universal/agent/Usecase;->id:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p2, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v2

    invoke-virtual {v2}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object v2

    invoke-virtual {v2, v3}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    const/4 v2, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    :cond_4
    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sightcall/universal/agent/UniversalAgent$27;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    invoke-static {v1}, Lcom/sightcall/universal/agent/UniversalAgent;->h(Lcom/sightcall/universal/agent/UniversalAgent;)Lcom/sightcall/universal/util/Lazy;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sightcall/universal/util/Lazy;->set(Ljava/lang/Object;)V

    :cond_5
    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$27;->val$cb:Lcom/sightcall/universal/agent/FetchUsecaseCallback;

    new-instance p2, Lcom/sightcall/universal/agent/FetchUsecaseCallback$Success;

    invoke-direct {p2, v0, p1}, Lcom/sightcall/universal/agent/FetchUsecaseCallback$Success;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;Lcom/sightcall/universal/agent/Usecase;)V

    invoke-interface {p0, p2}, Lcom/sightcall/universal/agent/FetchUsecaseCallback;->onFetchUsecaseSuccess(Lcom/sightcall/universal/agent/FetchUsecaseCallback$Success;)V

    return-void

    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$27;->val$cb:Lcom/sightcall/universal/agent/FetchUsecaseCallback;

    new-instance p1, Lcom/sightcall/universal/agent/FetchUsecaseCallback$Error;

    invoke-direct {p1, v0}, Lcom/sightcall/universal/agent/FetchUsecaseCallback$Error;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;)V

    invoke-interface {p0, p1}, Lcom/sightcall/universal/agent/FetchUsecaseCallback;->onFetchUsecaseError(Lcom/sightcall/universal/agent/FetchUsecaseCallback$Error;)V

    return-void
.end method
