.class public Lcom/networkbench/agent/impl/floatbtnmanager/a/e;
.super Lcom/networkbench/agent/impl/floatbtnmanager/a/i;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/floatbtnmanager/a/i;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/floatbtnmanager/a/i;->a(I)Z

    move-result p0

    return p0
.end method

.method public b()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.meizu.safe.security.SHOW_APPSEC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.meizu.safe"

    const-string v2, "com.meizu.safe.security.AppSecActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/a/i;->a:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "packageName"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method
