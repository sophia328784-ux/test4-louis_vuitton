.class public Lcom/sightcall/universal/internal/ui/AcceptDenyDialog;
.super Lcom/sightcall/universal/internal/ui/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/internal/ui/AcceptDenyDialog$OnAcceptDenyCallback;
    }
.end annotation


# static fields
.field public static final ACTIVATE_CAMERA:I = 0x1

.field public static final ACTIVATE_MICROPHONE:I = 0x2

.field public static final ARG_MESSAGE:Ljava/lang/String;

.field public static final SWITCH_GUEST:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AcceptDenyDialog"


# instance fields
.field private callback:Lcom/sightcall/universal/internal/ui/AcceptDenyDialog$OnAcceptDenyCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "AcceptDenyDialog"

    const-string v1, ".message"

    invoke-static {v0, v1}, Ld21;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/internal/ui/AcceptDenyDialog;->ARG_MESSAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/BaseDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(ILcom/sightcall/universal/internal/ui/AcceptDenyDialog$OnAcceptDenyCallback;)Lcom/sightcall/universal/internal/ui/AcceptDenyDialog;
    .locals 2

    new-instance v0, Lcom/sightcall/universal/internal/ui/AcceptDenyDialog;

    invoke-direct {v0}, Lcom/sightcall/universal/internal/ui/AcceptDenyDialog;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sightcall/universal/internal/ui/AcceptDenyDialog;->attachCallback(Lcom/sightcall/universal/internal/ui/AcceptDenyDialog$OnAcceptDenyCallback;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/sightcall/universal/internal/ui/AcceptDenyDialog;->ARG_MESSAGE:Ljava/lang/String;

    invoke-virtual {p1, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static bridge synthetic q(Lcom/sightcall/universal/internal/ui/AcceptDenyDialog;)Lcom/sightcall/universal/internal/ui/AcceptDenyDialog$OnAcceptDenyCallback;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/AcceptDenyDialog;->callback:Lcom/sightcall/universal/internal/ui/AcceptDenyDialog$OnAcceptDenyCallback;

    return-object p0
.end method

.method public static show(Landroidx/fragment/app/FragmentManager;ILcom/sightcall/universal/internal/ui/AcceptDenyDialog$OnAcceptDenyCallback;)V
    .locals 2

    sget-object v0, Lcom/sightcall/universal/internal/ui/AcceptDenyDialog;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->G(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-static {p1, p2}, Lcom/sightcall/universal/internal/ui/AcceptDenyDialog;->newInstance(ILcom/sightcall/universal/internal/ui/AcceptDenyDialog$OnAcceptDenyCallback;)Lcom/sightcall/universal/internal/ui/AcceptDenyDialog;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentTransaction;->b(Landroidx/fragment/app/DialogFragment;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->f()I

    :cond_0
    return-void
.end method


# virtual methods
.method public attachCallback(Lcom/sightcall/universal/internal/ui/AcceptDenyDialog$OnAcceptDenyCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/AcceptDenyDialog;->callback:Lcom/sightcall/universal/internal/ui/AcceptDenyDialog$OnAcceptDenyCallback;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Lcom/sightcall/universal/internal/ui/AcceptDenyDialog;->ARG_MESSAGE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    sget p1, Lcom/sightcall/universal/R$string;->universal_dialog_activate_camera:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/sightcall/universal/R$string;->universal_dialog_switch_role:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/sightcall/universal/R$string;->universal_dialog_activate_microphone:I

    goto :goto_0

    :cond_2
    sget p1, Lcom/sightcall/universal/R$string;->universal_dialog_activate_camera:I

    :goto_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->f(I)V

    sget p1, Lcom/sightcall/universal/R$string;->universal_dialog_accept:I

    new-instance v1, Lcom/sightcall/universal/internal/ui/AcceptDenyDialog$2;

    invoke-direct {v1, p0}, Lcom/sightcall/universal/internal/ui/AcceptDenyDialog$2;-><init>(Lcom/sightcall/universal/internal/ui/AcceptDenyDialog;)V

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/sightcall/universal/R$string;->universal_dialog_deny:I

    new-instance v1, Lcom/sightcall/universal/internal/ui/AcceptDenyDialog$1;

    invoke-direct {v1, p0}, Lcom/sightcall/universal/internal/ui/AcceptDenyDialog$1;-><init>(Lcom/sightcall/universal/internal/ui/AcceptDenyDialog;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz p1, :cond_3

    const-string v1, "hf_use_description|Accept"

    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    if-eqz v0, :cond_4

    const-string p1, "hf_use_description|Deny"

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    return-object p0
.end method
