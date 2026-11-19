.class Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->sendSuccessCallBack(Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;

.field final synthetic val$callback:Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;

.field final synthetic val$obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$13;->this$0:Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;

    iput-object p2, p0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$13;->val$callback:Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;

    iput-object p3, p0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$13;->val$obj:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$13;->val$callback:Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$13;->val$obj:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
