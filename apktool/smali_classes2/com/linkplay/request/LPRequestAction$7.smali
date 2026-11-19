.class Lcom/linkplay/request/LPRequestAction$7;
.super Lcom/linkplay/network/IOkHttpRequestCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/request/LPRequestAction;->hideSSID(ZLcom/linkplay/request/RequestItem;Lcom/linkplay/request/LPRequestAction$IRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/request/LPRequestAction;

.field final synthetic val$hide:Z

.field final synthetic val$listener:Lcom/linkplay/request/LPRequestAction$IRequestListener;

.field final synthetic val$requestItem:Lcom/linkplay/request/RequestItem;


# direct methods
.method public constructor <init>(Lcom/linkplay/request/LPRequestAction;ZLcom/linkplay/request/RequestItem;Lcom/linkplay/request/LPRequestAction$IRequestListener;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/request/LPRequestAction$7;->this$0:Lcom/linkplay/request/LPRequestAction;

    iput-boolean p2, p0, Lcom/linkplay/request/LPRequestAction$7;->val$hide:Z

    iput-object p3, p0, Lcom/linkplay/request/LPRequestAction$7;->val$requestItem:Lcom/linkplay/request/RequestItem;

    iput-object p4, p0, Lcom/linkplay/request/LPRequestAction$7;->val$listener:Lcom/linkplay/request/LPRequestAction$IRequestListener;

    invoke-direct {p0}, Lcom/linkplay/network/IOkHttpRequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/linkplay/network/IOkHttpRequestCallback;->onFailure(Ljava/lang/Exception;)V

    iget-object p0, p0, Lcom/linkplay/request/LPRequestAction$7;->val$listener:Lcom/linkplay/request/LPRequestAction$IRequestListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/linkplay/request/LPRequestAction$IRequestListener;->onFailed(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/linkplay/network/OkHttpResponseItem;)V
    .locals 2

    iget-boolean v0, p0, Lcom/linkplay/request/LPRequestAction$7;->val$hide:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/linkplay/request/LPRequestAction$7;->this$0:Lcom/linkplay/request/LPRequestAction;

    iget-object v0, p0, Lcom/linkplay/request/LPRequestAction$7;->val$requestItem:Lcom/linkplay/request/RequestItem;

    iget-object p0, p0, Lcom/linkplay/request/LPRequestAction$7;->val$listener:Lcom/linkplay/request/LPRequestAction$IRequestListener;

    invoke-static {p1, v0, p0}, Lcom/linkplay/request/LPRequestAction;->a(Lcom/linkplay/request/LPRequestAction;Lcom/linkplay/request/RequestItem;Lcom/linkplay/request/LPRequestAction$IRequestListener;)V

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object p1, p1, Lcom/linkplay/network/OkHttpResponseItem;->bytes:[B

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object p1, p0, Lcom/linkplay/request/LPRequestAction$7;->val$listener:Lcom/linkplay/request/LPRequestAction$IRequestListener;

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Lcom/linkplay/request/LPRequestAction$IRequestListener;->onSuccess(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    return-void

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0, p1}, Lcom/linkplay/request/LPRequestAction$7;->onFailure(Ljava/lang/Exception;)V

    return-void
.end method
