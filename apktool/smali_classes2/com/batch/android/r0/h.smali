.class public final Lcom/batch/android/r0/h;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/r0/f;


# instance fields
.field private a:Lcom/batch/android/z/c;

.field private b:Z

.field private c:Landroid/os/Handler;

.field private d:I

.field private e:Landroid/webkit/WebView;

.field private f:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x2710

    iput p1, p0, Lcom/batch/android/r0/h;->d:I

    return-void
.end method

.method private final a()V
    .locals 1

    .line 155
    iget-object p0, p0, Lcom/batch/android/r0/h;->a:Lcom/batch/android/z/c;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/batch/android/z/c;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final a(Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;Lcom/batch/android/f0/d;Ljava/lang/String;)V
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/batch/android/r0/h;->a:Lcom/batch/android/z/c;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/batch/android/z/c;->a(Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;Lcom/batch/android/f0/d;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final synthetic a(Lcom/batch/android/r0/h;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/batch/android/r0/h;->a()V

    return-void
.end method

.method public static final synthetic a(Lcom/batch/android/r0/h;Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;Lcom/batch/android/f0/d;Ljava/lang/String;)V
    .locals 0

    .line 141
    invoke-direct {p0, p1, p2, p3}, Lcom/batch/android/r0/h;->a(Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;Lcom/batch/android/f0/d;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic a(Lcom/batch/android/r0/h;Ljava/lang/String;I)V
    .locals 0

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/batch/android/r0/h;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic a(Lcom/batch/android/r0/h;Z)V
    .locals 0

    .line 140
    iput-boolean p1, p0, Lcom/batch/android/r0/h;->b:Z

    return-void
.end method

.method private final a(Ljava/lang/String;I)V
    .locals 1

    .line 151
    sget-object v0, Lcom/batch/android/f0/d;->c:Lcom/batch/android/f0/d;

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 152
    :pswitch_1
    sget-object v0, Lcom/batch/android/f0/d;->f:Lcom/batch/android/f0/d;

    goto :goto_0

    .line 153
    :pswitch_2
    sget-object v0, Lcom/batch/android/f0/d;->d:Lcom/batch/android/f0/d;

    .line 154
    :goto_0
    sget-object p2, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;->b:Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;

    invoke-direct {p0, p2, v0, p1}, Lcom/batch/android/r0/h;->a(Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;Lcom/batch/android/f0/d;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x10
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final b()Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 3

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/o0/c;->b(Landroid/content/Context;)I

    move-result p0

    invoke-direct {v1, v2, p0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static final synthetic b(Lcom/batch/android/r0/h;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/batch/android/r0/h;->b()Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method private final c()V
    .locals 3

    iget-boolean v0, p0, Lcom/batch/android/r0/h;->b:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;->e:Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;

    sget-object v1, Lcom/batch/android/f0/d;->f:Lcom/batch/android/f0/d;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/batch/android/r0/h;->a(Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;Lcom/batch/android/f0/d;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final synthetic c(Lcom/batch/android/r0/h;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/batch/android/r0/h;->d()V

    return-void
.end method

.method private final d()V
    .locals 1

    iget-object p0, p0, Lcom/batch/android/r0/h;->f:Landroid/widget/ProgressBar;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const-string p0, "loader"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final d(Lcom/batch/android/r0/h;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-direct {p0}, Lcom/batch/android/r0/h;->c()V

    return-void
.end method

.method private final e()V
    .locals 4

    iget v0, p0, Lcom/batch/android/r0/h;->d:I

    if-lez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/batch/android/r0/h;->c:Landroid/os/Handler;

    new-instance v1, Lf31;

    const/16 v2, 0x13

    invoke-direct {v1, p0, v2}, Lf31;-><init>(Ljava/lang/Object;I)V

    iget p0, p0, Lcom/batch/android/r0/h;->d:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static synthetic e(Lcom/batch/android/r0/h;)V
    .locals 0

    .line 33
    invoke-static {p0}, Lcom/batch/android/r0/h;->d(Lcom/batch/android/r0/h;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/batch/android/BatchMessage;Lcom/batch/android/z/c;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    iput-object p2, p0, Lcom/batch/android/r0/h;->a:Lcom/batch/android/z/c;

    .line 158
    iget-object v0, p0, Lcom/batch/android/r0/h;->e:Landroid/webkit/WebView;

    const/4 v1, 0x0

    const-string v2, "webView"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    .line 159
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 160
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 161
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    const/4 v4, 0x0

    .line 162
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 163
    const-string v5, "utf-8"

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 165
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 166
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    const/4 v3, 0x2

    .line 167
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 168
    new-instance v0, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/batch/android/r0/h;->a:Lcom/batch/android/z/c;

    invoke-direct {v0, v3, p1, v4}, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;-><init>(Landroid/content/Context;Lcom/batch/android/BatchMessage;Lcom/batch/android/z/c;)V

    .line 169
    iget-object p1, p0, Lcom/batch/android/r0/h;->e:Landroid/webkit/WebView;

    if-eqz p1, :cond_2

    const-string v3, "_batchAndroidBridge"

    invoke-virtual {p1, v0, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    iget-object p1, p0, Lcom/batch/android/r0/h;->e:Landroid/webkit/WebView;

    if-eqz p1, :cond_1

    .line 171
    new-instance v0, Lcom/batch/android/r0/h$a;

    invoke-direct {v0, p2, p0}, Lcom/batch/android/r0/h$a;-><init>(Lcom/batch/android/z/c;Lcom/batch/android/r0/h;)V

    .line 172
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 173
    iget-object p1, p0, Lcom/batch/android/r0/h;->e:Landroid/webkit/WebView;

    if-eqz p1, :cond_0

    .line 174
    new-instance p2, Lcom/batch/android/r0/h$b;

    invoke-direct {p2, p0}, Lcom/batch/android/r0/h$b;-><init>(Lcom/batch/android/r0/h;)V

    .line 175
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void

    .line 176
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    .line 177
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    .line 178
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    .line 179
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1
.end method

.method public a(Lcom/batch/android/g0/c;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/batch/android/g0/c$k;

    if-nez v0, :cond_0

    const-string p0, "Messaging"

    const-string p1, "Trying to apply a non-webview style"

    invoke-static {p0, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/batch/android/R$id;->com_batchsdk_messaging_web_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iput-object v0, p0, Lcom/batch/android/r0/h;->e:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/batch/android/o0/d;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_1
    const/high16 v1, -0x1000000

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/batch/android/r0/h;->f:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    check-cast p1, Lcom/batch/android/g0/c$k;

    invoke-virtual {p1}, Lcom/batch/android/g0/c$k;->r()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcom/batch/android/r0/h;->d:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    invoke-direct {p0}, Lcom/batch/android/r0/h;->e()V

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 144
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/batch/android/Batch$User;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/batch/android/Batch$User;->getRegion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 147
    const-string v3, "X-Batch-Custom-Language"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 149
    const-string v2, "X-Batch-Custom-Region"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_1
    iget-object p0, p0, Lcom/batch/android/r0/h;->e:Landroid/webkit/WebView;

    if-eqz p0, :cond_2

    invoke-static {p0, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/jsbridge/JSHookAop;->loadUrl(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_2
    const-string p0, "webView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
