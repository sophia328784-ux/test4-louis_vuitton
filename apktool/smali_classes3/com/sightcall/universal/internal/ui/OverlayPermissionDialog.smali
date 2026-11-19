.class public Lcom/sightcall/universal/internal/ui/OverlayPermissionDialog;
.super Lcom/sightcall/universal/internal/ui/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/internal/ui/OverlayPermissionDialog$OnRequestOverlayPermissionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OverlayPermissionDialog"


# instance fields
.field private listener:Lcom/sightcall/universal/internal/ui/OverlayPermissionDialog$OnRequestOverlayPermissionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/BaseDialogFragment;-><init>()V

    return-void
.end method

.method public static bridge synthetic q(Lcom/sightcall/universal/internal/ui/OverlayPermissionDialog;)Lcom/sightcall/universal/internal/ui/OverlayPermissionDialog$OnRequestOverlayPermissionListener;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/OverlayPermissionDialog;->listener:Lcom/sightcall/universal/internal/ui/OverlayPermissionDialog$OnRequestOverlayPermissionListener;

    return-object p0
.end method

.method public static show(Landroidx/fragment/app/FragmentManager;Lcom/sightcall/universal/internal/ui/OverlayPermissionDialog$OnRequestOverlayPermissionListener;)V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/internal/ui/OverlayPermissionDialog;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->G(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/sightcall/universal/internal/ui/OverlayPermissionDialog;

    invoke-direct {v1}, Lcom/sightcall/universal/internal/ui/OverlayPermissionDialog;-><init>()V

    iput-object p1, v1, Lcom/sightcall/universal/internal/ui/OverlayPermissionDialog;->listener:Lcom/sightcall/universal/internal/ui/OverlayPermissionDialog$OnRequestOverlayPermissionListener;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->i(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->f()I

    :cond_0
    return-void
.end method


# virtual methods
.method public onAttachToContext(Landroid/content/Context;)V
    .locals 1

    instance-of v0, p1, Lcom/sightcall/universal/internal/ui/OverlayPermissionDialog$OnRequestOverlayPermissionListener;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sightcall/universal/internal/ui/OverlayPermissionDialog$OnRequestOverlayPermissionListener;

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/OverlayPermissionDialog;->listener:Lcom/sightcall/universal/internal/ui/OverlayPermissionDialog$OnRequestOverlayPermissionListener;

    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/OverlayPermissionDialog;->listener:Lcom/sightcall/universal/internal/ui/OverlayPermissionDialog$OnRequestOverlayPermissionListener;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sightcall/universal/internal/ui/OverlayPermissionDialog$OnRequestOverlayPermissionListener;->onRequestOverlayPermissionConfirmation(Z)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/sightcall/universal/R$string;->universal_dialog_screen_sharing:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->f(I)V

    sget v0, Lcom/sightcall/universal/R$string;->universal_dialog_overlay_permission:I

    iget-object v1, p1, Landroidx/appcompat/app/AlertDialog$Builder;->a:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v2, v1, Landroidx/appcompat/app/AlertController$AlertParams;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Landroidx/appcompat/app/AlertController$AlertParams;->g:Ljava/lang/CharSequence;

    sget v0, Lcom/sightcall/universal/R$string;->universal_dialog_grant:I

    new-instance v1, Lcom/sightcall/universal/internal/ui/OverlayPermissionDialog$2;

    invoke-direct {v1, p0}, Lcom/sightcall/universal/internal/ui/OverlayPermissionDialog$2;-><init>(Lcom/sightcall/universal/internal/ui/OverlayPermissionDialog;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/sightcall/universal/R$string;->universal_dialog_deny:I

    new-instance v1, Lcom/sightcall/universal/internal/ui/OverlayPermissionDialog$1;

    invoke-direct {v1, p0}, Lcom/sightcall/universal/internal/ui/OverlayPermissionDialog$1;-><init>(Lcom/sightcall/universal/internal/ui/OverlayPermissionDialog;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p0
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/OverlayPermissionDialog;->listener:Lcom/sightcall/universal/internal/ui/OverlayPermissionDialog$OnRequestOverlayPermissionListener;

    return-void
.end method
