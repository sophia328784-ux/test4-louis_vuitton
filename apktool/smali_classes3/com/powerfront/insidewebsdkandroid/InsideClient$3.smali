.class Lcom/powerfront/insidewebsdkandroid/InsideClient$3;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/powerfront/insidewebsdkandroid/InsideClient;


# direct methods
.method public constructor <init>(Lcom/powerfront/insidewebsdkandroid/InsideClient;)V
    .locals 0

    iput-object p1, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$3;->a:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    new-instance p0, Landroid/app/AlertDialog$Builder;

    sget-object p1, Lcom/powerfront/insidewebsdkandroid/InsideClient;->y:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    const-string p1, "Inside JS Alert"

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/powerfront/insidewebsdkandroid/InsideClient$3$1;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/4 p2, -0x3

    const-string p3, "OK"

    invoke-virtual {p0, p2, p3, p1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    const/4 p0, 0x1

    return p0
.end method

.method public final onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 0

    iget-object p0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$3;->a:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/powerfront/insidewebsdkandroid/InsideClient;->y:Landroid/content/Context;

    const-string p3, "android.permission.CAMERA"

    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iget-object p3, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->k:Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->d(Z)V

    iput-object p2, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->i:Landroid/webkit/ValueCallback;

    invoke-virtual {p0}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->k()Z

    move-result p0

    return p0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Lcom/vuitton/core/infrastructure/chat/adapter/InsideChatAdapter;->d(Z)V

    iput-object p2, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->i:Landroid/webkit/ValueCallback;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->l:Landroid/webkit/ValueCallback;

    return p1
.end method
