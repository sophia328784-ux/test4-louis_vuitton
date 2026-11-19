.class Lcom/powerfront/insidewebsdkandroid/InsideClient$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/powerfront/insidewebsdkandroid/InsideClient;

.field final synthetic val$finalUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/powerfront/insidewebsdkandroid/InsideClient;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$16;->this$0:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    iput-object p2, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$16;->val$finalUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$16;->val$finalUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$16;->this$0:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    iget-object p0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    if-eqz p0, :cond_0

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/jsbridge/JSHookAop;->loadUrl(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
