.class Lcom/batch/android/n0/e$a;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/n0/e;-><init>(Landroid/content/Context;Lcom/batch/android/h0/h;Lcom/batch/android/a0/d;Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/batch/android/n0/e;


# direct methods
.method public constructor <init>(Lcom/batch/android/n0/e;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/batch/android/n0/e$a;->b:Lcom/batch/android/n0/e;

    iput-object p2, p0, Lcom/batch/android/n0/e$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method private static synthetic a(Landroid/webkit/JsPromptResult;Landroid/content/DialogInterface;)V
    .locals 0

    .line 15
    invoke-virtual {p0}, Landroid/webkit/JsResult;->cancel()V

    return-void
.end method

.method private static synthetic a(Landroid/webkit/JsPromptResult;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 14
    invoke-virtual {p0}, Landroid/webkit/JsResult;->cancel()V

    return-void
.end method

.method private static synthetic a(Landroid/webkit/JsResult;Landroid/content/DialogInterface;)V
    .locals 0

    .line 12
    invoke-virtual {p0}, Landroid/webkit/JsResult;->cancel()V

    return-void
.end method

.method private static synthetic a(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 13
    invoke-virtual {p0}, Landroid/webkit/JsResult;->confirm()V

    return-void
.end method

.method private static synthetic a(Landroid/widget/EditText;Landroid/webkit/JsPromptResult;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Landroid/webkit/JsPromptResult;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/batch/android/n0/e$a;->a(Landroid/webkit/JsPromptResult;Landroid/content/DialogInterface;)V

    return-void
.end method

.method private static synthetic b(Landroid/webkit/JsResult;Landroid/content/DialogInterface;)V
    .locals 0

    .line 5
    invoke-virtual {p0}, Landroid/webkit/JsResult;->cancel()V

    return-void
.end method

.method private static synthetic b(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 4
    invoke-virtual {p0}, Landroid/webkit/JsResult;->confirm()V

    return-void
.end method

.method public static synthetic c(Landroid/widget/EditText;Landroid/webkit/JsPromptResult;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/batch/android/n0/e$a;->a(Landroid/widget/EditText;Landroid/webkit/JsPromptResult;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic d(Landroid/webkit/JsResult;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/batch/android/n0/e$a;->a(Landroid/webkit/JsResult;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic e(Landroid/webkit/JsResult;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/batch/android/n0/e$a;->b(Landroid/webkit/JsResult;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic f(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/batch/android/n0/e$a;->a(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic g(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/batch/android/n0/e$a;->b(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic h(Landroid/webkit/JsPromptResult;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/batch/android/n0/e$a;->a(Landroid/webkit/JsPromptResult;Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/batch/android/R$id;->com_batchsdk_messaging_web_view:I

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/batch/android/n0/e$a;->b:Lcom/batch/android/n0/e;

    invoke-static {p0}, Lcom/batch/android/n0/e;->b(Lcom/batch/android/n0/e;)V

    :cond_0
    return-void
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 3

    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/batch/android/n0/e$a;->b:Lcom/batch/android/n0/e;

    invoke-static {v0}, Lcom/batch/android/n0/e;->a(Lcom/batch/android/n0/e;)Lcom/batch/android/z/c;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->requestFocusNodeHref(Landroid/os/Message;)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "url"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v1, v0

    :cond_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/batch/android/n0/e$a;->b:Lcom/batch/android/n0/e;

    invoke-static {v0}, Lcom/batch/android/n0/e;->a(Lcom/batch/android/n0/e;)Lcom/batch/android/z/c;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/batch/android/z/c;->a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    iget-object p0, p0, Lcom/batch/android/n0/e$a;->b:Lcom/batch/android/n0/e;

    invoke-static {p0}, Lcom/batch/android/n0/e;->d(Lcom/batch/android/n0/e;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x1040014

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->f(I)V

    invoke-virtual {p0, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->c(Ljava/lang/String;)V

    new-instance p1, Lcom/batch/android/n0/f;

    const/4 p2, 0x1

    invoke-direct {p1, p4, p2}, Lcom/batch/android/n0/f;-><init>(Landroid/webkit/JsResult;I)V

    const p3, 0x104000a

    invoke-virtual {p0, p3, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance p1, Lcom/batch/android/n0/g;

    invoke-direct {p1, p4, p2}, Lcom/batch/android/n0/g;-><init>(Landroid/webkit/JsResult;I)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->d(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->g()Landroidx/appcompat/app/AlertDialog;

    return p2
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    iget-object p0, p0, Lcom/batch/android/n0/e$a;->b:Lcom/batch/android/n0/e;

    invoke-static {p0}, Lcom/batch/android/n0/e;->d(Lcom/batch/android/n0/e;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x1040014

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->f(I)V

    invoke-virtual {p0, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->c(Ljava/lang/String;)V

    new-instance p1, Lcom/batch/android/n0/f;

    const/4 p2, 0x0

    invoke-direct {p1, p4, p2}, Lcom/batch/android/n0/f;-><init>(Landroid/webkit/JsResult;I)V

    const p3, 0x104000a

    invoke-virtual {p0, p3, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance p1, Lcom/batch/android/n0/g;

    invoke-direct {p1, p4, p2}, Lcom/batch/android/n0/g;-><init>(Landroid/webkit/JsResult;I)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->d(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->g()Landroidx/appcompat/app/AlertDialog;

    const/4 p0, 0x1

    return p0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 0

    new-instance p1, Landroid/widget/EditText;

    iget-object p2, p0, Lcom/batch/android/n0/e$a;->a:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/batch/android/n0/e$a;->b:Lcom/batch/android/n0/e;

    invoke-static {p0}, Lcom/batch/android/n0/e;->d(Lcom/batch/android/n0/e;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p2, 0x1040014

    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->f(I)V

    invoke-virtual {p0, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->c(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance p2, Lcom/batch/android/n0/h;

    invoke-direct {p2, p1, p5}, Lcom/batch/android/n0/h;-><init>(Landroid/widget/EditText;Landroid/webkit/JsPromptResult;)V

    const p1, 0x104000a

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance p1, Lcom/batch/android/n0/f;

    const/4 p2, 0x2

    invoke-direct {p1, p5, p2}, Lcom/batch/android/n0/f;-><init>(Landroid/webkit/JsResult;I)V

    const/high16 p3, 0x1040000

    invoke-virtual {p0, p3, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance p1, Lcom/batch/android/n0/g;

    invoke-direct {p1, p5, p2}, Lcom/batch/android/n0/g;-><init>(Landroid/webkit/JsResult;I)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->d(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->g()Landroidx/appcompat/app/AlertDialog;

    const/4 p0, 0x1

    return p0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    const/16 p1, 0x64

    if-lt p2, p1, :cond_0

    iget-object p0, p0, Lcom/batch/android/n0/e$a;->b:Lcom/batch/android/n0/e;

    invoke-static {p0}, Lcom/batch/android/n0/e;->c(Lcom/batch/android/n0/e;)V

    :cond_0
    return-void
.end method
