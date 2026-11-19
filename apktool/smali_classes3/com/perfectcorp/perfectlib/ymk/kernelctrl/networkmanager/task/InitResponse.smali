.class public final Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse;
.super Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/BaseResponse;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$a;,
        Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse$b;
    }
.end annotation


# instance fields
.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/BaseResponse;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/BaseResponse;->c:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager$ResponseStatus;

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager$ResponseStatus;->OK:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager$ResponseStatus;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/BaseResponse;->b:Lorg/json/JSONObject;

    const-string v0, "testbeddomain"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse;->d:Ljava/lang/String;

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/BaseResponse;->b:Lorg/json/JSONObject;

    const-string v0, "productiondomain"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse;->e:Ljava/lang/String;

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/BaseResponse;->b:Lorg/json/JSONObject;

    const-string v0, "heServerDomain"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse;->f:Ljava/lang/String;

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/BaseResponse;->b:Lorg/json/JSONObject;

    const-string v0, "aiApiDomain"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse;->g:Ljava/lang/String;

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/BaseResponse;->b:Lorg/json/JSONObject;

    const-string v0, "aiTestApiDomain"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse;->h:Ljava/lang/String;

    return-void

    :cond_0
    const-string p0, "server status is not ok"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
