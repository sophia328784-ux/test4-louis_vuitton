.class Lcom/sightcall/universal/agent/UniversalAgent$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/agent/UniversalAgent;->requestTemporaryToken(Lcom/sightcall/universal/agent/TemporaryToken;Lcom/sightcall/universal/agent/RequestTemporaryTokenCallback;)V
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
        "Lcom/sightcall/universal/agent/TemporaryToken;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/agent/UniversalAgent;

.field final synthetic val$cb:Lcom/sightcall/universal/agent/RequestTemporaryTokenCallback;

.field final synthetic val$temporaryToken:Lcom/sightcall/universal/agent/TemporaryToken;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/RequestTemporaryTokenCallback;Lcom/sightcall/universal/agent/TemporaryToken;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgent$10;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    iput-object p2, p0, Lcom/sightcall/universal/agent/UniversalAgent$10;->val$cb:Lcom/sightcall/universal/agent/RequestTemporaryTokenCallback;

    iput-object p3, p0, Lcom/sightcall/universal/agent/UniversalAgent$10;->val$temporaryToken:Lcom/sightcall/universal/agent/TemporaryToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/TemporaryToken;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/sightcall/universal/agent/UniversalAgent;->o(Lretrofit2/Call;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgent$10;->val$cb:Lcom/sightcall/universal/agent/RequestTemporaryTokenCallback;

    new-instance v1, Lcom/sightcall/universal/agent/RequestTemporaryTokenCallback$Error;

    invoke-static {p1, p2}, Lcom/sightcall/universal/api/ApiCallback$Holder;->hold(Lretrofit2/Call;Ljava/lang/Throwable;)Lcom/sightcall/universal/api/ApiCallback$Holder;

    move-result-object p1

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$10;->val$temporaryToken:Lcom/sightcall/universal/agent/TemporaryToken;

    invoke-direct {v1, p1, p0}, Lcom/sightcall/universal/agent/RequestTemporaryTokenCallback$Error;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;Lcom/sightcall/universal/agent/TemporaryToken;)V

    invoke-interface {v0, v1}, Lcom/sightcall/universal/agent/RequestTemporaryTokenCallback;->onRequestTemporaryTokenError(Lcom/sightcall/universal/agent/RequestTemporaryTokenCallback$Error;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/TemporaryToken;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/TemporaryToken;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/sightcall/universal/agent/UniversalAgent;->p(Lretrofit2/Call;Lretrofit2/Response;)V

    invoke-static {p1, p2}, Lcom/sightcall/universal/api/ApiCallback$Holder;->hold(Lretrofit2/Call;Lretrofit2/Response;)Lcom/sightcall/universal/api/ApiCallback$Holder;

    move-result-object p1

    iget-object v0, p2, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget-boolean v0, v0, Lokhttp3/Response;->r:Z

    if-nez v0, :cond_0

    iget-object p2, p0, Lcom/sightcall/universal/agent/UniversalAgent$10;->val$cb:Lcom/sightcall/universal/agent/RequestTemporaryTokenCallback;

    new-instance v0, Lcom/sightcall/universal/agent/RequestTemporaryTokenCallback$Error;

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$10;->val$temporaryToken:Lcom/sightcall/universal/agent/TemporaryToken;

    invoke-direct {v0, p1, p0}, Lcom/sightcall/universal/agent/RequestTemporaryTokenCallback$Error;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;Lcom/sightcall/universal/agent/TemporaryToken;)V

    invoke-interface {p2, v0}, Lcom/sightcall/universal/agent/RequestTemporaryTokenCallback;->onRequestTemporaryTokenError(Lcom/sightcall/universal/agent/RequestTemporaryTokenCallback$Error;)V

    return-void

    :cond_0
    iget-object p2, p2, Lretrofit2/Response;->b:Ljava/lang/Object;

    check-cast p2, Lcom/sightcall/universal/api/JsonApi$Wrapper;

    invoke-static {p2}, Lcom/sightcall/universal/api/JsonApi$Wrapper;->unwrap(Lcom/sightcall/universal/api/JsonApi$Wrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sightcall/universal/agent/TemporaryToken;

    iget-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgent$10;->val$cb:Lcom/sightcall/universal/agent/RequestTemporaryTokenCallback;

    if-nez p2, :cond_1

    new-instance p2, Lcom/sightcall/universal/agent/RequestTemporaryTokenCallback$Error;

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$10;->val$temporaryToken:Lcom/sightcall/universal/agent/TemporaryToken;

    invoke-direct {p2, p1, p0}, Lcom/sightcall/universal/agent/RequestTemporaryTokenCallback$Error;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;Lcom/sightcall/universal/agent/TemporaryToken;)V

    invoke-interface {v0, p2}, Lcom/sightcall/universal/agent/RequestTemporaryTokenCallback;->onRequestTemporaryTokenError(Lcom/sightcall/universal/agent/RequestTemporaryTokenCallback$Error;)V

    return-void

    :cond_1
    new-instance p0, Lcom/sightcall/universal/agent/RequestTemporaryTokenCallback$Success;

    invoke-direct {p0, p1, p2}, Lcom/sightcall/universal/agent/RequestTemporaryTokenCallback$Success;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;Lcom/sightcall/universal/agent/TemporaryToken;)V

    invoke-interface {v0, p0}, Lcom/sightcall/universal/agent/RequestTemporaryTokenCallback;->onRequestTemporaryTokenSuccess(Lcom/sightcall/universal/agent/RequestTemporaryTokenCallback$Success;)V

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object p0

    invoke-virtual {p0, p2}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
