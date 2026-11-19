.class Lcom/networkbench/agent/impl/floatbtnmanager/a/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/floatbtnmanager/a/c;->a(Landroid/app/Activity;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/networkbench/agent/impl/floatbtnmanager/a/c;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/floatbtnmanager/a/c;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/a/c$1;->b:Lcom/networkbench/agent/impl/floatbtnmanager/a/c;

    iput-object p2, p0, Lcom/networkbench/agent/impl/floatbtnmanager/a/c$1;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/a/c$1;->a:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/a/c$1;->b:Lcom/networkbench/agent/impl/floatbtnmanager/a/c;

    invoke-static {v0}, Lcom/networkbench/agent/impl/floatbtnmanager/a/c;->a(Lcom/networkbench/agent/impl/floatbtnmanager/a/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/a/c$1;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/a/c$1;->b:Lcom/networkbench/agent/impl/floatbtnmanager/a/c;

    invoke-static {v0}, Lcom/networkbench/agent/impl/floatbtnmanager/a/c;->b(Lcom/networkbench/agent/impl/floatbtnmanager/a/c;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/a/c$1;->b:Lcom/networkbench/agent/impl/floatbtnmanager/a/c;

    invoke-static {v0}, Lcom/networkbench/agent/impl/floatbtnmanager/a/c;->b(Lcom/networkbench/agent/impl/floatbtnmanager/a/c;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/a/c$1;->b:Lcom/networkbench/agent/impl/floatbtnmanager/a/c;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/floatbtnmanager/a/c;->a(Lcom/networkbench/agent/impl/floatbtnmanager/a/c;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackDialog(Landroid/content/DialogInterface;I)V

    return-void
.end method
