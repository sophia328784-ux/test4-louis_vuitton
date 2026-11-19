.class LZjTIAZ/XKbmNt$XKbmNt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static QdbjdM:Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llong;"
        }
    .end annotation
.end field

.field static XnqmZi:Ljava/lang/String;

.field static ZbznIi:Ljava/lang/String;

.field static fPmIG:Ljava/lang/String;

.field static uKOebE:Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LNeY/Fem/HaY/RjZ;"
        }
    .end annotation
.end field

.field static zPONfB:Ljava/lang/String;


# instance fields
.field final synthetic ZRQiWB:LZjTIAZ/XKbmNt;

.field final synthetic wNEAgD:Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LNLl/Kzi/OWc;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, LZjTIAZ/XKbmNt$XKbmNt;->ukP(Z)V

    return-void
.end method

.method public constructor <init>(LZjTIAZ/XKbmNt;Ljava/net/URL;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LZjTIAZ/XKbmNt$XKbmNt;->ZRQiWB:LZjTIAZ/XKbmNt;

    iput-object p2, p0, LZjTIAZ/XKbmNt$XKbmNt;->wNEAgD:Ljava/net/URL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic ukP(Z)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, LZjTIAZ/XKbmNt$XKbmNt;->ukP(Z)V

    :cond_0
    const-string p0, "K]vVCFFO\u007f\u000b"

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, LZjTIAZ/XKbmNt$XKbmNt;->QdbjdM:Ljava/lang/String;

    const-string p0, "[VpA\u001esHE\u007fE"

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, LZjTIAZ/XKbmNt$XKbmNt;->ZbznIi:Ljava/lang/String;

    const-string p0, "HD|_VV\u000fT~\u0011RYA\u0016gW~\n{M_OBC\r\u0002kpqv\u0007Z]ikssmz\u0000S}wq/6"

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, LZjTIAZ/XKbmNt$XKbmNt;->fPmIG:Ljava/lang/String;

    const-string p0, "M|S}VFXOcZfYG@^[L~J_F"

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, LZjTIAZ/XKbmNt$XKbmNt;->zPONfB:Ljava/lang/String;

    const-string p0, "I`A"

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, LZjTIAZ/XKbmNt$XKbmNt;->XnqmZi:Ljava/lang/String;

    const-string p0, "DvZ}vJLEaE\\S[\u000c"

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, LZjTIAZ/XKbmNt$XKbmNt;->uKOebE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, LZjTIAZ/XKbmNt$XKbmNt;->wNEAgD:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    invoke-static {v2}, Lcom/dynatrace/android/callback/Callback;->C(Ljava/net/URLConnection;)V

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v3, 0x2710

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/16 v3, 0x3a98

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    sget-object v3, LZjTIAZ/XKbmNt$XKbmNt;->XnqmZi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    sget-object v3, LZjTIAZ/XKbmNt$XKbmNt;->ZbznIi:Ljava/lang/String;

    invoke-static {}, LZjTIAZ/BkzsL;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/dynatrace/android/callback/Callback;->k(Ljava/net/HttpURLConnection;)I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_0

    sget-object v4, LZjTIAZ/XKbmNt$XKbmNt;->zPONfB:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, LZjTIAZ/XKbmNt$XKbmNt;->fPmIG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v0, [Ljava/lang/Throwable;

    invoke-static {v4, v3, v5}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v3

    goto/16 :goto_4

    :cond_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-static {v2}, Lcom/dynatrace/android/callback/Callback;->g(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    :goto_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    iget-object p0, p0, LZjTIAZ/XKbmNt$XKbmNt;->ZRQiWB:LZjTIAZ/XKbmNt;

    sget-object v0, LZjTIAZ/XKbmNt;->d:Ljava/lang/String;

    invoke-virtual {p0, v1}, LZjTIAZ/XKbmNt;->a(Lorg/json/JSONObject;)V

    return-void

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_6

    :catch_2
    move-exception v3

    move-object v2, v1

    goto :goto_2

    :catch_3
    move-exception v3

    move-object v2, v1

    goto :goto_4

    :goto_2
    :try_start_2
    sget-object v4, LZjTIAZ/XKbmNt$XKbmNt;->zPONfB:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, LZjTIAZ/XKbmNt$XKbmNt;->QdbjdM:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v0, v0, [Ljava/lang/Throwable;

    invoke-static {v4, v5, v0}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_2

    :goto_3
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    iget-object p0, p0, LZjTIAZ/XKbmNt$XKbmNt;->ZRQiWB:LZjTIAZ/XKbmNt;

    sget-object v0, LZjTIAZ/XKbmNt;->d:Ljava/lang/String;

    invoke-virtual {p0, v1}, LZjTIAZ/XKbmNt;->a(Lorg/json/JSONObject;)V

    goto :goto_5

    :goto_4
    :try_start_3
    sget-object v4, LZjTIAZ/XKbmNt$XKbmNt;->zPONfB:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, LZjTIAZ/XKbmNt$XKbmNt;->uKOebE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Throwable;

    invoke-static {v4, v3, v0}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_2

    goto :goto_3

    :goto_5
    return-void

    :goto_6
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    iget-object p0, p0, LZjTIAZ/XKbmNt$XKbmNt;->ZRQiWB:LZjTIAZ/XKbmNt;

    sget-object v2, LZjTIAZ/XKbmNt;->d:Ljava/lang/String;

    invoke-virtual {p0, v1}, LZjTIAZ/XKbmNt;->a(Lorg/json/JSONObject;)V

    throw v0
.end method
