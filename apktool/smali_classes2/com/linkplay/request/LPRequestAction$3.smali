.class Lcom/linkplay/request/LPRequestAction$3;
.super Lcom/linkplay/network/IOkHttpRequestCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/request/LPRequestAction;->switchInputSource(Ljava/lang/String;Ljava/lang/String;Lcom/linkplay/network/IOkHttpRequestCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/linkplay/network/IOkHttpRequestCallback;


# direct methods
.method public constructor <init>(Lcom/linkplay/request/LPRequestAction;Lcom/linkplay/network/IOkHttpRequestCallback;)V
    .locals 0

    iput-object p2, p0, Lcom/linkplay/request/LPRequestAction$3;->val$listener:Lcom/linkplay/network/IOkHttpRequestCallback;

    invoke-direct {p0}, Lcom/linkplay/network/IOkHttpRequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/linkplay/network/IOkHttpRequestCallback;->onFailure(Ljava/lang/Exception;)V

    iget-object p0, p0, Lcom/linkplay/request/LPRequestAction$3;->val$listener:Lcom/linkplay/network/IOkHttpRequestCallback;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/linkplay/network/IOkHttpRequestCallback;->onFailure(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/linkplay/network/OkHttpResponseItem;)V
    .locals 0

    iget-object p0, p0, Lcom/linkplay/request/LPRequestAction$3;->val$listener:Lcom/linkplay/network/IOkHttpRequestCallback;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/linkplay/network/IOkHttpRequestCallback;->onSuccess(Lcom/linkplay/network/OkHttpResponseItem;)V

    :cond_0
    return-void
.end method
