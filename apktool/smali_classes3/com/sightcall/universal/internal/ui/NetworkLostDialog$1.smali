.class Lcom/sightcall/universal/internal/ui/NetworkLostDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/ui/NetworkLostDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/internal/ui/NetworkLostDialog;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/ui/NetworkLostDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/NetworkLostDialog$1;->this$0:Lcom/sightcall/universal/internal/ui/NetworkLostDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/NetworkLostDialog$1;->this$0:Lcom/sightcall/universal/internal/ui/NetworkLostDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sightcall/universal/internal/ui/NetworkLostDialog;->q(Lcom/sightcall/universal/internal/ui/NetworkLostDialog;Landroid/app/Dialog;)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/NetworkLostDialog$1;->this$0:Lcom/sightcall/universal/internal/ui/NetworkLostDialog;

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/NetworkLostDialog;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/NetworkLostDialog;->progressRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
