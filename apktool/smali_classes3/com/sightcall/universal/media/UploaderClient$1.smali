.class Lcom/sightcall/universal/media/UploaderClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/media/UploaderClient;->upload(Lcom/sightcall/universal/media/Metadata;Lcom/sightcall/universal/media/Media;Lcom/sightcall/universal/media/UploaderClient$UploadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/sightcall/universal/media/UploaderClient$UploadCallback;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/media/UploaderClient$UploadCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/media/UploaderClient$1;->val$callback:Lcom/sightcall/universal/media/UploaderClient$UploadCallback;

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
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/sightcall/universal/media/UploaderClient;->a()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p1

    const-string v0, "onFailure()"

    invoke-virtual {p1, v0, p2}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/sightcall/universal/media/UploaderClient$1;->val$callback:Lcom/sightcall/universal/media/UploaderClient$UploadCallback;

    invoke-interface {p0}, Lcom/sightcall/universal/media/UploaderClient$UploadCallback;->onMediaUploadFailure()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Ljava/lang/Void;",
            ">;",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p2, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget-boolean p2, p1, Lokhttp3/Response;->r:Z

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/sightcall/universal/media/UploaderClient;->a()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p1

    const-string p2, "onResponse()"

    invoke-virtual {p1, p2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sightcall/universal/media/UploaderClient$1;->val$callback:Lcom/sightcall/universal/media/UploaderClient$UploadCallback;

    invoke-interface {p0}, Lcom/sightcall/universal/media/UploaderClient$UploadCallback;->onMediaUploadSuccess()V

    return-void

    :cond_0
    invoke-static {}, Lcom/sightcall/universal/media/UploaderClient;->a()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onResponse() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lokhttp3/Response;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lokhttp3/Response;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sightcall/universal/media/UploaderClient$1;->val$callback:Lcom/sightcall/universal/media/UploaderClient$UploadCallback;

    invoke-interface {p0}, Lcom/sightcall/universal/media/UploaderClient$UploadCallback;->onMediaUploadFailure()V

    return-void
.end method
