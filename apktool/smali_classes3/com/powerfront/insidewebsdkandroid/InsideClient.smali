.class public Lcom/powerfront/insidewebsdkandroid/InsideClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static A:Lcom/powerfront/insidewebsdkandroid/InsideClient;

.field public static y:Landroid/content/Context;

.field public static z:Landroid/content/Context;


# instance fields
.field public a:Landroid/webkit/WebView;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Z

.field public e:Lcom/powerfront/insidewebsdkandroid/models/InsideUser;

.field public f:Lcom/powerfront/insidewebsdkandroid/models/InsideCart;

.field public g:Lcom/powerfront/insidewebsdkandroid/models/InsideView;

.field public h:Landroid/webkit/WebView;

.field public i:Landroid/webkit/ValueCallback;

.field public j:Ljava/lang/String;

.field public k:Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;

.field public l:Landroid/webkit/ValueCallback;

.field public m:Ljava/lang/String;

.field public n:Landroid/view/ViewGroup;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Lcom/powerfront/insidewebsdkandroid/utils/ProgressDialogView;


# direct methods
.method public static a(Lcom/powerfront/insidewebsdkandroid/InsideClient;I)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x4

    if-ne p1, v0, :cond_0

    const-string v0, "User authentication failed on server"

    goto :goto_0

    :cond_0
    const/4 v0, -0x8

    if-ne p1, v0, :cond_1

    const-string v0, "The server is taking too much time to communicate. Try again later."

    goto :goto_0

    :cond_1
    const/16 v0, -0xf

    if-ne p1, v0, :cond_2

    const-string v0, "Too many requests during this load"

    goto :goto_0

    :cond_2
    const/16 v0, -0xc

    if-ne p1, v0, :cond_3

    const-string v0, "Check entered URL.."

    goto :goto_0

    :cond_3
    const/4 v0, -0x6

    if-ne p1, v0, :cond_4

    const-string v0, "Failed to connect to the server"

    goto :goto_0

    :cond_4
    const/16 v0, -0xb

    if-ne p1, v0, :cond_5

    const-string v0, "Failed to perform SSL handshake"

    goto :goto_0

    :cond_5
    const/4 v0, -0x5

    if-ne p1, v0, :cond_6

    const-string v0, "User authentication failed on proxy"

    goto :goto_0

    :cond_6
    const/16 v0, -0x9

    if-ne p1, v0, :cond_7

    const-string v0, "Too many redirects"

    goto :goto_0

    :cond_7
    const/4 v0, -0x3

    if-ne p1, v0, :cond_8

    const-string v0, "Unsupported authentication scheme (not basic or digest)"

    goto :goto_0

    :cond_8
    const/16 v0, -0xa

    if-ne p1, v0, :cond_9

    const-string v0, "unsupported scheme"

    goto :goto_0

    :cond_9
    const/16 v0, -0xd

    if-ne p1, v0, :cond_a

    const-string v0, "Generic file error"

    goto :goto_0

    :cond_a
    const/16 v0, -0xe

    if-ne p1, v0, :cond_b

    const-string v0, "File not found"

    goto :goto_0

    :cond_b
    const/4 v0, -0x7

    if-ne p1, v0, :cond_c

    const-string v0, "The server failed to communicate. Try again later."

    goto :goto_0

    :cond_c
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->k:Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;

    if-eqz p0, :cond_d

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->e:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->c:Lkotlinx/coroutines/flow/MutableSharedFlow;

    new-instance v1, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$Error;

    invoke-direct {v1, v0, p1}, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$Error;-><init>(Ljava/lang/String;I)V

    invoke-static {v1}, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$Companion;->a(Lcom/vuitton/core/infrastructure/chat/model/ChatEvent;)Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableSharedFlow;->a(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public static b(Lcom/powerfront/insidewebsdkandroid/InsideClient;)V
    .locals 7

    const-string v0, "data"

    iget-object v1, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->g:Lcom/powerfront/insidewebsdkandroid/models/InsideView;

    invoke-virtual {v1}, Lcom/powerfront/insidewebsdkandroid/models/InsideView;->a()Lorg/json/JSONObject;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->f:Lcom/powerfront/insidewebsdkandroid/models/InsideCart;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->f:Lcom/powerfront/insidewebsdkandroid/models/InsideCart;

    iget-boolean v2, v2, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->c:Z

    if-nez v2, :cond_0

    const-string v2, "orderId"

    const-string v3, "auto"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "orderTotal"

    invoke-virtual {p0}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->i()Lcom/powerfront/insidewebsdkandroid/models/InsideCart;

    move-result-object v3

    iget-object v3, v3, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->b:Ljava/math/BigDecimal;

    invoke-virtual {v3}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v2, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->j:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "pn-gcm-token"

    if-nez v2, :cond_1

    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v4, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->j:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->j:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->g:Lcom/powerfront/insidewebsdkandroid/models/InsideView;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "tags"

    if-eqz v0, :cond_6

    :try_start_2
    iget-object v0, v0, Lcom/powerfront/insidewebsdkandroid/models/InsideView;->e:[Ljava/lang/String;

    if-eqz v0, :cond_6

    array-length v0, v0

    if-lez v0, :cond_6

    const-string v0, "SDK,"

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    iget-object v5, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->g:Lcom/powerfront/insidewebsdkandroid/models/InsideView;

    iget-object v5, v5, Lcom/powerfront/insidewebsdkandroid/models/InsideView;->e:[Ljava/lang/String;

    array-length v6, v5

    if-ge v4, v6, :cond_4

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xff

    if-le v5, v6, :cond_3

    iget-object v5, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->g:Lcom/powerfront/insidewebsdkandroid/models/InsideView;

    iget-object v5, v5, Lcom/powerfront/insidewebsdkandroid/models/InsideView;->e:[Ljava/lang/String;

    aget-object v5, v5, v4

    goto :goto_2

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->g:Lcom/powerfront/insidewebsdkandroid/models/InsideView;

    iget-object v0, v0, Lcom/powerfront/insidewebsdkandroid/models/InsideView;->e:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_6
    const-string v0, "SDK"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_3
    const-string v0, "trackView"

    invoke-virtual {p0, v0, v1}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->d(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    return-void
.end method

.method public static e(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final c(Landroid/app/Activity;II)V
    .locals 1

    new-instance v0, Lcom/powerfront/insidewebsdkandroid/InsideClient$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/powerfront/insidewebsdkandroid/InsideClient$1;-><init>(Lcom/powerfront/insidewebsdkandroid/InsideClient;Landroid/app/Activity;II)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public chatEnded(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public chatEndedBy(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object p0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->k:Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->e:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->c:Lkotlinx/coroutines/flow/MutableSharedFlow;

    new-instance v0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatEndedBy;

    invoke-direct {v0, p1}, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatEndedBy;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$Companion;->a(Lcom/vuitton/core/infrastructure/chat/model/ChatEvent;)Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableSharedFlow;->a(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public currentChatID(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    sget-object v0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->y:Landroid/content/Context;

    const-string v1, "my_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    const-string v3, "chat_id"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-boolean v2, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->w:Z

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->w:Z

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "javascript:"

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "("

    const-string v2, ")"

    invoke-static {v0, p1, v1, p2, v2}, Ld21;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p2, "()"

    invoke-static {v0, p1, p2}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object p2, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    if-eqz p2, :cond_1

    new-instance v0, Lcom/powerfront/insidewebsdkandroid/InsideClient$13;

    invoke-direct {v0, p0, p1}, Lcom/powerfront/insidewebsdkandroid/InsideClient$13;-><init>(Lcom/powerfront/insidewebsdkandroid/InsideClient;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final f()V
    .locals 2

    const-string v0, "closeChatPane"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->d(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->u:Z

    sget-object v0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->y:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/powerfront/insidewebsdkandroid/InsideClient$7;

    invoke-direct {v1, p0}, Lcom/powerfront/insidewebsdkandroid/InsideClient$7;-><init>(Lcom/powerfront/insidewebsdkandroid/InsideClient;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->h:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->y:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/powerfront/insidewebsdkandroid/InsideClient$8;

    invoke-direct {v1, p0}, Lcom/powerfront/insidewebsdkandroid/InsideClient$8;-><init>(Lcom/powerfront/insidewebsdkandroid/InsideClient;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->m:Ljava/lang/String;

    new-instance v2, Lcom/powerfront/insidewebsdkandroid/InsideClient$10;

    invoke-direct {v2, p0}, Lcom/powerfront/insidewebsdkandroid/InsideClient$10;-><init>(Lcom/powerfront/insidewebsdkandroid/InsideClient;)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->h:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/jsbridge/JSHookAop;->loadUrl(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->c:Z

    :cond_0
    iget-object p0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->x:Lcom/powerfront/insidewebsdkandroid/utils/ProgressDialogView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->hide()V

    :cond_1
    return-void
.end method

.method public final h()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->x:Lcom/powerfront/insidewebsdkandroid/utils/ProgressDialogView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->y:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/powerfront/insidewebsdkandroid/InsideClient$17;

    invoke-direct {v1, p0}, Lcom/powerfront/insidewebsdkandroid/InsideClient$17;-><init>(Lcom/powerfront/insidewebsdkandroid/InsideClient;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :catch_0
    :cond_0
    return-void
.end method

.method public final i()Lcom/powerfront/insidewebsdkandroid/models/InsideCart;
    .locals 2

    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->f:Lcom/powerfront/insidewebsdkandroid/models/InsideCart;

    if-nez v0, :cond_0

    new-instance v0, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    iput-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->f:Lcom/powerfront/insidewebsdkandroid/models/InsideCart;

    :cond_0
    iget-object p0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->f:Lcom/powerfront/insidewebsdkandroid/models/InsideCart;

    return-object p0
.end method

.method public final j(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iput-object p2, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->o:Ljava/lang/String;

    iput-object p3, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->p:Ljava/lang/String;

    iput-object p4, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->q:Ljava/lang/String;

    iput-object p5, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->r:Ljava/lang/String;

    iput-object p6, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->s:Ljava/lang/String;

    sput-object p1, Lcom/powerfront/insidewebsdkandroid/InsideClient;->y:Landroid/content/Context;

    new-instance v0, Lcom/powerfront/insidewebsdkandroid/utils/ProgressDialogView;

    sget-object v1, Lcom/powerfront/insidewebsdkandroid/InsideClient;->y:Landroid/content/Context;

    const v2, 0x7f0800b5

    invoke-direct {v0, v1, v2}, Lcom/powerfront/insidewebsdkandroid/utils/ProgressDialogView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->x:Lcom/powerfront/insidewebsdkandroid/utils/ProgressDialogView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    const/16 v2, 0x8

    const v3, 0x1020002

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->c:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->n:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    sput-object p1, Lcom/powerfront/insidewebsdkandroid/InsideClient;->y:Landroid/content/Context;

    iget-object p2, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iget-object p3, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->n:Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->n:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    invoke-virtual {p1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->n:Landroid/view/ViewGroup;

    new-instance v0, Landroid/webkit/WebView;

    sget-object v3, Lcom/powerfront/insidewebsdkandroid/InsideClient;->y:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a0274

    invoke-virtual {v0, v3}, Landroid/view/View;->setId(I)V

    const-string v3, "inside_web_view"

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->n:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iput-object p2, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->b:Ljava/lang/String;

    iget-object p2, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    invoke-virtual {p2, p0, p5}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v2, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    iget-object v2, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    iget-object v2, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    iget-object v2, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    iget-object v2, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    iget-object v2, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    iget-object v2, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    iget-object v2, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object v2, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->clearCache(Z)V

    sget-object v0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->y:Landroid/content/Context;

    const-string v2, "my_prefs"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "chat_id"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->n:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-static {v0, v1}, Ln00;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " InsideMobileAndroid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    new-instance v0, Lcom/powerfront/insidewebsdkandroid/InsideClient$2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "navigator.userAgent"

    invoke-virtual {p2, v1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    sget-object p2, Lcom/powerfront/insidewebsdkandroid/InsideClient;->y:Landroid/content/Context;

    if-eqz p2, :cond_4

    invoke-virtual {p0, p2}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->l(Landroid/content/Context;)V

    goto :goto_1

    :cond_4
    sget-object p2, Lcom/powerfront/insidewebsdkandroid/InsideClient;->z:Landroid/content/Context;

    if-eqz p2, :cond_5

    invoke-virtual {p0, p2}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->l(Landroid/content/Context;)V

    :cond_5
    :goto_1
    const-string p2, ".onLoad();     deferWait(function () {         var websiteId = insideFrontInterface.chat.userid.split(\':\')[1];         _insideGraph.loadJS(_insideCDN + \'custom/\' + websiteId + \'-customScript.js?v=\' +_insideScriptVersion);         }, function () {             return typeof _insideGraph != \'undefined\' && _insideGraph.loadJS && insideFrontInterface.chat && insideFrontInterface.chat.userid;         });}function onChatAvailable(available) {    if (available !== chatAvailable) {        chatAvailable = available;        if (available) {"

    const-string v0, ".onChatAvailable();        } else {"

    const-string v1, "<!DOCTYPE html><html><body><script>var loaded = false;var chatAvailable = false;var insideWebApp = true; var chatIdTimer;function getCurrentChatId(callback) {if(typeof insideFrontInterface !== \'undefined\' && insideFrontInterface.currentChatId) {  clearTimeout(chatIdTimer); callback(insideFrontInterface.currentChatId);} else {   clearTimeout(chatIdTimer);  chatIdTimer = setTimeout(function() {    getCurrentChatId(callback) }, 500); }};function deferWait(callback, test) {     if (test()) {         callback();         return;     }     var _interval = 10;     var _spin = function() {         if (test()) {             callback();         } else {             _interval = _interval >= 1000 ? 1000 : _interval * 2;             setTimeout(_spin, _interval);         }     };     setTimeout(_spin, _interval);}function onLoad() {"

    invoke-static {v1, p5, p2, p5, v0}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ".onChatUnavailable();        }    }}function onChatVisible() {    if (!loaded) {        loaded = true;"

    const-string v1, ".onChatVisible();setTimeout(function() {clearTimeout(chatIdTimer);}, 180000);getCurrentChatId(function(currentChatId) {"

    invoke-static {p2, p5, v0, p5, v1}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".currentChatID(currentChatId);});}}function trackView(view) { if(view.url)  {      _insideGraph.current.url = view.url;   }   else   {      _insideGraph.current.url = window.location.href;    }    _insideGraph.current.trackView(view);    console.log(\"trackView called\", view);};function trackUser(id,name,data) {    console.log(\"trackUser called\");    _insideGraph.current.visitorId = id;    _insideGraph.current.visitorName = name;    _insideGraph.current.visitorData = data;    console.log(\"trackUser called\");};function addItem(item) {    _insideGraph.current.addItem(item);    console.log(\"item added\", item);};function trackOrder(order) {    _insideGraph.current.trackOrder(order);    console.log(\"order tracked\");};function onCloseChat() {"

    const-string v1, ".onCloseChat();};function onMinimiseChat() {"

    invoke-static {p2, p5, v0, p5, v1}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".onMinimiseChat();};function onConnected(data) {"

    const-string v1, ".onConnected();};function onDisconnectedToChat() {"

    invoke-static {p2, p5, v0, p5, v1}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".onDisconnectedToChat();    console.log(\"Chat disconnected\");};function disconnectMe() {"

    const-string v1, ".currentChatID(insideFrontInterface.currentChatId);    var zxcv = insideFrontInterface.disconnectSignalr();    console.log(\"disconnected called\");};var chatWorkflowId = null; function openChatPane(eventId) {if(eventId > 0){chatWorkflowId = insideFrontInterface.chatSettings.chatPane.preChatWorkflow || null;insideFrontInterface.chatSettings.chatPane.preChatWorkflow = null; } setTimeout(function() {insideFrontInterface.openChatPane();}, 30); };  function onOpenChat() {    setTimeout(function() {if(chatWorkflowId != null){   insideFrontInterface.chatSettings.chatPane.preChatWorkflow = chatWorkflowId;    chatWorkflowId = null;}},1000);getCurrentChatId(function(currentChatId) {"

    invoke-static {p2, p5, v0, p5, v1}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".currentChatID(insideFrontInterface.currentChatId);});}; function closeChatPane() {    console.log(\"CloseChatPane Called\");    var amd = insideFrontInterface.chat.closeChatPane(true);"

    const-string v1, ".currentChatID(insideFrontInterface.currentChatId);  clearTimeout(chatIdTimer); };function prepopulatePrechat(name, email) {                try {                    var $ = _insideGraph.jQuery;                   if ($(\"#inside_holder #inside_prechatForm\").length > 0) {                setTimeout(function () {            $(\"#inside_holder #inside_prechatForm #inside_prechat_name\").val(name);                    $(\"#inside_holder #inside_prechatForm #inside_prechat_email\").val(email);        }, 100);    }     else    {        setTimeout(function(){prepopulatePrechat(name, email);}, 500);    }} catch (tempex) { }};function onChatEnded(data) {"

    invoke-static {p2, p5, v0, p5, v1}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".chatEndedBy(data.endedBy);"

    const-string v1, ".chatEnded(JSON.stringify(data));"

    invoke-static {p2, p5, v0, p5, v1}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".currentChatID(insideFrontInterface.currentChatId);};function onChatNotificationReceived(data) {"

    const-string v1, ".currentChatID(data.message.chatid);"

    invoke-static {p2, p5, v0, p5, v1}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".unReadCount(data.unreadMessageCount);if( typeof data.message.fromname !== \'undefined\' && data.message.fromname) {"

    const-string v1, ".onChatNotificationReceived(data.message.text, data.message.fromname , data.message.img || null);}else{"

    invoke-static {p2, p5, v0, p5, v1}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".onChatNotificationReceived(data.message.text, \'\' , data.message.img || null);}};function onAddToBasket(product) {"

    const-string v1, ".onAddToBasket(JSON.stringify(product));};function viewproduct(product) {"

    invoke-static {p2, p5, v0, p5, v1}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".viewproduct(JSON.stringify(product));};function onAddToBasketComplete(skuObj) {    window._insideAddToBasket.onAddToBasketSuccess(skuObj);}function onAddToBasketFailure(skuObj) {    window._insideAddToBasket.onAddToBasketError(skuObj);}var _inside = [\n    { action:\"bind\", name:\"chat_visible\", callback:onChatVisible },\n    { action:\"bind\", name:\"chatavailable\", callback:onChatAvailable },\n    { action:\"bind\", name:\"onload\", callback:onLoad },\n    { action:\"bind\", name:\"closechat\", callback:onCloseChat },\n     { action:\"bind\", name:\"openchat\", callback:onOpenChat },\n    { action:\"bind\", name:\"minimisechat\", callback:onMinimiseChat },\n    { action:\"bind\", name:\"onconnected\", callback:onConnected },\n    { action:\"bind\", name:\"disconnected\", callback:onDisconnectedToChat },\n    { action:\"bind\", name:\"chatnotification\", callback:onChatNotificationReceived },\n    { action:\"bind\", name:\"chatended\", callback:onChatEnded },\n    { action:\"bind\", name:\"addtobasket\", callback:onAddToBasket },\n    { action:\"bind\", name:\"viewproduct\", callback:viewproduct },\n    { action:\"getTracker\", account: \""

    const-string v1, "\" ,subsiteId:\""

    invoke-static {p2, p5, v0, p3, v1}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "\"},\n];</script><script src=\""

    const-string p5, "/ig.js\"></script></body></html>"

    invoke-static {p2, p6, p3, p4, p5}, Ltr;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object p2, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    new-instance p3, Lcom/powerfront/insidewebsdkandroid/InsideClient$3;

    invoke-direct {p3, p0}, Lcom/powerfront/insidewebsdkandroid/InsideClient$3;-><init>(Lcom/powerfront/insidewebsdkandroid/InsideClient;)V

    invoke-virtual {p2, p3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object p2, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    new-instance p3, Lcom/powerfront/insidewebsdkandroid/InsideClient$4;

    invoke-direct {p3, p0, p1}, Lcom/powerfront/insidewebsdkandroid/InsideClient$4;-><init>(Lcom/powerfront/insidewebsdkandroid/InsideClient;Landroid/app/Activity;)V

    invoke-virtual {p2, p3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :try_start_0
    iget-object p1, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->x:Lcom/powerfront/insidewebsdkandroid/utils/ProgressDialogView;

    if-eqz p1, :cond_6

    sget-object p1, Lcom/powerfront/insidewebsdkandroid/InsideClient;->y:Landroid/content/Context;

    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_6

    check-cast p1, Landroid/app/Activity;

    new-instance p2, Lcom/powerfront/insidewebsdkandroid/InsideClient$5;

    invoke-direct {p2, p0}, Lcom/powerfront/insidewebsdkandroid/InsideClient$5;-><init>(Lcom/powerfront/insidewebsdkandroid/InsideClient;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/powerfront/insidewebsdkandroid/InsideClient$6;

    invoke-direct {p2, p0}, Lcom/powerfront/insidewebsdkandroid/InsideClient$6;-><init>(Lcom/powerfront/insidewebsdkandroid/InsideClient;)V

    const-wide/32 p3, 0xea60

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    invoke-virtual {p0}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->h()V

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->b:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/sensorsdata/analytics/android/sdk/jsbridge/JSHookAop;->loadDataWithBaseURL(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final k()Z
    .locals 9

    const-string v0, "file:"

    sget-object v1, Lcom/powerfront/insidewebsdkandroid/InsideClient;->y:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->l:Landroid/webkit/ValueCallback;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2, v3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->i:Landroid/webkit/ValueCallback;

    iput-object v2, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->l:Landroid/webkit/ValueCallback;

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    const-string v5, "yyyyMMdd_HHmmss"

    const-string v6, "output"

    if-eqz v4, :cond_2

    :try_start_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "JPEG_"

    const-string v8, "_"

    invoke-static {v7, v4, v8}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, ".jpg"

    sget-object v8, Lcom/powerfront/insidewebsdkandroid/InsideClient;->y:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-static {v4, v7, v8}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->t:Ljava/lang/String;

    const-string v8, "PhotoPath"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v4, v3

    :catch_1
    :goto_0
    if-eqz v4, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->t:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".provider"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    move-object v2, v3

    :cond_2
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "*/*"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/text/SimpleDateFormat;

    invoke-direct {v7, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "/videocapture"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".mp4"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    filled-new-array {v2, v4}, [Landroid/content/Intent;

    move-result-object v2

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.CHOOSER"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v5, "android.intent.extra.INTENT"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TITLE"

    const-string v5, "Choose an action"

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, 0x2

    :try_start_2
    invoke-virtual {v1, v4, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    return v6

    :catch_2
    iput-object v3, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->l:Landroid/webkit/ValueCallback;

    const/4 p0, 0x0

    return p0
.end method

.method public final l(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "my_prefs"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, ""

    const-string v1, "device_token"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p1, "cJLzb7syinE:APA91bHNpW3Um6qQO6EowRBUMALgWZ0PWB9A6Xj7UnS4iZaZtFwNVBcrgU1kpmJosVp0V-tsfYsStAy84uoiqainnOdbPLue6vfIZakRN1ffssJjFipITMQ-QHG0xx1Vss709ibal2H0"

    :cond_1
    iput-object p1, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->j:Ljava/lang/String;

    return-void
.end method

.method public final m()V
    .locals 6

    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->f:Lcom/powerfront/insidewebsdkandroid/models/InsideCart;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->f:Lcom/powerfront/insidewebsdkandroid/models/InsideCart;

    iget-boolean v1, v0, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->d:Z

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powerfront/insidewebsdkandroid/models/InsideCartItem;

    iget-object v2, v1, Lcom/powerfront/insidewebsdkandroid/models/InsideCartItem;->f:Ljava/lang/String;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "orderId"

    const-string v5, "auto"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "sku"

    iget-object v5, v1, Lcom/powerfront/insidewebsdkandroid/models/InsideCartItem;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "name"

    iget-object v5, v1, Lcom/powerfront/insidewebsdkandroid/models/InsideCartItem;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/powerfront/insidewebsdkandroid/models/InsideCartItem;->c:Ljava/math/BigDecimal;

    invoke-virtual {v4}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "price"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, v1, Lcom/powerfront/insidewebsdkandroid/models/InsideCartItem;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "qty"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v1, Lcom/powerfront/insidewebsdkandroid/models/InsideCartItem;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "category"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "img"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v2, "addItem"

    invoke-virtual {p0, v2, v1}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->d(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->f:Lcom/powerfront/insidewebsdkandroid/models/InsideCart;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->i()Lcom/powerfront/insidewebsdkandroid/models/InsideCart;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->f:Lcom/powerfront/insidewebsdkandroid/models/InsideCart;

    invoke-virtual {v0}, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "trackOrder"

    invoke-virtual {p0, v1, v0}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->d(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object p0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->f:Lcom/powerfront/insidewebsdkandroid/models/InsideCart;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/powerfront/insidewebsdkandroid/models/InsideCart;->d:Z

    :cond_3
    return-void
.end method

.method public final n(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->e:Lcom/powerfront/insidewebsdkandroid/models/InsideUser;

    return-void

    :cond_0
    new-instance v0, Lcom/powerfront/insidewebsdkandroid/models/InsideUser;

    invoke-direct {v0, p1, p2, p3}, Lcom/powerfront/insidewebsdkandroid/models/InsideUser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    iput-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->e:Lcom/powerfront/insidewebsdkandroid/models/InsideUser;

    const-string v0, "\","

    const-string v1, "javascript:trackUser(\""

    const-string v2, "\",\""

    invoke-static {v1, p1, v2, p2, v0}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    if-eqz p2, :cond_1

    new-instance p3, Lcom/powerfront/insidewebsdkandroid/InsideClient$16;

    invoke-direct {p3, p0, p1}, Lcom/powerfront/insidewebsdkandroid/InsideClient$16;-><init>(Lcom/powerfront/insidewebsdkandroid/InsideClient;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final o(Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 10

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Lcom/powerfront/insidewebsdkandroid/models/InsideView;

    const/4 v9, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v3, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/powerfront/insidewebsdkandroid/models/InsideView;-><init>(Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/util/HashMap;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->g:Lcom/powerfront/insidewebsdkandroid/models/InsideView;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/powerfront/insidewebsdkandroid/InsideClient$14;

    invoke-direct {p2, p0}, Lcom/powerfront/insidewebsdkandroid/InsideClient$14;-><init>(Lcom/powerfront/insidewebsdkandroid/InsideClient;)V

    const-wide/16 p3, 0x3e8

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    const-string p0, "type or name can not be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public onAddToBasket(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "skuId"

    const-string v1, "productId"

    const-string v2, "P"

    iget-object v3, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->k:Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;

    if-eqz v3, :cond_4

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-class v4, Ljava/lang/Integer;

    const-class v5, Ljava/lang/String;

    const-string v6, ""

    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->e(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->e(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v6

    :goto_0
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->e(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->e(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->k:Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;

    iget-object v0, p0, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->e:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->c:Lkotlinx/coroutines/flow/MutableSharedFlow;

    new-instance v0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$AddToBasket;

    invoke-direct {v0, p1, v6}, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$AddToBasket;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$Companion;->a(Lcom/vuitton/core/infrastructure/chat/model/ChatEvent;)Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableSharedFlow;->a(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    return-void
.end method

.method public onChatAvailable()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    :cond_0
    iget-object p0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->k:Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->e:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->d:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    invoke-virtual {v0}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->f()V

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onChatNotificationReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->k:Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->w:Z

    iget-object v1, v0, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->e:Lcom/vuitton/foundation/logger/Logger;

    const-string v2, ",\n                |  isProactiveChat: "

    const-string v3, ",\n                |   fromName: "

    const-string v4, "onChatNotificationReceived: message: "

    invoke-static {v4, p1, v2, v3, p0}, Ld21;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",\n                |    image: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/text/StringsKt;->c0(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->c:Lkotlinx/coroutines/flow/MutableSharedFlow;

    new-instance v1, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatNotificationReceived;

    invoke-direct {v1, p1, p0, p2, p3}, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatNotificationReceived;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$Companion;->a(Lcom/vuitton/core/infrastructure/chat/model/ChatEvent;)Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlinx/coroutines/flow/MutableSharedFlow;->a(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onChatUnavailable()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object p0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->k:Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->e:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onChatVisible()V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->k:Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->e:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-boolean v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->u:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/powerfront/insidewebsdkandroid/InsideClient$9;

    invoke-direct {v1, p0}, Lcom/powerfront/insidewebsdkandroid/InsideClient$9;-><init>(Lcom/powerfront/insidewebsdkandroid/InsideClient;)V

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->h()V

    return-void
.end method

.method public onCloseChat()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-virtual {p0}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->h()V

    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->k:Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->k:Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;

    invoke-virtual {v0}, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->a()V

    iput-boolean v1, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->u:Z

    :cond_0
    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->h:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->k:Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;

    invoke-virtual {v0}, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->a()V

    iput-boolean v1, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->u:Z

    :cond_1
    return-void
.end method

.method public onConnected()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object p0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->k:Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->e:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public onDisconnectedToChat()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object p0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->k:Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->b()V

    :cond_0
    return-void
.end method

.method public onLoad()V
    .locals 12
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "homepage"

    iget-object v1, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->g:Lcom/powerfront/insidewebsdkandroid/models/InsideView;

    const-string v4, "Home"

    if-nez v1, :cond_0

    new-instance v2, Lcom/powerfront/insidewebsdkandroid/models/InsideView;

    sget-object v3, Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;->Home:Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/powerfront/insidewebsdkandroid/models/InsideView;-><init>(Lcom/powerfront/insidewebsdkandroid/models/InsideViewType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/util/HashMap;[Ljava/lang/String;)V

    iput-object v2, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->g:Lcom/powerfront/insidewebsdkandroid/models/InsideView;

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sget-object v2, Lcom/powerfront/insidewebsdkandroid/InsideClient;->y:Landroid/content/Context;

    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->l(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/powerfront/insidewebsdkandroid/InsideClient;->z:Landroid/content/Context;

    if-eqz v2, :cond_2

    invoke-virtual {p0, v2}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->l(Landroid/content/Context;)V

    :cond_2
    :goto_0
    :try_start_0
    const-string v2, "type"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "name"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->j:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "pn-gcm-token"

    iget-object v3, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->j:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto/16 :goto_6

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->g:Lcom/powerfront/insidewebsdkandroid/models/InsideView;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "tags"

    if-eqz v0, :cond_7

    :try_start_1
    iget-object v0, v0, Lcom/powerfront/insidewebsdkandroid/models/InsideView;->e:[Ljava/lang/String;

    if-eqz v0, :cond_7

    array-length v0, v0

    if-lez v0, :cond_7

    const-string v0, "SDK,"

    const/4 v3, 0x0

    move v4, v3

    :goto_2
    iget-object v5, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->g:Lcom/powerfront/insidewebsdkandroid/models/InsideView;

    iget-object v5, v5, Lcom/powerfront/insidewebsdkandroid/models/InsideView;->e:[Ljava/lang/String;

    array-length v6, v5

    if-ge v4, v6, :cond_5

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xff

    if-le v5, v6, :cond_4

    iget-object v5, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->g:Lcom/powerfront/insidewebsdkandroid/models/InsideView;

    iget-object v5, v5, Lcom/powerfront/insidewebsdkandroid/models/InsideView;->e:[Ljava/lang/String;

    aget-object v5, v5, v4

    goto :goto_3

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->g:Lcom/powerfront/insidewebsdkandroid/models/InsideView;

    iget-object v0, v0, Lcom/powerfront/insidewebsdkandroid/models/InsideView;->e:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_6
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :cond_7
    const-string v0, "SDK"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_4
    const-string v0, "trackView"

    invoke-virtual {p0, v0, v1}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->d(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_7
    iget-object p0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->k:Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;

    if-eqz p0, :cond_8

    iget-object v0, p0, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->e:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->c:Lkotlinx/coroutines/flow/MutableSharedFlow;

    sget-object v0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatIsLoading;->a:Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatIsLoading;

    invoke-static {v0}, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$Companion;->a(Lcom/vuitton/core/infrastructure/chat/model/ChatEvent;)Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableSharedFlow;->a(Ljava/lang/Object;)Z

    :cond_8
    return-void
.end method

.method public onMinimiseChat()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->k:Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->e:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->d:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    invoke-virtual {v1}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->f()V

    iget-object v0, v0, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->c:Lkotlinx/coroutines/flow/MutableSharedFlow;

    sget-object v1, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatMinimising;->a:Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$ChatMinimising;

    invoke-static {v1}, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$Companion;->a(Lcom/vuitton/core/infrastructure/chat/model/ChatEvent;)Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableSharedFlow;->a(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->f()V

    return-void
.end method

.method public onOpenChat()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public final p()V
    .locals 3

    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/powerfront/insidewebsdkandroid/models/InsideUser;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, v2, v2, v1}, Lcom/powerfront/insidewebsdkandroid/models/InsideUser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    iput-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->e:Lcom/powerfront/insidewebsdkandroid/models/InsideUser;

    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/powerfront/insidewebsdkandroid/InsideClient$15;

    invoke-direct {v1, p0}, Lcom/powerfront/insidewebsdkandroid/InsideClient$15;-><init>(Lcom/powerfront/insidewebsdkandroid/InsideClient;)V

    const-string p0, "javascript:trackUser(\"\",\"\",{})"

    invoke-virtual {v0, p0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method

.method public unReadCount(I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object p0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->k:Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->e:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->c:Lkotlinx/coroutines/flow/MutableSharedFlow;

    new-instance v0, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$UnReadCount;

    invoke-direct {v0, p1}, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$UnReadCount;-><init>(I)V

    invoke-static {v0}, Lcom/vuitton/core/infrastructure/chat/model/ChatEvent$Companion;->a(Lcom/vuitton/core/infrastructure/chat/model/ChatEvent;)Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableSharedFlow;->a(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public viewproduct(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "skuId"

    const-string v1, "productId"

    const-string v2, "P"

    iget-object v3, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->k:Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;

    if-eqz v3, :cond_6

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-class v4, Ljava/lang/Integer;

    const-class v5, Ljava/lang/String;

    const-string v6, ""

    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->e(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->e(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v6

    :goto_0
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->e(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->e(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "0"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->k:Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;

    invoke-virtual {p0, p1, v6}, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->k:Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    return-void
.end method
