.class Lcom/linkplay/alexa/LPAlexaManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/wiimu/upnp/IWiimuActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/alexa/LPAlexaManager;->getAlexaStatus(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/alexa/LPAlexaListener;)V
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

    iput-object p2, p0, Lcom/linkplay/alexa/LPAlexaManager$1;->val$listener:Lcom/linkplay/alexa/LPAlexaListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/linkplay/alexa/LPAlexaManager$1;->val$listener:Lcom/linkplay/alexa/LPAlexaListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/linkplay/alexa/request/presenter/AlexaListener;->onFail(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public success(Ljava/util/Map;)V
    .locals 1

    const-string v0, "Result"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Result error"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/linkplay/alexa/LPAlexaManager$1;->failure(Ljava/lang/Exception;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/linkplay/alexa/LPAlexaManager$1;->val$listener:Lcom/linkplay/alexa/LPAlexaListener;

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/linkplay/alexa/request/presenter/AlexaListener;->onSuccess(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
