.class Lcom/sightcall/universal/internal/ui/OverlayPermissionDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/internal/ui/OverlayPermissionDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/internal/ui/OverlayPermissionDialog;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/ui/OverlayPermissionDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/OverlayPermissionDialog$1;->this$0:Lcom/sightcall/universal/internal/ui/OverlayPermissionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/OverlayPermissionDialog$1;->this$0:Lcom/sightcall/universal/internal/ui/OverlayPermissionDialog;

    invoke-static {v0}, Lcom/sightcall/universal/internal/ui/OverlayPermissionDialog;->q(Lcom/sightcall/universal/internal/ui/OverlayPermissionDialog;)Lcom/sightcall/universal/internal/ui/OverlayPermissionDialog$OnRequestOverlayPermissionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/OverlayPermissionDialog$1;->this$0:Lcom/sightcall/universal/internal/ui/OverlayPermissionDialog;

    invoke-static {p0}, Lcom/sightcall/universal/internal/ui/OverlayPermissionDialog;->q(Lcom/sightcall/universal/internal/ui/OverlayPermissionDialog;)Lcom/sightcall/universal/internal/ui/OverlayPermissionDialog$OnRequestOverlayPermissionListener;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sightcall/universal/internal/ui/OverlayPermissionDialog$OnRequestOverlayPermissionListener;->onRequestOverlayPermissionConfirmation(Z)V

    :cond_0
    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackDialog(Landroid/content/DialogInterface;I)V

    return-void
.end method
