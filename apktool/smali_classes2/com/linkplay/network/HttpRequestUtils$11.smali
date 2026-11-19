.class Lcom/linkplay/network/HttpRequestUtils$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/network/HttpRequestUtils;->sendFailCallback(Lcom/linkplay/network/HttpRequestUtils$ResultCallback;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/linkplay/network/HttpRequestUtils$ResultCallback;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/linkplay/network/HttpRequestUtils;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;Ljava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/linkplay/network/HttpRequestUtils$11;->val$callback:Lcom/linkplay/network/HttpRequestUtils$ResultCallback;

    iput-object p3, p0, Lcom/linkplay/network/HttpRequestUtils$11;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/linkplay/network/HttpRequestUtils$11;->val$callback:Lcom/linkplay/network/HttpRequestUtils$ResultCallback;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/linkplay/network/HttpRequestUtils$11;->val$e:Ljava/lang/Exception;

    invoke-virtual {v0, p0}, Lcom/linkplay/network/HttpRequestUtils$ResultCallback;->onFailure(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
