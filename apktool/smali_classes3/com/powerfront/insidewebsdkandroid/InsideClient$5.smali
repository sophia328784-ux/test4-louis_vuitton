.class Lcom/powerfront/insidewebsdkandroid/InsideClient$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/powerfront/insidewebsdkandroid/InsideClient;


# direct methods
.method public constructor <init>(Lcom/powerfront/insidewebsdkandroid/InsideClient;)V
    .locals 0

    iput-object p1, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$5;->this$0:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$5;->this$0:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    invoke-virtual {v0}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->h()V

    sget-object v0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->y:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient$5;->this$0:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    iget-boolean v0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->v:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/powerfront/insidewebsdkandroid/InsideClient;->x:Lcom/powerfront/insidewebsdkandroid/utils/ProgressDialogView;

    invoke-virtual {p0}, Lcom/powerfront/insidewebsdkandroid/utils/ProgressDialogView;->show()V

    :cond_0
    return-void
.end method
