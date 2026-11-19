.class Lcom/sightcall/universal/agent/UniversalAgent$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/agent/UniversalAgent;->resendTemporaryToken(Lcom/sightcall/universal/agent/TemporaryToken;Lcom/sightcall/universal/agent/ResendTemporaryTokenCallback;)V
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

.field final synthetic val$cb:Lcom/sightcall/universal/agent/ResendTemporaryTokenCallback;

.field final synthetic val$temporaryToken:Lcom/sightcall/universal/agent/TemporaryToken;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/ResendTemporaryTokenCallback;Lcom/sightcall/universal/agent/TemporaryToken;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgent$11;->this$0:Lcom/sightcall/universal/agent/UniversalAgent;

    iput-object p2, p0, Lcom/sightcall/universal/agent/UniversalAgent$11;->val$cb:Lcom/sightcall/universal/agent/ResendTemporaryTokenCallback;

    iput-object p3, p0, Lcom/sightcall/universal/agent/UniversalAgent$11;->val$temporaryToken:Lcom/sightcall/universal/agent/TemporaryToken;

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

    iget-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgent$11;->val$cb:Lcom/sightcall/universal/agent/ResendTemporaryTokenCallback;

    new-instance v1, Lcom/sightcall/universal/agent/ResendTemporaryTokenCallback$Error;

    invoke-static {p1, p2}, Lcom/sightcall/universal/api/ApiCallback$Holder;->hold(Lretrofit2/Call;Ljava/lang/Throwable;)Lcom/sightcall/universal/api/ApiCallback$Holder;

    move-result-object p1

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$11;->val$temporaryToken:Lcom/sightcall/universal/agent/TemporaryToken;

    invoke-direct {v1, p1, p0}, Lcom/sightcall/universal/agent/ResendTemporaryTokenCallback$Error;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;Lcom/sightcall/universal/agent/TemporaryToken;)V

    invoke-interface {v0, v1}, Lcom/sightcall/universal/agent/ResendTemporaryTokenCallback;->onResendTemporaryTokenError(Lcom/sightcall/universal/agent/ResendTemporaryTokenCallback$Error;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
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

    iget-object p2, p0, Lcom/sightcall/universal/agent/UniversalAgent$11;->val$cb:Lcom/sightcall/universal/agent/ResendTemporaryTokenCallback;

    new-instance v0, Lcom/sightcall/universal/agent/ResendTemporaryTokenCallback$Error;

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$11;->val$temporaryToken:Lcom/sightcall/universal/agent/TemporaryToken;

    invoke-direct {v0, p1, p0}, Lcom/sightcall/universal/agent/ResendTemporaryTokenCallback$Error;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;Lcom/sightcall/universal/agent/TemporaryToken;)V

    invoke-interface {p2, v0}, Lcom/sightcall/universal/agent/ResendTemporaryTokenCallback;->onResendTemporaryTokenError(Lcom/sightcall/universal/agent/ResendTemporaryTokenCallback$Error;)V

    return-void

    :cond_0
    iget-object p2, p2, Lretrofit2/Response;->b:Ljava/lang/Object;

    check-cast p2, Lcom/sightcall/universal/api/JsonApi$Wrapper;

    invoke-static {p2}, Lcom/sightcall/universal/api/JsonApi$Wrapper;->unwrap(Lcom/sightcall/universal/api/JsonApi$Wrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sightcall/universal/agent/TemporaryToken;

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgent$11;->val$temporaryToken:Lcom/sightcall/universal/agent/TemporaryToken;

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/TemporaryToken;->id()Ljava/lang/String;

    move-result-object v0

    iget-object p2, p2, Lcom/sightcall/universal/agent/TemporaryToken;->id:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/sightcall/universal/agent/UniversalAgent$11;->val$temporaryToken:Lcom/sightcall/universal/agent/TemporaryToken;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/sightcall/universal/agent/TemporaryToken;->isResent:Z

    iget-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgent$11;->val$cb:Lcom/sightcall/universal/agent/ResendTemporaryTokenCallback;

    new-instance v1, Lcom/sightcall/universal/agent/ResendTemporaryTokenCallback$Success;

    invoke-direct {v1, p1, p2}, Lcom/sightcall/universal/agent/ResendTemporaryTokenCallback$Success;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;Lcom/sightcall/universal/agent/TemporaryToken;)V

    invoke-interface {v0, v1}, Lcom/sightcall/universal/agent/ResendTemporaryTokenCallback;->onResendTemporaryTokenSuccess(Lcom/sightcall/universal/agent/ResendTemporaryTokenCallback$Success;)V

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object p1

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$11;->val$temporaryToken:Lcom/sightcall/universal/agent/TemporaryToken;

    invoke-virtual {p1, p0}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    return-void

    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/sightcall/universal/agent/UniversalAgent$11;->val$cb:Lcom/sightcall/universal/agent/ResendTemporaryTokenCallback;

    new-instance v0, Lcom/sightcall/universal/agent/ResendTemporaryTokenCallback$Error;

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent$11;->val$temporaryToken:Lcom/sightcall/universal/agent/TemporaryToken;

    invoke-direct {v0, p1, p0}, Lcom/sightcall/universal/agent/ResendTemporaryTokenCallback$Error;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;Lcom/sightcall/universal/agent/TemporaryToken;)V

    invoke-interface {p2, v0}, Lcom/sightcall/universal/agent/ResendTemporaryTokenCallback;->onResendTemporaryTokenError(Lcom/sightcall/universal/agent/ResendTemporaryTokenCallback$Error;)V

    return-void
.end method
