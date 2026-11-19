.class public Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog;
.super Lcom/sightcall/universal/internal/ui/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog$OnRequestCameraSourceListener;
    }
.end annotation


# static fields
.field public static final ARG_SOURCE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ChangeCameraSourceDialog"


# instance fields
.field private listener:Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog$OnRequestCameraSourceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ChangeCameraSourceDialog"

    const-string v1, ".source"

    invoke-static {v0, v1}, Ld21;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog;->ARG_SOURCE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/BaseDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lnet/rtccloud/sdk/VideoModule$CameraSource;)Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog;
    .locals 3

    new-instance v0, Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog;

    invoke-direct {v0}, Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog;->ARG_SOURCE:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static bridge synthetic q(Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog;)Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog$OnRequestCameraSourceListener;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog;->listener:Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog$OnRequestCameraSourceListener;

    return-object p0
.end method

.method public static show(Landroidx/fragment/app/FragmentManager;Lnet/rtccloud/sdk/VideoModule$CameraSource;)V
    .locals 2

    sget-object v0, Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->G(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-static {p1}, Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog;->newInstance(Lnet/rtccloud/sdk/VideoModule$CameraSource;)Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentTransaction;->b(Landroidx/fragment/app/DialogFragment;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->f()I

    :cond_0
    return-void
.end method


# virtual methods
.method public onAttachToContext(Landroid/content/Context;)V
    .locals 1

    instance-of v0, p1, Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog$OnRequestCameraSourceListener;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog$OnRequestCameraSourceListener;

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog;->listener:Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog$OnRequestCameraSourceListener;

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog;->ARG_SOURCE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lnet/rtccloud/sdk/VideoModule$CameraSource;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lnet/rtccloud/sdk/VideoModule$CameraSource;->isFront()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/sightcall/universal/R$string;->universal_dialog_camera_front:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/sightcall/universal/R$string;->universal_dialog_camera_rear:I

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->f(I)V

    sget v1, Lcom/sightcall/universal/R$string;->universal_dialog_accept:I

    new-instance v2, Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog$2;

    invoke-direct {v2, p0, p1}, Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog$2;-><init>(Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog;Lnet/rtccloud/sdk/VideoModule$CameraSource;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/sightcall/universal/R$string;->universal_dialog_deny:I

    new-instance v2, Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog$1;

    invoke-direct {v2, p0, p1}, Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog$1;-><init>(Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog;Lnet/rtccloud/sdk/VideoModule$CameraSource;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog;->listener:Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog$OnRequestCameraSourceListener;

    return-void
.end method
