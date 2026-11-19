.class Lcom/powerfront/insidewebsdkandroid/InsideClient$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/powerfront/insidewebsdkandroid/InsideClient;


# direct methods
.method public constructor <init>(Lcom/powerfront/insidewebsdkandroid/InsideClient;)V
    .locals 0

    iput-object p1, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$7;->this$0:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$7;->this$0:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    iget-object v0, v0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$7;->this$0:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    iget-object p0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
