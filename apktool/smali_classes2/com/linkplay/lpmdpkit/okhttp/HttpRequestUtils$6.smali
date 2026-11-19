.class Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->postRequest(Ljava/lang/String;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;Ljava/util/List;Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$6;->this$0:Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;

    iput-object p2, p0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$6;->val$callback:Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/dynatrace/android/callback/OkCallback;->d(Lokhttp3/Call;Ljava/io/IOException;)V

    :try_start_0
    iget-object p1, p0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$6;->this$0:Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$6;->val$callback:Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;

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
    .locals 0

    invoke-static {p1, p2}, Lcom/dynatrace/android/callback/OkCallback;->e(Lokhttp3/Call;Lokhttp3/Response;)V

    :try_start_0
    iget-object p1, p0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$6;->this$0:Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$6;->val$callback:Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;

    invoke-static {p1, p2}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->access$100(Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;Lokhttp3/Response;)Lcom/linkplay/lpmdpkit/okhttp/OkHttpResponseItem;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->access$200(Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    sget p1, Lcom/dynatrace/android/callback/OkCallback;->a:I

    throw p0
.end method
