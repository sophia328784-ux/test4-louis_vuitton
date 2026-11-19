.class public interface abstract Lcom/sightcall/universal/ar/ArApi;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract upload(Lcom/sightcall/universal/api/Headers$Authorization$Bearer;Lcom/sightcall/universal/api/JsonApi$Wrapper;)Lretrofit2/Call;
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
            "Lcom/sightcall/universal/ar/ArPictureUpload;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/ar/ArPictureUpload;",
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
        value = "v2/upload-pictures"
    .end annotation
.end method
