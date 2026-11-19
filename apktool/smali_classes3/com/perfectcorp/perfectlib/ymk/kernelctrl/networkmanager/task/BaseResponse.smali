.class public Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/BaseResponse;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lorg/json/JSONObject;

.field public final c:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager$ResponseStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/BaseResponse;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/BaseResponse;->b:Lorg/json/JSONObject;

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager$ResponseStatus;->OK:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager$ResponseStatus;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/BaseResponse;->c:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager$ResponseStatus;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/BaseResponse;->a:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/BaseResponse;->b:Lorg/json/JSONObject;

    const-string p1, "status"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager$ResponseStatus;->ERROR:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager$ResponseStatus;

    :goto_0
    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/BaseResponse;->c:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager$ResponseStatus;

    return-void

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager$ResponseStatus;->valueOf(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager$ResponseStatus;

    move-result-object p1

    goto :goto_0
.end method
