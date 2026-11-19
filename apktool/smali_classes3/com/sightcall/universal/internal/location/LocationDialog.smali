.class public Lcom/sightcall/universal/internal/location/LocationDialog;
.super Lcom/sightcall/universal/internal/ui/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/internal/location/LocationDialog$OnLocationDialogListener;,
        Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationDialog"


# instance fields
.field private listener:Lcom/sightcall/universal/internal/location/LocationDialog$OnLocationDialogListener;

.field private final timeout:Ljava/lang/Long;

.field private final timeoutHandler:Landroid/os/Handler;

.field private final timeoutRunner:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Long;)V
    .locals 2

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/BaseDialogFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/location/LocationDialog;->timeoutHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sightcall/universal/internal/location/LocationDialog$1;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/internal/location/LocationDialog$1;-><init>(Lcom/sightcall/universal/internal/location/LocationDialog;)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/location/LocationDialog;->timeoutRunner:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/sightcall/universal/internal/location/LocationDialog;->timeout:Ljava/lang/Long;

    return-void
.end method

.method private synthetic lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p0, p0, Lcom/sightcall/universal/internal/location/LocationDialog;->listener:Lcom/sightcall/universal/internal/location/LocationDialog$OnLocationDialogListener;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;->ACCEPTED:Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;

    invoke-interface {p0, v0}, Lcom/sightcall/universal/internal/location/LocationDialog$OnLocationDialogListener;->onRequestLocationConfirmation(Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;)V

    :cond_0
    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackDialog(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p0, p0, Lcom/sightcall/universal/internal/location/LocationDialog;->listener:Lcom/sightcall/universal/internal/location/LocationDialog$OnLocationDialogListener;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;->DECLINED:Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;

    invoke-interface {p0, v0}, Lcom/sightcall/universal/internal/location/LocationDialog$OnLocationDialogListener;->onRequestLocationConfirmation(Lcom/sightcall/universal/internal/location/LocationDialog$LocationDialogResult;)V

    :cond_0
    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackDialog(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static newInstance(Ljava/lang/Long;)Lcom/sightcall/universal/internal/location/LocationDialog;
    .locals 1

    new-instance v0, Lcom/sightcall/universal/internal/location/LocationDialog;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/internal/location/LocationDialog;-><init>(Ljava/lang/Long;)V

    return-object v0
.end method

.method public static synthetic q(Lcom/sightcall/universal/internal/location/LocationDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sightcall/universal/internal/location/LocationDialog;->lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic r(Lcom/sightcall/universal/internal/location/LocationDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sightcall/universal/internal/location/LocationDialog;->lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static bridge synthetic s(Lcom/sightcall/universal/internal/location/LocationDialog;)Lcom/sightcall/universal/internal/location/LocationDialog$OnLocationDialogListener;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/location/LocationDialog;->listener:Lcom/sightcall/universal/internal/location/LocationDialog$OnLocationDialogListener;

    return-object p0
.end method

.method public static show(Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/location/LocationDialog;->showDialog(Landroidx/fragment/app/FragmentManager;Ljava/lang/Long;)V

    return-void
.end method

.method public static show(Landroidx/fragment/app/FragmentManager;Ljava/lang/Long;)V
    .locals 0

    .line 5
    invoke-static {p0, p1}, Lcom/sightcall/universal/internal/location/LocationDialog;->showDialog(Landroidx/fragment/app/FragmentManager;Ljava/lang/Long;)V

    return-void
.end method

.method private static showDialog(Landroidx/fragment/app/FragmentManager;Ljava/lang/Long;)V
    .locals 2

    sget-object v0, Lcom/sightcall/universal/internal/location/LocationDialog;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->G(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-static {p1}, Lcom/sightcall/universal/internal/location/LocationDialog;->newInstance(Ljava/lang/Long;)Lcom/sightcall/universal/internal/location/LocationDialog;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentTransaction;->b(Landroidx/fragment/app/DialogFragment;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->f()I

    :cond_0
    return-void
.end method

.method private startTimeoutHandler()V
    .locals 4

    iget-object v0, p0, Lcom/sightcall/universal/internal/location/LocationDialog;->timeout:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sightcall/universal/internal/location/LocationDialog;->timeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sightcall/universal/internal/location/LocationDialog;->timeoutRunner:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/sightcall/universal/internal/location/LocationDialog;->timeout:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private stopTimeoutHandler()V
    .locals 1

    iget-object p0, p0, Lcom/sightcall/universal/internal/location/LocationDialog;->timeoutHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onAttachToContext(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/sightcall/universal/internal/location/LocationDialog;->startTimeoutHandler()V

    instance-of v0, p1, Lcom/sightcall/universal/internal/location/LocationDialog$OnLocationDialogListener;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sightcall/universal/internal/location/LocationDialog$OnLocationDialogListener;

    iput-object p1, p0, Lcom/sightcall/universal/internal/location/LocationDialog;->listener:Lcom/sightcall/universal/internal/location/LocationDialog$OnLocationDialogListener;

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/sightcall/universal/R$string;->universal_location_request:I

    iget-object v1, p1, Landroidx/appcompat/app/AlertDialog$Builder;->a:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v2, v1, Landroidx/appcompat/app/AlertController$AlertParams;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Landroidx/appcompat/app/AlertController$AlertParams;->g:Ljava/lang/CharSequence;

    sget v0, Lcom/sightcall/universal/R$string;->universal_location_request_yes:I

    new-instance v1, Lga0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lga0;-><init>(Lcom/sightcall/universal/internal/location/LocationDialog;I)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/sightcall/universal/R$string;->universal_location_request_no:I

    new-instance v1, Lga0;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Lga0;-><init>(Lcom/sightcall/universal/internal/location/LocationDialog;I)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->a()Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, v2}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDetach()V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/location/LocationDialog;->stopTimeoutHandler()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/internal/location/LocationDialog;->listener:Lcom/sightcall/universal/internal/location/LocationDialog$OnLocationDialogListener;

    return-void
.end method
