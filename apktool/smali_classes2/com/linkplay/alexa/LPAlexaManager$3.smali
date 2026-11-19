.class Lcom/linkplay/alexa/LPAlexaManager$3;
.super Lcom/linkplay/network/IOkHttpRequestCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/alexa/LPAlexaManager;->get(Ljava/lang/String;Ljava/lang/String;Lcom/linkplay/alexa/request/presenter/AlexaListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/linkplay/alexa/request/presenter/AlexaListener;


# direct methods
.method public constructor <init>(Lcom/linkplay/alexa/LPAlexaManager;Lcom/linkplay/alexa/request/presenter/AlexaListener;)V
    .locals 0

    iput-object p2, p0, Lcom/linkplay/alexa/LPAlexaManager$3;->val$callback:Lcom/linkplay/alexa/request/presenter/AlexaListener;

    invoke-direct {p0}, Lcom/linkplay/network/IOkHttpRequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/linkplay/alexa/LPAlexaManager$3;->val$callback:Lcom/linkplay/alexa/request/presenter/AlexaListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/linkplay/alexa/request/presenter/AlexaListener;->onFail(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/linkplay/network/OkHttpResponseItem;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "err"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/linkplay/alexa/LPAlexaManager$3;->onFailure(Ljava/lang/Exception;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/linkplay/network/OkHttpResponseItem;->bytes:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iget p1, p1, Lcom/linkplay/network/OkHttpResponseItem;->code:I

    const/16 v1, 0xc8

    if-lt p1, v1, :cond_1

    const/16 v1, 0x12c

    if-ge p1, v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, "failed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string v0, "Success"

    :cond_1
    iget-object p0, p0, Lcom/linkplay/alexa/LPAlexaManager$3;->val$callback:Lcom/linkplay/alexa/request/presenter/AlexaListener;

    if-eqz p0, :cond_2

    invoke-interface {p0, v0}, Lcom/linkplay/alexa/request/presenter/AlexaListener;->onSuccess(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
