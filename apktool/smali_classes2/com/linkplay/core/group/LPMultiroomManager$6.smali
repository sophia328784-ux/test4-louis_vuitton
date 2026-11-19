.class Lcom/linkplay/core/group/LPMultiroomManager$6;
.super Lcom/linkplay/network/IOkHttpRequestCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/core/group/LPMultiroomManager;->deviceLeaveGroup(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/core/group/LPMultiroomListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/core/group/LPMultiroomManager;

.field final synthetic val$listener:Lcom/linkplay/core/group/LPMultiroomListener;

.field final synthetic val$source:Lcom/linkplay/core/device/LPDevice;


# direct methods
.method public constructor <init>(Lcom/linkplay/core/group/LPMultiroomManager;Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/core/group/LPMultiroomListener;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/group/LPMultiroomManager$6;->this$0:Lcom/linkplay/core/group/LPMultiroomManager;

    iput-object p2, p0, Lcom/linkplay/core/group/LPMultiroomManager$6;->val$source:Lcom/linkplay/core/device/LPDevice;

    iput-object p3, p0, Lcom/linkplay/core/group/LPMultiroomManager$6;->val$listener:Lcom/linkplay/core/group/LPMultiroomListener;

    invoke-direct {p0}, Lcom/linkplay/network/IOkHttpRequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/linkplay/network/IOkHttpRequestCallback;->onFailure(Ljava/lang/Exception;)V

    iget-object p0, p0, Lcom/linkplay/core/group/LPMultiroomManager$6;->val$listener:Lcom/linkplay/core/group/LPMultiroomListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/linkplay/core/group/LPMultiroomListener;->failed(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/linkplay/network/OkHttpResponseItem;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/linkplay/network/IOkHttpRequestCallback;->onSuccess(Lcom/linkplay/network/OkHttpResponseItem;)V

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "err"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/linkplay/core/group/LPMultiroomManager$6;->onFailure(Ljava/lang/Exception;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/linkplay/core/group/LPMultiroomManager$6;->this$0:Lcom/linkplay/core/group/LPMultiroomManager;

    iget-object v0, p0, Lcom/linkplay/core/group/LPMultiroomManager$6;->val$source:Lcom/linkplay/core/device/LPDevice;

    iget-object p0, p0, Lcom/linkplay/core/group/LPMultiroomManager$6;->val$listener:Lcom/linkplay/core/group/LPMultiroomListener;

    invoke-static {p1, v0, p0}, Lcom/linkplay/core/group/LPMultiroomManager;->g(Lcom/linkplay/core/group/LPMultiroomManager;Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/core/group/LPMultiroomListener;)V

    return-void
.end method
