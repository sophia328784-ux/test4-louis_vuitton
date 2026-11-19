.class public Lcom/batch/android/n0/e;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final l:Ljava/lang/String; = "timeoutDone"

.field private static final m:F = 52.0f

.field private static final n:F = 10.0f

.field private static final o:F = 20.0f


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/batch/android/h0/h;

.field private final c:Lcom/batch/android/a0/d;

.field private final d:Landroid/graphics/Point;

.field private final e:Lcom/batch/android/messaging/view/a;

.field private final f:Landroid/widget/RelativeLayout;

.field private final g:Landroid/widget/ProgressBar;

.field private h:Landroid/os/Handler;

.field private i:Lcom/batch/android/s0/d;

.field private j:Z

.field private k:Lcom/batch/android/z/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/batch/android/h0/h;Lcom/batch/android/a0/d;Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/batch/android/n0/e;->j:Z

    sget v1, Lcom/batch/android/R$id;->com_batchsdk_messaging_root_view:I

    invoke-virtual {p0, v1}, Landroid/view/View;->setId(I)V

    iput-object p1, p0, Lcom/batch/android/n0/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/batch/android/n0/e;->b:Lcom/batch/android/h0/h;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p2, Lcom/batch/android/h0/h;->h:Ljava/lang/String;

    invoke-static {p2}, Lcom/batch/android/o0/b;->d(Ljava/lang/String;)Lcom/batch/android/a0/d;

    move-result-object p3

    :goto_0
    iput-object p3, p0, Lcom/batch/android/n0/e;->c:Lcom/batch/android/a0/d;

    invoke-static {p1}, Lcom/batch/android/o0/d;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p2

    iput-object p2, p0, Lcom/batch/android/n0/e;->d:Landroid/graphics/Point;

    invoke-direct {p0}, Lcom/batch/android/n0/e;->a()Landroid/widget/RelativeLayout;

    move-result-object p2

    iput-object p2, p0, Lcom/batch/android/n0/e;->f:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p2}, Lcom/batch/android/n0/e;->b(Landroid/widget/RelativeLayout;)Lcom/batch/android/s0/d;

    move-result-object p3

    iput-object p3, p0, Lcom/batch/android/n0/e;->i:Lcom/batch/android/s0/d;

    invoke-direct {p0, p2}, Lcom/batch/android/n0/e;->c(Landroid/widget/RelativeLayout;)Landroid/widget/ProgressBar;

    move-result-object p3

    iput-object p3, p0, Lcom/batch/android/n0/e;->g:Landroid/widget/ProgressBar;

    invoke-direct {p0, p2}, Lcom/batch/android/n0/e;->a(Landroid/widget/RelativeLayout;)Lcom/batch/android/messaging/view/a;

    move-result-object p2

    iput-object p2, p0, Lcom/batch/android/n0/e;->e:Lcom/batch/android/messaging/view/a;

    iget-object p2, p0, Lcom/batch/android/n0/e;->i:Lcom/batch/android/s0/d;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    const-string v1, "utf-8"

    invoke-virtual {p2, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object p2, p0, Lcom/batch/android/n0/e;->i:Lcom/batch/android/s0/d;

    const-string v0, "_batchAndroidBridge"

    invoke-virtual {p2, p4, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/batch/android/n0/e;->i:Lcom/batch/android/s0/d;

    new-instance p4, Lcom/batch/android/n0/e$a;

    invoke-direct {p4, p0, p1}, Lcom/batch/android/n0/e$a;-><init>(Lcom/batch/android/n0/e;Landroid/content/Context;)V

    invoke-virtual {p2, p4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object p1, p0, Lcom/batch/android/n0/e;->i:Lcom/batch/android/s0/d;

    new-instance p2, Lcom/batch/android/n0/e$b;

    invoke-direct {p2, p0}, Lcom/batch/android/n0/e$b;-><init>(Lcom/batch/android/n0/e;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {p0, p3}, Landroid/view/View;->setFitsSystemWindows(Z)V

    invoke-static {p0}, Lcom/batch/android/e/f0;->b(Landroid/view/View;)V

    return-void
.end method

.method private a()Landroid/widget/RelativeLayout;
    .locals 3

    .line 126
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/batch/android/n0/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 127
    sget v1, Lcom/batch/android/R$id;->com_batchsdk_messaging_container_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 128
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private a(Landroid/widget/RelativeLayout;)Lcom/batch/android/messaging/view/a;
    .locals 5

    new-instance v0, Lcom/batch/android/messaging/view/a;

    iget-object v1, p0, Lcom/batch/android/n0/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/batch/android/messaging/view/a;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/batch/android/R$id;->com_batchsdk_messaging_close_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/batch/android/messaging/view/CloseButton;->setShowBorder(Z)V

    new-instance v1, Lcom/batch/android/a0/b;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "close"

    invoke-direct {v1, v4, v3}, Lcom/batch/android/a0/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/batch/android/n0/e;->a(Lcom/batch/android/a0/b;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/batch/android/messaging/view/CloseButton;->a(Ljava/util/Map;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v3, 0x42500000    # 52.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/batch/android/o0/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/batch/android/o0/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/batch/android/messaging/view/CloseButton;->setPadding(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xb

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/batch/android/o0/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v1

    invoke-virtual {v3, v2, v1, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lhi;

    const/16 v2, 0xc

    invoke-direct {v1, p0, v2}, Lhi;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/batch/android/n0/e;)Lcom/batch/android/z/c;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/batch/android/n0/e;->k:Lcom/batch/android/z/c;

    return-object p0
.end method

.method private a(Lcom/batch/android/a0/b;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/batch/android/a0/b;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/batch/android/n0/e;->c:Lcom/batch/android/a0/d;

    iget-object p0, p0, Lcom/batch/android/n0/e;->d:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p0}, Lcom/batch/android/a0/d;->a(Lcom/batch/android/a0/b;Landroid/graphics/Point;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Lcom/batch/android/n0/e;->c()V

    return-void
.end method

.method private a(Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;Lcom/batch/android/f0/d;Ljava/lang/String;)V
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/batch/android/n0/e;->k:Lcom/batch/android/z/c;

    if-eqz p0, :cond_0

    .line 121
    invoke-interface {p0, p1, p2, p3}, Lcom/batch/android/z/c;->a(Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;Lcom/batch/android/f0/d;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/batch/android/n0/e;Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;Lcom/batch/android/f0/d;Ljava/lang/String;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/batch/android/n0/e;->a(Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;Lcom/batch/android/f0/d;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/batch/android/n0/e;Ljava/lang/String;I)V
    .locals 0

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/batch/android/n0/e;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .line 116
    sget-object v0, Lcom/batch/android/f0/d;->c:Lcom/batch/android/f0/d;

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 117
    :pswitch_1
    sget-object v0, Lcom/batch/android/f0/d;->f:Lcom/batch/android/f0/d;

    goto :goto_0

    .line 118
    :pswitch_2
    sget-object v0, Lcom/batch/android/f0/d;->d:Lcom/batch/android/f0/d;

    .line 119
    :goto_0
    sget-object p2, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;->b:Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;

    invoke-direct {p0, p2, v0, p1}, Lcom/batch/android/n0/e;->a(Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;Lcom/batch/android/f0/d;Ljava/lang/String;)V

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

.method public static synthetic a(Lcom/batch/android/n0/e;Z)Z
    .locals 0

    .line 113
    iput-boolean p1, p0, Lcom/batch/android/n0/e;->j:Z

    return p1
.end method

.method private b(Landroid/widget/RelativeLayout;)Lcom/batch/android/s0/d;
    .locals 4

    new-instance v0, Lcom/batch/android/s0/d;

    iget-object v1, p0, Lcom/batch/android/n0/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/batch/android/s0/d;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/batch/android/R$id;->com_batchsdk_messaging_web_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v2, Lcom/batch/android/a0/b;

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "webview"

    invoke-direct {v2, v3, v1}, Lcom/batch/android/a0/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/batch/android/n0/e;->a(Lcom/batch/android/a0/b;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/batch/android/s0/d;->a(Ljava/util/Map;)V

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public static synthetic b(Lcom/batch/android/n0/e;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/batch/android/n0/e;->d()V

    return-void
.end method

.method private c(Landroid/widget/RelativeLayout;)Landroid/widget/ProgressBar;
    .locals 7

    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/batch/android/n0/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/batch/android/o0/d;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    new-instance v2, Lcom/batch/android/a0/b;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "root"

    invoke-direct {v2, v5, v4}, Lcom/batch/android/a0/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/batch/android/n0/e;->a(Lcom/batch/android/a0/b;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    move v2, v3

    :cond_0
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "loader"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "dark"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    const-string v5, "light"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    const/high16 p0, -0x1000000

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    :cond_3
    const/4 p0, -0x1

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    :goto_2
    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private c()V
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/batch/android/n0/e;->k:Lcom/batch/android/z/c;

    if-eqz p0, :cond_0

    .line 131
    invoke-interface {p0}, Lcom/batch/android/z/c;->a()V

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/batch/android/n0/e;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/batch/android/n0/e;->g()V

    return-void
.end method

.method public static synthetic d(Lcom/batch/android/n0/e;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/batch/android/n0/e;->e()Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method private d()V
    .locals 1

    iget-object p0, p0, Lcom/batch/android/n0/e;->k:Lcom/batch/android/z/c;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/batch/android/z/c;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private e()Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 3

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object p0, p0, Lcom/batch/android/n0/e;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/batch/android/o0/c;->b(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic e(Lcom/batch/android/n0/e;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/batch/android/n0/e;->f()V

    return-void
.end method

.method private f()V
    .locals 3

    iget-boolean v0, p0, Lcom/batch/android/n0/e;->j:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;->e:Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;

    sget-object v1, Lcom/batch/android/f0/d;->f:Lcom/batch/android/f0/d;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/batch/android/n0/e;->a(Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$e;Lcom/batch/android/f0/d;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic f(Lcom/batch/android/n0/e;Landroid/view/View;)V
    .locals 0

    .line 13
    invoke-static {p0, p1}, Lcom/batch/android/n0/e;->instrumented$0$a$-Landroid-widget-RelativeLayout--Lcom-batch-android-messaging-view-a-(Lcom/batch/android/n0/e;Landroid/view/View;)V

    return-void
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/batch/android/n0/e;->g:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/n0/e;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/batch/android/n0/e;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 4

    iget-object v0, p0, Lcom/batch/android/n0/e;->b:Lcom/batch/android/h0/h;

    iget v0, v0, Lcom/batch/android/h0/h;->j:I

    if-lez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/batch/android/n0/e;->h:Landroid/os/Handler;

    new-instance v1, Lf31;

    const/16 v2, 0x11

    invoke-direct {v1, p0, v2}, Lf31;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Lcom/batch/android/n0/e;->b:Lcom/batch/android/h0/h;

    iget p0, p0, Lcom/batch/android/h0/h;->j:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private static synthetic instrumented$0$a$-Landroid-widget-RelativeLayout--Lcom-batch-android-messaging-view-a-(Lcom/batch/android/n0/e;Landroid/view/View;)V
    .locals 0

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->n(Landroid/view/View;)V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/batch/android/n0/e;->a(Landroid/view/View;)V

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->o()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    throw p0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/batch/android/n0/e;->i:Lcom/batch/android/s0/d;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 123
    const-string v0, "timeoutDone"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/batch/android/n0/e;->j:Z

    if-nez p1, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/batch/android/n0/e;->h()V

    :cond_0
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .line 46
    iget-boolean v0, p0, Lcom/batch/android/n0/e;->j:Z

    const-string v1, "timeoutDone"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    iget-object v0, p0, Lcom/batch/android/n0/e;->i:Lcom/batch/android/s0/d;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 48
    iget-object p1, p0, Lcom/batch/android/n0/e;->h:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 50
    iput-object v0, p0, Lcom/batch/android/n0/e;->h:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 0

    .line 51
    const/4 p0, 0x0

    return p0
.end method

.method public getCloseButton()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/n0/e;->e:Lcom/batch/android/messaging/view/a;

    return-object p0
.end method

.method public i()V
    .locals 4

    invoke-direct {p0}, Lcom/batch/android/n0/e;->h()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/batch/android/Batch$User;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/batch/android/Batch$User;->getRegion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "X-Batch-Custom-Language"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "X-Batch-Custom-Region"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/batch/android/n0/e;->i:Lcom/batch/android/s0/d;

    iget-object p0, p0, Lcom/batch/android/n0/e;->b:Lcom/batch/android/h0/h;

    iget-object p0, p0, Lcom/batch/android/h0/h;->i:Ljava/lang/String;

    invoke-static {v1, p0, v0}, Lcom/sensorsdata/analytics/android/sdk/jsbridge/JSHookAop;->loadUrl(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v1, p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    iget-object v0, p0, Lcom/batch/android/n0/e;->f:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/batch/android/n0/e;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public setActionListener(Lcom/batch/android/z/c;)V
    .locals 0

    iput-object p1, p0, Lcom/batch/android/n0/e;->k:Lcom/batch/android/z/c;

    return-void
.end method
