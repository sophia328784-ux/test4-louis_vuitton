.class public Lcom/networkbench/agent/impl/floatbtnmanager/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/AlertDialog;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/a/c;->b:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/floatbtnmanager/a/c;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/a/c;->a:Landroid/app/AlertDialog;

    return-object p1
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/floatbtnmanager/a/c;)Landroid/content/Context;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/a/c;->b:Landroid/content/Context;

    return-object p0
.end method

.method private a(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/a/c;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p1, "Tingyun SDK\u63d0\u793a"

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u4f7f\u7528\u70b9\u9009\u529f\u80fd\uff0c\u60a8\u9700\u8981\u5f00\u542f\u5f53\u524d\u5e94\u7528\u7684\u60ac\u6d6e\u7a97\u6743\u9650"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    if-nez p2, :cond_1

    const-string v0, "\u81ea\u884c\u8bbe\u7f6e"

    goto :goto_0

    :cond_1
    const-string v0, "\u53bb\u8bbe\u7f6e"

    :goto_0
    new-instance v1, Lcom/networkbench/agent/impl/floatbtnmanager/a/c$1;

    invoke-direct {v1, p0, p2}, Lcom/networkbench/agent/impl/floatbtnmanager/a/c$1;-><init>(Lcom/networkbench/agent/impl/floatbtnmanager/a/c;Landroid/content/Intent;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/a/c;->a:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static synthetic b(Lcom/networkbench/agent/impl/floatbtnmanager/a/c;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/a/c;->a:Landroid/app/AlertDialog;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Z
    .locals 2

    .line 60
    invoke-static {p1}, Lcom/networkbench/agent/impl/floatbtnmanager/a/b;->a(Landroid/app/Activity;)Lcom/networkbench/agent/impl/floatbtnmanager/a/i;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/floatbtnmanager/a/i;->b()Landroid/content/Intent;

    move-result-object v1

    .line 62
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/floatbtnmanager/a/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 63
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/networkbench/agent/impl/floatbtnmanager/a/c;->a(Landroid/app/Activity;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 64
    iput-object p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/a/c;->a:Landroid/app/AlertDialog;

    :goto_0
    const/4 p0, 0x0

    return p0
.end method
