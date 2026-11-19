.class Lcom/sightcall/universal/ocr/OcrClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/ocr/OcrClient;->upload(Lcom/sightcall/universal/model/Session;[BLnet/rtccloud/sdk/VideoModule$CameraSource;ILcom/sightcall/universal/ocr/OcrClient$UploadCallback;)Lretrofit2/Call;
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
.field final synthetic val$callback:Lcom/sightcall/universal/ocr/OcrClient$UploadCallback;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/ocr/OcrClient$UploadCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/ocr/OcrClient$1;->val$callback:Lcom/sightcall/universal/ocr/OcrClient$UploadCallback;

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
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/universal/ocr/OcrClient$1;->val$callback:Lcom/sightcall/universal/ocr/OcrClient$UploadCallback;

    invoke-interface {p0}, Lcom/sightcall/universal/ocr/OcrClient$UploadCallback;->onUploadFailure()V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 0
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

    iget-boolean p1, p1, Lokhttp3/Response;->r:Z

    iget-object p0, p0, Lcom/sightcall/universal/ocr/OcrClient$1;->val$callback:Lcom/sightcall/universal/ocr/OcrClient$UploadCallback;

    if-nez p1, :cond_0

    invoke-interface {p0}, Lcom/sightcall/universal/ocr/OcrClient$UploadCallback;->onUploadError()V

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sightcall/universal/ocr/OcrClient$UploadCallback;->onUploadSuccess()V

    return-void
.end method
