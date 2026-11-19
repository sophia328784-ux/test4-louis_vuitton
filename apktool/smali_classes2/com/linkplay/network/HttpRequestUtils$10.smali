.class Lcom/linkplay/network/HttpRequestUtils$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/network/HttpRequestUtils;->putRequest(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/network/HttpRequestUtils;

.field final synthetic val$callback:Lcom/linkplay/network/HttpRequestUtils$ResultCallback;


# direct methods
.method public constructor <init>(Lcom/linkplay/network/HttpRequestUtils;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/linkplay/network/HttpRequestUtils$10;->this$0:Lcom/linkplay/network/HttpRequestUtils;

    iput-object p2, p0, Lcom/linkplay/network/HttpRequestUtils$10;->val$callback:Lcom/linkplay/network/HttpRequestUtils$ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/dynatrace/android/callback/OkCallback;->d(Lokhttp3/Call;Ljava/io/IOException;)V

    :try_start_0
    iget-object p1, p0, Lcom/linkplay/network/HttpRequestUtils$10;->this$0:Lcom/linkplay/network/HttpRequestUtils;

    iget-object p0, p0, Lcom/linkplay/network/HttpRequestUtils$10;->val$callback:Lcom/linkplay/network/HttpRequestUtils$ResultCallback;

    invoke-static {p1, p0, p2}, Lcom/linkplay/network/HttpRequestUtils;->b(Lcom/linkplay/network/HttpRequestUtils;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;Ljava/io/IOException;)V
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/dynatrace/android/callback/OkCallback;->e(Lokhttp3/Call;Lokhttp3/Response;)V

    :try_start_0
    iget-object p1, p0, Lcom/linkplay/network/HttpRequestUtils$10;->this$0:Lcom/linkplay/network/HttpRequestUtils;

    invoke-static {p1, p2}, Lcom/linkplay/network/HttpRequestUtils;->a(Lcom/linkplay/network/HttpRequestUtils;Lokhttp3/Response;)Lcom/linkplay/network/OkHttpResponseItem;

    move-result-object p1

    iget-object p2, p0, Lcom/linkplay/network/HttpRequestUtils$10;->this$0:Lcom/linkplay/network/HttpRequestUtils;

    iget-object p0, p0, Lcom/linkplay/network/HttpRequestUtils$10;->val$callback:Lcom/linkplay/network/HttpRequestUtils$ResultCallback;

    invoke-static {p2, p0, p1}, Lcom/linkplay/network/HttpRequestUtils;->c(Lcom/linkplay/network/HttpRequestUtils;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;Lcom/linkplay/network/OkHttpResponseItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    sget p1, Lcom/dynatrace/android/callback/OkCallback;->a:I

    throw p0
.end method
