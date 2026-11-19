.class interface abstract Lcom/sightcall/universal/ocr/OcrApi;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract upload(Lcom/sightcall/universal/api/Headers$Authorization$Bearer;Lokhttp3/MultipartBody$Part;Lokhttp3/MultipartBody$Part;)Lretrofit2/Call;
    .param p1    # Lcom/sightcall/universal/api/Headers$Authorization$Bearer;
        .annotation runtime Lretrofit2/http/Header;
            value = "X-Authorization-Hash"
        .end annotation
    .end param
    .param p2    # Lokhttp3/MultipartBody$Part;
        .annotation runtime Lretrofit2/http/Part;
        .end annotation
    .end param
    .param p3    # Lokhttp3/MultipartBody$Part;
        .annotation runtime Lretrofit2/http/Part;
        .end annotation
    .end param
    .annotation runtime Lcom/sightcall/universal/agent/Timeout;
        read = 0x14
        unit = .enum Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
        write = 0x14
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/api/Headers$Authorization$Bearer;",
            "Lokhttp3/MultipartBody$Part;",
            "Lokhttp3/MultipartBody$Part;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/vnd.api+json"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Multipart;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v2/ocr"
    .end annotation
.end method
