.class Lcom/linkplay/alexa/LPAlexaManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linkplay/alexa/LPAlexaLoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/alexa/LPAlexaManager;->setAuthcode(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/alexa/LPAlexaListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/linkplay/alexa/LPAlexaListener;


# direct methods
.method public constructor <init>(Lcom/linkplay/alexa/LPAlexaManager;Lcom/linkplay/alexa/LPAlexaListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/linkplay/alexa/LPAlexaManager$2;->val$listener:Lcom/linkplay/alexa/LPAlexaListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object p0, p0, Lcom/linkplay/alexa/LPAlexaManager$2;->val$listener:Lcom/linkplay/alexa/LPAlexaListener;

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Cancel Set Code"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/linkplay/alexa/request/presenter/AlexaListener;->onFail(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public loginFailed(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/linkplay/alexa/LPAlexaManager$2;->val$listener:Lcom/linkplay/alexa/LPAlexaListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/linkplay/alexa/request/presenter/AlexaListener;->onFail(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public loginSuccess()V
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "Result"

    const-string v2, "Success"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/linkplay/alexa/LPAlexaManager$2;->val$listener:Lcom/linkplay/alexa/LPAlexaListener;

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/linkplay/alexa/request/presenter/AlexaListener;->onSuccess(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public startLogin()V
    .locals 0

    return-void
.end method
