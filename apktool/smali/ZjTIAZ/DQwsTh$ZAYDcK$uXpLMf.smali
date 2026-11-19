.class LZjTIAZ/DQwsTh$ZAYDcK$uXpLMf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZjTIAZ/DQwsTh$ZAYDcK;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic ZFqUdf:LZjTIAZ/DQwsTh$ZAYDcK;


# direct methods
.method public constructor <init>(LZjTIAZ/DQwsTh$ZAYDcK;)V
    .locals 0

    iput-object p1, p0, LZjTIAZ/DQwsTh$ZAYDcK$uXpLMf;->ZFqUdf:LZjTIAZ/DQwsTh$ZAYDcK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object p0, p0, LZjTIAZ/DQwsTh$ZAYDcK$uXpLMf;->ZFqUdf:LZjTIAZ/DQwsTh$ZAYDcK;

    iget-object v0, p0, LZjTIAZ/DQwsTh$ZAYDcK;->ZRQiWB:LZjTIAZ/DQwsTh;

    iget p0, p0, LZjTIAZ/DQwsTh$ZAYDcK;->XccjsC:I

    sget v1, LZjTIAZ/DQwsTh;->x:I

    monitor-enter v0

    :try_start_0
    iget v1, v0, LZjTIAZ/DQwsTh;->b:I

    if-eqz v1, :cond_1

    const/4 p0, 0x2

    if-ne v1, p0, :cond_0

    invoke-virtual {v0}, LZjTIAZ/DQwsTh;->j()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_d

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    const/4 v1, 0x1

    iput v1, v0, LZjTIAZ/DQwsTh;->b:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "^JB"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "I@aGZ\\H\u0000A^b\u001ceWEYDO_I_]\u000fVSMN\u0004dMFEYs523<"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Throwable;

    invoke-static {v2, v3, v5}, LwcQZwr/GpYFMu;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0}, LZjTIAZ/DQwsTh;->e()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    invoke-static {v3}, Lcom/dynatrace/android/callback/Callback;->C(Ljava/net/URLConnection;)V

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v5, 0x2710

    :try_start_2
    invoke-virtual {v3, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/16 v5, 0x3a98

    invoke-virtual {v3, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const-string v5, "I`A"

    invoke-static {v5}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const-string v5, "[VpA\u001esHE\u007fE"

    invoke-static {v5}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, LZjTIAZ/BkzsL;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/dynatrace/android/callback/Callback;->k(Ljava/net/HttpURLConnection;)I

    move-result v5

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_2

    const-string v6, "^JB"

    invoke-static {v6}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HD|_VV\u000fT~\u0011RYA\u0016gW~\n{M_OBC\r\u0002kpqv\u0007Z]ikssmz\u0000S}wq/6"

    invoke-static {v8}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v4, [Ljava/lang/Throwable;

    invoke-static {v6, v5, v7}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move v5, v4

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v2, v3

    goto/16 :goto_c

    :catch_0
    move-exception v5

    goto/16 :goto_6

    :catch_1
    move-exception v5

    goto/16 :goto_8

    :cond_2
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-static {v3}, Lcom/dynatrace/android/callback/Callback;->g(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v2, v5

    move v5, v1

    :goto_2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    sget v3, LZjTIAZ/DQwsTh;->y:I

    xor-int/lit16 v3, v3, 0xb31

    if-eqz v3, :cond_a

    :goto_3
    sget p0, LZjTIAZ/DQwsTh;->y:I

    const/16 v3, 0x68

    add-int/2addr p0, v3

    const/16 v0, 0x21

    if-eq p0, v0, :cond_4

    goto :goto_3

    :cond_4
    sget p0, LZjTIAZ/DQwsTh;->y:I

    xor-int/lit16 p0, p0, 0xbb4

    shr-int/lit8 p0, p0, 0x70

    sput p0, LZjTIAZ/DQwsTh;->y:I

    sget p0, LZjTIAZ/DQwsTh;->x:I

    const/16 v0, 0x1c21

    if-gt p0, v0, :cond_4

    :goto_4
    sget p0, LZjTIAZ/DQwsTh;->x:I

    add-int/lit16 v0, p0, 0xd0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_8

    const/16 v1, 0x56

    if-eq v0, v1, :cond_7

    if-eq v0, v3, :cond_6

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_5

    goto :goto_4

    :cond_5
    xor-int/lit16 p0, p0, 0xe21

    shr-int/lit8 p0, p0, 0x22

    mul-int/lit8 p0, p0, 0x74

    sput p0, LZjTIAZ/DQwsTh;->x:I

    :cond_6
    sget p0, LZjTIAZ/DQwsTh;->x:I

    shr-int/lit8 p0, p0, 0x3b

    xor-int/lit16 p0, p0, 0xc40

    rem-int/lit8 p0, p0, 0x54

    :goto_5
    sput p0, LZjTIAZ/DQwsTh;->x:I

    :cond_7
    sget p0, LZjTIAZ/DQwsTh;->x:I

    mul-int/lit8 p0, p0, 0x7

    shr-int/lit8 p0, p0, 0x59

    goto :goto_5

    :cond_8
    add-int v0, p0, p0

    shr-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p0

    sput v0, LZjTIAZ/DQwsTh;->x:I

    goto :goto_4

    :catchall_2
    move-exception p0

    goto/16 :goto_c

    :catch_2
    move-exception v5

    move-object v3, v2

    goto :goto_6

    :catch_3
    move-exception v5

    move-object v3, v2

    goto :goto_8

    :goto_6
    :try_start_3
    const-string v6, "^JB"

    invoke-static {v6}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "K]vVCFFO\u007f\u000b"

    invoke-static {v8}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Throwable;

    invoke-static {v6, v7, v8}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_9

    :goto_7
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_9

    :goto_8
    :try_start_4
    const-string v6, "^JB"

    invoke-static {v6}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DvZ}vJLEaE\\S[\u000c"

    invoke-static {v8}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v4, [Ljava/lang/Throwable;

    invoke-static {v6, v5, v7}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v3, :cond_9

    goto :goto_7

    :cond_9
    :goto_9
    move v5, v4

    :cond_a
    if-eqz v2, :cond_b

    :try_start_5
    invoke-virtual {v0, v2, p0}, LZjTIAZ/DQwsTh;->b(Lorg/json/JSONObject;I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    :cond_b
    if-nez v5, :cond_e

    const-string v2, "I@a\u0013cS]A|B\u0015YGDXJ"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, LZjTIAZ/DQwsTh;->i(Ljava/lang/String;)V

    if-ne p0, v1, :cond_c

    goto :goto_a

    :cond_c
    iget v2, v0, LZjTIAZ/DQwsTh;->c:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_d

    add-int/2addr v2, v1

    iput v2, v0, LZjTIAZ/DQwsTh;->c:I

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, LZjTIAZ/DQwsTh;->g(IJ)V

    :cond_d
    :goto_a
    invoke-virtual {v0, v4}, LZjTIAZ/DQwsTh;->m(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_b

    :catch_4
    move-exception p0

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    :cond_e
    :goto_b
    return-void

    :goto_c
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_f
    throw p0

    :goto_d
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method
