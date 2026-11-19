.class Lcom/powerfront/insidewebsdkandroid/InsideClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/powerfront/insidewebsdkandroid/InsideClient;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$bottom:I

.field final synthetic val$top:I


# direct methods
.method public constructor <init>(Lcom/powerfront/insidewebsdkandroid/InsideClient;Landroid/app/Activity;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$1;->this$0:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    iput-object p2, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$1;->val$activity:Landroid/app/Activity;

    iput p3, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$1;->val$top:I

    iput p4, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$1;->val$bottom:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$1;->this$0:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    iget-object v0, v0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->h:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->y:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/powerfront/insidewebsdkandroid/InsideClient$1$1;

    invoke-direct {v1, p0}, Lcom/powerfront/insidewebsdkandroid/InsideClient$1$1;-><init>(Lcom/powerfront/insidewebsdkandroid/InsideClient$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$1;->this$0:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    iget-object v1, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object v1, Lcom/powerfront/insidewebsdkandroid/InsideClient;->y:Landroid/content/Context;

    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$1;->this$0:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    iget-object v0, v0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$1;->this$0:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    iget-object v0, v0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$1;->this$0:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    iget-object v1, v1, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$1;->this$0:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    iget-object v0, v2, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$1;->val$activity:Landroid/app/Activity;

    iget-object v4, v2, Lcom/powerfront/insidewebsdkandroid/InsideClient;->o:Ljava/lang/String;

    iget-object v5, v2, Lcom/powerfront/insidewebsdkandroid/InsideClient;->p:Ljava/lang/String;

    iget-object v6, v2, Lcom/powerfront/insidewebsdkandroid/InsideClient;->q:Ljava/lang/String;

    iget-object v7, v2, Lcom/powerfront/insidewebsdkandroid/InsideClient;->r:Ljava/lang/String;

    iget-object v8, v2, Lcom/powerfront/insidewebsdkandroid/InsideClient;->s:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->j(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$1;->this$0:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    iget-object v1, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$1;->val$activity:Landroid/app/Activity;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->n:Landroid/view/ViewGroup;

    iget v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$1;->val$top:I

    if-nez v0, :cond_4

    iget v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$1;->val$bottom:I

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$1;->this$0:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    iget-object v1, v0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    iget-object v0, v0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->n:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$1;->this$0:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    iget-object v0, v0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$1;->this$0:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    iget-object v1, v0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->n:Landroid/view/ViewGroup;

    iget-object v0, v0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_4
    :goto_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v1, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$1;->val$top:I

    iget v3, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$1;->val$bottom:I

    invoke-virtual {v0, v2, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$1;->this$0:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    iget-object v3, v1, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    iget-object v1, v1, Lcom/powerfront/insidewebsdkandroid/InsideClient;->n:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$1;->this$0:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    iget-object v1, v1, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$1;->this$0:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    iget-object v2, v1, Lcom/powerfront/insidewebsdkandroid/InsideClient;->n:Landroid/view/ViewGroup;

    iget-object v1, v1, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$1;->this$0:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    const-string v1, "openChatPane"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->d(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$1;->this$0:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->u:Z

    iget-object v0, v0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->e:Lcom/powerfront/insidewebsdkandroid/models/InsideUser;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/powerfront/insidewebsdkandroid/models/InsideUser;->c:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    :cond_5
    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$1;->this$0:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    iget-object v1, v0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->e:Lcom/powerfront/insidewebsdkandroid/models/InsideUser;

    iget-object v1, v1, Lcom/powerfront/insidewebsdkandroid/models/InsideUser;->b:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v0, v0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->a:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "prepopulatePrechat(\""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$1;->this$0:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    iget-object v3, v3, Lcom/powerfront/insidewebsdkandroid/InsideClient;->e:Lcom/powerfront/insidewebsdkandroid/models/InsideUser;

    iget-object v3, v3, Lcom/powerfront/insidewebsdkandroid/models/InsideUser;->c:Ljava/lang/String;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    const-string v3, ""

    :goto_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\", \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$1;->this$0:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    iget-object p0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->e:Lcom/powerfront/insidewebsdkandroid/models/InsideUser;

    iget-object p0, p0, Lcom/powerfront/insidewebsdkandroid/models/InsideUser;->b:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\");"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_7
    return-void
.end method
