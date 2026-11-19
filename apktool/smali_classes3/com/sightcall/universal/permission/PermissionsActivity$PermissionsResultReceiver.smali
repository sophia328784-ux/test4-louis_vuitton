.class public abstract Lcom/sightcall/universal/permission/PermissionsActivity$PermissionsResultReceiver;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/permission/PermissionsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PermissionsResultReceiver"
.end annotation


# instance fields
.field private grantResults:[I

.field private neverAskAgain:Z

.field private permissions:[Ljava/lang/String;

.field private shouldShowRationales:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/sightcall/universal/Universal;->uiHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final getGrantResults()[I
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/permission/PermissionsActivity$PermissionsResultReceiver;->grantResults:[I

    return-object p0
.end method

.method public final getPermissions()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/permission/PermissionsActivity$PermissionsResultReceiver;->permissions:[Ljava/lang/String;

    return-object p0
.end method

.method public final getShouldShowRationales()[Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/permission/PermissionsActivity$PermissionsResultReceiver;->shouldShowRationales:[Z

    return-object p0
.end method

.method public final isNeverAskAgain()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/permission/PermissionsActivity$PermissionsResultReceiver;->neverAskAgain:Z

    return p0
.end method

.method public abstract onPermissionsDenied(Z)V
.end method

.method public abstract onPermissionsGranted()V
.end method

.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    const-string v0, "permissions"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/permission/PermissionsActivity$PermissionsResultReceiver;->permissions:[Ljava/lang/String;

    const-string v0, "results"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/permission/PermissionsActivity$PermissionsResultReceiver;->grantResults:[I

    const-string v0, "results_should_show_rationale"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/permission/PermissionsActivity$PermissionsResultReceiver;->shouldShowRationales:[Z

    const-string v0, "never_ask_again"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/sightcall/universal/permission/PermissionsActivity$PermissionsResultReceiver;->neverAskAgain:Z

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sightcall/universal/permission/PermissionsActivity$PermissionsResultReceiver;->onPermissionsGranted()V

    return-void

    :cond_1
    invoke-virtual {p0, p2}, Lcom/sightcall/universal/permission/PermissionsActivity$PermissionsResultReceiver;->onPermissionsDenied(Z)V

    return-void
.end method
