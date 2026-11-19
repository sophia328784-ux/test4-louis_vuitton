.class public final synthetic Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a$a;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/e;->b:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a$a;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Lcom/perfectcorp/common/network/RequestTask$Response;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/e;->b:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a$a;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a$a;->a:Ljava/lang/String;

    iget v0, p1, Lcom/perfectcorp/common/network/RequestTask$Response;->a:I

    const/16 v1, 0x190

    if-ge v0, v1, :cond_1

    iget-object v0, p1, Lcom/perfectcorp/common/network/RequestTask$Response;->b:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[InitRequest][init] got response. domain="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/BaseResponse;->a:Ljava/lang/String;

    const/4 v3, 0x3

    const-string v4, "SDKInitHandler"

    invoke-static {v1, v2, v3, v4}, La;->A(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/BaseResponse;->c:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager$ResponseStatus;

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager$ResponseStatus;->OK:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager$ResponseStatus;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager$StatusErrorException;

    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager$StatusErrorException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method
