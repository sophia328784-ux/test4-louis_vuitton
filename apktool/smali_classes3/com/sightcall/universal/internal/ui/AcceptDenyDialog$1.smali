.class Lcom/sightcall/universal/internal/ui/AcceptDenyDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/internal/ui/AcceptDenyDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/internal/ui/AcceptDenyDialog;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/ui/AcceptDenyDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/AcceptDenyDialog$1;->this$0:Lcom/sightcall/universal/internal/ui/AcceptDenyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/AcceptDenyDialog$1;->this$0:Lcom/sightcall/universal/internal/ui/AcceptDenyDialog;

    invoke-static {v0}, Lcom/sightcall/universal/internal/ui/AcceptDenyDialog;->q(Lcom/sightcall/universal/internal/ui/AcceptDenyDialog;)Lcom/sightcall/universal/internal/ui/AcceptDenyDialog$OnAcceptDenyCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/AcceptDenyDialog$1;->this$0:Lcom/sightcall/universal/internal/ui/AcceptDenyDialog;

    invoke-static {p0}, Lcom/sightcall/universal/internal/ui/AcceptDenyDialog;->q(Lcom/sightcall/universal/internal/ui/AcceptDenyDialog;)Lcom/sightcall/universal/internal/ui/AcceptDenyDialog$OnAcceptDenyCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/sightcall/universal/internal/ui/AcceptDenyDialog$OnAcceptDenyCallback;->onDeny()V

    :cond_0
    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackDialog(Landroid/content/DialogInterface;I)V

    return-void
.end method
