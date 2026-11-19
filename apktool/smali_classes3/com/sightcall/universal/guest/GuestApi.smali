.class public interface abstract Lcom/sightcall/universal/guest/GuestApi;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract calls(Lcom/sightcall/universal/api/Headers$Authorization$Bearer;Lcom/sightcall/universal/api/JsonApi$Wrapper;)Lretrofit2/Call;
    .param p1    # Lcom/sightcall/universal/api/Headers$Authorization$Bearer;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Authorization-Hash"
        .end annotation
    .end param
    .param p2    # Lcom/sightcall/universal/api/JsonApi$Wrapper;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/api/Headers$Authorization$Bearer;",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/guest/Calls;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/guest/Calls;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/vnd.api+json",
            "Content-Type: application/vnd.api+json; charset=UTF-8"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v2/calls"
    .end annotation
.end method

.method public abstract cancelAgent(Lcom/sightcall/universal/api/Headers$Authorization$TokenReference;Ljava/lang/String;Lcom/sightcall/universal/guest/AgentHttpAcd$Cancel;)Lretrofit2/Call;
    .param p1    # Lcom/sightcall/universal/api/Headers$Authorization$TokenReference;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p3    # Lcom/sightcall/universal/guest/AgentHttpAcd$Cancel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/api/Headers$Authorization$TokenReference;",
            "Ljava/lang/String;",
            "Lcom/sightcall/universal/guest/AgentHttpAcd$Cancel;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "v1.7/external/agentRequests/{id}"
    .end annotation
.end method

.method public abstract cancelAgent(Lcom/sightcall/universal/api/Headers$Authorization$TokenReference;Lokhttp3/HttpUrl;Lcom/sightcall/universal/guest/AgentHttpAcd$Cancel;)Lretrofit2/Call;
    .param p1    # Lcom/sightcall/universal/api/Headers$Authorization$TokenReference;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Authorization"
        .end annotation
    .end param
    .param p2    # Lokhttp3/HttpUrl;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .param p3    # Lcom/sightcall/universal/guest/AgentHttpAcd$Cancel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/api/Headers$Authorization$TokenReference;",
            "Lokhttp3/HttpUrl;",
            "Lcom/sightcall/universal/guest/AgentHttpAcd$Cancel;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
    .end annotation
.end method

.method public abstract requestAgent(Lcom/sightcall/universal/api/Headers$Authorization$TokenReference;Lcom/sightcall/universal/guest/AgentHttpAcd$Request;)Lretrofit2/Call;
    .param p1    # Lcom/sightcall/universal/api/Headers$Authorization$TokenReference;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Authorization"
        .end annotation
    .end param
    .param p2    # Lcom/sightcall/universal/guest/AgentHttpAcd$Request;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/api/Headers$Authorization$TokenReference;",
            "Lcom/sightcall/universal/guest/AgentHttpAcd$Request;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/sightcall/universal/guest/AgentHttpAcd$Result;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1.7/external/agentRequests"
    .end annotation
.end method

.method public abstract requestAgent(Lcom/sightcall/universal/api/Headers$Authorization$TokenReference;Lokhttp3/HttpUrl;Lcom/sightcall/universal/guest/AgentHttpAcd$Request;)Lretrofit2/Call;
    .param p1    # Lcom/sightcall/universal/api/Headers$Authorization$TokenReference;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Authorization"
        .end annotation
    .end param
    .param p2    # Lokhttp3/HttpUrl;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .param p3    # Lcom/sightcall/universal/guest/AgentHttpAcd$Request;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/api/Headers$Authorization$TokenReference;",
            "Lokhttp3/HttpUrl;",
            "Lcom/sightcall/universal/guest/AgentHttpAcd$Request;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/sightcall/universal/guest/AgentHttpAcd$Result;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
    .end annotation
.end method
