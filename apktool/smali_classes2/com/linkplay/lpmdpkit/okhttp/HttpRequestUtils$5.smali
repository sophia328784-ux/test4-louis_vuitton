.class Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->postRequest(Lokhttp3/Request;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;

.field final synthetic val$callback:Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;


# direct methods
.method public constructor <init>(Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$5;->this$0:Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;

    iput-object p2, p0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$5;->val$callback:Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/dynatrace/android/callback/OkCallback;->d(Lokhttp3/Call;Ljava/io/IOException;)V

    :try_start_0
    iget-object p1, p0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$5;->this$0:Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$5;->val$callback:Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;

    invoke-static {p1, p0, p2}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->access$000(Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    sget p1, Lcom/dynatrace/android/callback/OkCallback;->a:I

    throw p0
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1

    invoke-static {p1, p2}, Lcom/dynatrace/android/callback/OkCallback;->e(Lokhttp3/Call;Lokhttp3/Response;)V

    :try_start_0
    iget-object p1, p0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$5;->this$0:Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;

    invoke-static {p1, p2}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->access$100(Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;Lokhttp3/Response;)Lcom/linkplay/lpmdpkit/okhttp/OkHttpResponseItem;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$5;->this$0:Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;

    iget v0, p1, Lcom/linkplay/lpmdpkit/okhttp/OkHttpResponseItem;->code:I

    invoke-static {p2, v0}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->access$300(Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;I)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$5;->this$0:Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$5;->val$callback:Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;

    new-instance p2, Ljava/lang/Exception;

    const-string v0, "okhttp3 onResponse unSuccessful"

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0, p2}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->access$000(Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;Ljava/lang/Exception;)V

    return-void

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$5;->this$0:Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$5;->val$callback:Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;

    invoke-static {p2, p0, p1}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->access$200(Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    sget p1, Lcom/dynatrace/android/callback/OkCallback;->a:I

    throw p0
.end method
