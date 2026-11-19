.class public Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$b;,
        Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$f;,
        Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$c;,
        Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$d;,
        Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "BatchWebviewJSInterface"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/batch/android/BatchMessage;

.field private final c:Lcom/batch/android/z/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/batch/android/BatchMessage;Lcom/batch/android/z/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;->b:Lcom/batch/android/BatchMessage;

    iput-object p3, p0, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;->c:Lcom/batch/android/z/c;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/batch/android/json/JSONObject;)Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$b;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$c;,
            Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$f;
        }
    .end annotation

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "dismiss"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v8, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "getcustompayload"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v8, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "getattributionid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/4 v8, 0x7

    goto :goto_0

    :sswitch_3
    const-string v0, "getcustomlanguage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v8, v1

    goto :goto_0

    :sswitch_4
    const-string v0, "getinstallationid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v8, v2

    goto :goto_0

    :sswitch_5
    const-string v0, "performaction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move v8, v3

    goto :goto_0

    :sswitch_6
    const-string v0, "gettrackingid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    move v8, v4

    goto :goto_0

    :sswitch_7
    const-string v0, "opendeeplink"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    move v8, v5

    goto :goto_0

    :sswitch_8
    const-string v0, "getcustomuserid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    move v8, v6

    goto :goto_0

    :sswitch_9
    const-string v0, "getcustomregion"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    move v8, v7

    :goto_0
    packed-switch v8, :pswitch_data_0

    new-instance p0, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$f;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$f;-><init>(Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$a;)V

    throw p0

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;->a(Lcom/batch/android/json/JSONObject;)V

    invoke-direct {p0}, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;->f()Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$b;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance p1, Lcom/batch/android/q;

    invoke-direct {p1, p0, v7}, Lcom/batch/android/q;-><init>(Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;I)V

    return-object p1

    :pswitch_2
    new-instance p1, Lcom/batch/android/q;

    invoke-direct {p1, p0, v6}, Lcom/batch/android/q;-><init>(Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;I)V

    return-object p1

    :pswitch_3
    new-instance p1, Lcom/batch/android/q;

    invoke-direct {p1, p0, v5}, Lcom/batch/android/q;-><init>(Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;I)V

    return-object p1

    :pswitch_4
    new-instance p1, Lcom/batch/android/q;

    invoke-direct {p1, p0, v4}, Lcom/batch/android/q;-><init>(Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;I)V

    return-object p1

    :pswitch_5
    invoke-direct {p0, p2}, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;->c(Lcom/batch/android/json/JSONObject;)V

    invoke-direct {p0}, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;->f()Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$b;

    move-result-object p0

    return-object p0

    :pswitch_6
    new-instance p1, Lcom/batch/android/q;

    invoke-direct {p1, p0, v3}, Lcom/batch/android/q;-><init>(Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;I)V

    return-object p1

    :pswitch_7
    invoke-direct {p0, p2}, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;->b(Lcom/batch/android/json/JSONObject;)V

    invoke-direct {p0}, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;->f()Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$b;

    move-result-object p0

    return-object p0

    :pswitch_8
    new-instance p1, Lcom/batch/android/q;

    invoke-direct {p1, p0, v2}, Lcom/batch/android/q;-><init>(Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;I)V

    return-object p1

    :pswitch_9
    new-instance p1, Lcom/batch/android/q;

    invoke-direct {p1, p0, v1}, Lcom/batch/android/q;-><init>(Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;I)V

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x5dae2805 -> :sswitch_9
        -0x57cb1cd3 -> :sswitch_8
        -0x4a086cd0 -> :sswitch_7
        -0x42e3ca18 -> :sswitch_6
        -0x3d536729 -> :sswitch_5
        -0x2203a55 -> :sswitch_4
        0x1e341e9f -> :sswitch_3
        0x37a60644 -> :sswitch_2
        0x38485167 -> :sswitch_1
        0x63a3b28a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$b;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$c;
        }
    .end annotation

    .line 223
    :try_start_0
    new-instance p0, Lcom/batch/android/json/JSONObject;

    invoke-direct {p0}, Lcom/batch/android/json/JSONObject;-><init>()V

    .line 224
    const-string v0, "result"

    invoke-interface {p1}, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 225
    invoke-virtual {p0}, Lcom/batch/android/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 226
    const-string p1, "BatchWebviewJSInterface"

    const-string v0, "Could not serialize success JSON"

    invoke-static {p1, v0, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 227
    const-string p0, "{\'error\':\'unknown serialization error (-1)\'}"

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 218
    :try_start_0
    new-instance p0, Lcom/batch/android/json/JSONObject;

    invoke-direct {p0}, Lcom/batch/android/json/JSONObject;-><init>()V

    .line 219
    const-string v0, "error"

    invoke-virtual {p0, v0, p1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    .line 220
    invoke-virtual {p0}, Lcom/batch/android/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 221
    const-string p1, "BatchWebviewJSInterface"

    const-string v0, "Could not serialize error JSON"

    invoke-static {p1, v0, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 222
    const-string p0, "{\'error\':\'unknown serialization error (-2)\'}"

    return-object p0
.end method

.method private a(Lcom/batch/android/json/JSONObject;)V
    .locals 2

    .line 229
    const-string v0, "analyticsID"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 230
    iget-object p0, p0, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;->c:Lcom/batch/android/z/c;

    if-eqz p0, :cond_0

    .line 231
    invoke-interface {p0, p1}, Lcom/batch/android/z/c;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private b(Lcom/batch/android/json/JSONObject;)V
    .locals 4

    const-string v0, "url"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "openInApp"

    invoke-virtual {p1, v2, v1}, Lcom/batch/android/json/JSONObject;->reallyOptBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "analyticsID"

    invoke-virtual {p1, v3, v1}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;->c:Lcom/batch/android/z/c;

    if-eqz p0, :cond_0

    invoke-interface {p0, v0, v2, p1}, Lcom/batch/android/z/c;->a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$d;

    const/16 p1, -0x15

    const-string v0, "Cannot perform action: empty URL"

    invoke-direct {p0, p1, v0}, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$d;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method private c()Ljava/lang/String;
    .locals 3

    .line 50
    :try_start_0
    new-instance v0, Lcom/batch/android/json/JSONObject;

    iget-object p0, p0, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;->b:Lcom/batch/android/BatchMessage;

    invoke-virtual {p0}, Lcom/batch/android/BatchMessage;->b()Lcom/batch/android/json/JSONObject;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/batch/android/json/JSONObject;-><init>(Lcom/batch/android/json/JSONObject;)V

    .line 51
    const-string p0, "com.batch"

    invoke-virtual {v0, p0}, Lcom/batch/android/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    invoke-virtual {v0}, Lcom/batch/android/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 53
    new-instance v0, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$d;

    const/16 v1, -0x17

    const-string v2, "Could not copy custom payload JSON"

    invoke-direct {v0, v1, v2, p0}, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$d;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private c(Lcom/batch/android/json/JSONObject;)V
    .locals 4

    const-string v0, "name"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "args"

    invoke-virtual {p1, v2}, Lcom/batch/android/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/batch/android/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/batch/android/json/JSONObject;

    invoke-direct {v2}, Lcom/batch/android/json/JSONObject;-><init>()V

    :cond_0
    const-string v3, "analyticsID"

    invoke-virtual {p1, v3, v1}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;->c:Lcom/batch/android/z/c;

    if-eqz p0, :cond_1

    invoke-interface {p0, v0, v2, p1}, Lcom/batch/android/z/c;->a(Ljava/lang/String;Lcom/batch/android/json/JSONObject;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    new-instance p0, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$d;

    const/16 p1, -0x15

    const-string v0, "Cannot perform action: empty name"

    invoke-direct {p0, p1, v0}, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$d;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method private f()Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$b;
    .locals 0

    new-instance p0, Lcom/batch/android/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0
.end method

.method private h()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;->b:Lcom/batch/android/BatchMessage;

    invoke-virtual {p0}, Lcom/batch/android/BatchMessage;->c()Lcom/batch/android/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "did"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/json/JSONObject;->reallyOptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$d;

    const/16 v0, -0x14

    const-string v1, "Could not get message JSON"

    invoke-direct {p0, v0, v1}, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$d;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method private static synthetic i()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$c;
        }
    .end annotation

    const-string v0, "ok"

    return-object v0
.end method

.method public static synthetic j()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic k(Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    .line 228
    const-string p0, "Attribution identifier is not supported anymore"

    invoke-static {p0}, Lcom/batch/android/e/t;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/batch/android/Batch$User;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/batch/android/Batch$User;->getRegion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/batch/android/Batch$User;->getIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/batch/android/Batch$User;->getInstallationID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public postMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "Messaging"

    const-string v1, "BatchWebviewJSInterface"

    if-eqz p1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "Internal SDK error (-11): Invalid arguments"

    invoke-direct {p0, p1}, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :try_start_0
    new-instance v2, Lcom/batch/android/json/JSONObject;

    invoke-direct {v2, p2}, Lcom/batch/android/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    invoke-direct {p0, p1, v2}, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;->a(Ljava/lang/String;Lcom/batch/android/json/JSONObject;)Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$b;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;->a(Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$b;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$f; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$c; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$d; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p2

    goto :goto_2

    :goto_0
    const-string p2, "Unexpected bridge error"

    invoke-static {v1, p2, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "Internal SDK error (-3)"

    invoke-direct {p0, p1}, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Internal bridge error: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$d;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Internal SDK error ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$d;->a()I

    move-result p1

    const-string v0, ")"

    invoke-static {p1, v0, p2}, La;->i(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_2
    const-string v1, "In-App Webview Javascript SDK error ("

    const-string v2, "): "

    invoke-static {v1, p1, v2}, Lpq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$c;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$c;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Unknown In-App Webview Javascript SDK method: \'"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unimplemented native method \'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\'. Is the native SDK too old?"

    invoke-static {p1, v0, p2}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_4
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Could not deserialize postMessage arguments. Got: \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "Internal SDK error (-12): Invalid arguments"

    invoke-direct {p0, p1}, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_3
    const-string p1, "Internal SDK error (-10): Invalid method"

    invoke-direct {p0, p1}, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
