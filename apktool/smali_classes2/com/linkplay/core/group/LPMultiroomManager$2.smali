.class Lcom/linkplay/core/group/LPMultiroomManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linkplay/core/group/LPMultiroomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/core/group/LPMultiroomManager;->privateAddGroupDevices(Lcom/linkplay/core/device/LPDevice;Ljava/util/List;Lcom/linkplay/core/group/LPMultiroomListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/core/group/LPMultiroomManager;

.field final synthetic val$listener:Lcom/linkplay/core/group/LPMultiroomListener;


# direct methods
.method public constructor <init>(Lcom/linkplay/core/group/LPMultiroomManager;Lcom/linkplay/core/group/LPMultiroomListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/linkplay/core/group/LPMultiroomManager$2;->this$0:Lcom/linkplay/core/group/LPMultiroomManager;

    iput-object p2, p0, Lcom/linkplay/core/group/LPMultiroomManager$2;->val$listener:Lcom/linkplay/core/group/LPMultiroomListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failed(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lcom/linkplay/core/group/LPMultiroomManager$2;->this$0:Lcom/linkplay/core/group/LPMultiroomManager;

    invoke-static {v0}, Lcom/linkplay/core/group/LPMultiroomManager;->c(Lcom/linkplay/core/group/LPMultiroomManager;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/linkplay/core/group/LPMultiroomManager;->e(Lcom/linkplay/core/group/LPMultiroomManager;I)V

    invoke-static {v0}, Lcom/linkplay/core/group/LPMultiroomManager;->a(Lcom/linkplay/core/group/LPMultiroomManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "LPMultiroomManager deviceJoinGroup failed isJoinGroupFailed : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LINKPLAY_SDK"

    invoke-static {p1, p0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {v0}, Lcom/linkplay/core/group/LPMultiroomManager;->d(Lcom/linkplay/core/group/LPMultiroomManager;)V

    iget-object p0, p0, Lcom/linkplay/core/group/LPMultiroomManager$2;->val$listener:Lcom/linkplay/core/group/LPMultiroomListener;

    if-eqz p0, :cond_1

    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "current device add group failed -1001."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/linkplay/core/group/LPMultiroomListener;->failed(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/linkplay/core/group/LPMultiroomManager$2;->this$0:Lcom/linkplay/core/group/LPMultiroomManager;

    invoke-static {v0}, Lcom/linkplay/core/group/LPMultiroomManager;->c(Lcom/linkplay/core/group/LPMultiroomManager;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/linkplay/core/group/LPMultiroomManager;->e(Lcom/linkplay/core/group/LPMultiroomManager;I)V

    invoke-static {v0}, Lcom/linkplay/core/group/LPMultiroomManager;->a(Lcom/linkplay/core/group/LPMultiroomManager;)Z

    move-result v0

    const-string v1, "LINKPLAY_SDK"

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "LPMultiroomManager deviceJoinGroup success isJoinGroupFailed : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "LPMultiroomManager deviceJoinGroup success joinGroupIndex = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/linkplay/core/group/LPMultiroomManager$2;->this$0:Lcom/linkplay/core/group/LPMultiroomManager;

    invoke-static {v2}, Lcom/linkplay/core/group/LPMultiroomManager;->c(Lcom/linkplay/core/group/LPMultiroomManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , joinGroupCount= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linkplay/core/group/LPMultiroomManager$2;->this$0:Lcom/linkplay/core/group/LPMultiroomManager;

    invoke-static {v2}, Lcom/linkplay/core/group/LPMultiroomManager;->b(Lcom/linkplay/core/group/LPMultiroomManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/linkplay/core/group/LPMultiroomManager$2;->this$0:Lcom/linkplay/core/group/LPMultiroomManager;

    invoke-static {v0}, Lcom/linkplay/core/group/LPMultiroomManager;->c(Lcom/linkplay/core/group/LPMultiroomManager;)I

    move-result v1

    invoke-static {v0}, Lcom/linkplay/core/group/LPMultiroomManager;->b(Lcom/linkplay/core/group/LPMultiroomManager;)I

    move-result v0

    if-ge v1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/linkplay/core/group/LPMultiroomManager$2;->val$listener:Lcom/linkplay/core/group/LPMultiroomListener;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lcom/linkplay/core/group/LPMultiroomListener;->success(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
