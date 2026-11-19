.class Lcom/sightcall/universal/ar/UniversalAr$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/ar/UniversalAr;->upload(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/ar/ArPictureUpload;Lcom/sightcall/universal/ar/ArPictureUploadCallback;)V
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
        "Lcom/sightcall/universal/ar/ArPictureUpload;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/ar/UniversalAr;

.field final synthetic val$callback:Lcom/sightcall/universal/ar/ArPictureUploadCallback;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/ar/UniversalAr;Lcom/sightcall/universal/ar/ArPictureUploadCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/ar/UniversalAr$1;->this$0:Lcom/sightcall/universal/ar/UniversalAr;

    iput-object p2, p0, Lcom/sightcall/universal/ar/UniversalAr$1;->val$callback:Lcom/sightcall/universal/ar/ArPictureUploadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/ar/ArPictureUpload;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/sightcall/universal/ar/UniversalAr;->a()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/sightcall/universal/ar/UniversalAr$1;->val$callback:Lcom/sightcall/universal/ar/ArPictureUploadCallback;

    new-instance p1, Lcom/sightcall/universal/ar/ArPictureUploadCallback$Error;

    invoke-direct {p1}, Lcom/sightcall/universal/ar/ArPictureUploadCallback$Error;-><init>()V

    invoke-interface {p0, p1}, Lcom/sightcall/universal/ar/ArPictureUploadCallback;->onUploadPictureError(Lcom/sightcall/universal/ar/ArPictureUploadCallback$Error;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/ar/ArPictureUpload;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/ar/ArPictureUpload;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p2, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget-boolean v0, v0, Lokhttp3/Response;->r:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/ar/UniversalAr$1;->val$callback:Lcom/sightcall/universal/ar/ArPictureUploadCallback;

    new-instance p1, Lcom/sightcall/universal/ar/ArPictureUploadCallback$Error;

    invoke-direct {p1}, Lcom/sightcall/universal/ar/ArPictureUploadCallback$Error;-><init>()V

    invoke-interface {p0, p1}, Lcom/sightcall/universal/ar/ArPictureUploadCallback;->onUploadPictureError(Lcom/sightcall/universal/ar/ArPictureUploadCallback$Error;)V

    return-void

    :cond_0
    iget-object v0, p2, Lretrofit2/Response;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sightcall/universal/api/JsonApi$Wrapper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sightcall/universal/api/JsonApi$Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/universal/ar/ArPictureUpload;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/sightcall/universal/ar/UniversalAr$1;->val$callback:Lcom/sightcall/universal/ar/ArPictureUploadCallback;

    if-nez v0, :cond_2

    new-instance p1, Lcom/sightcall/universal/ar/ArPictureUploadCallback$Error;

    invoke-direct {p1}, Lcom/sightcall/universal/ar/ArPictureUploadCallback$Error;-><init>()V

    invoke-interface {p0, p1}, Lcom/sightcall/universal/ar/ArPictureUploadCallback;->onUploadPictureError(Lcom/sightcall/universal/ar/ArPictureUploadCallback$Error;)V

    return-void

    :cond_2
    new-instance v1, Lcom/sightcall/universal/ar/ArPictureUploadCallback$Success;

    invoke-static {p1, p2}, Lcom/sightcall/universal/api/ApiCallback$Holder;->hold(Lretrofit2/Call;Lretrofit2/Response;)Lcom/sightcall/universal/api/ApiCallback$Holder;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/sightcall/universal/ar/ArPictureUploadCallback$Success;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;Lcom/sightcall/universal/ar/ArPictureUpload;)V

    invoke-interface {p0, v1}, Lcom/sightcall/universal/ar/ArPictureUploadCallback;->onUploadPictureSuccess(Lcom/sightcall/universal/ar/ArPictureUploadCallback$Success;)V

    return-void
.end method
