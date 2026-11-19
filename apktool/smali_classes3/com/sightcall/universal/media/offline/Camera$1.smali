.class Lcom/sightcall/universal/media/offline/Camera$1;
.super Lcom/sightcall/universal/permission/PermissionsActivity$PermissionsResultReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/media/offline/Camera;->askPermission(Landroid/content/Context;Lcom/sightcall/universal/media/offline/Camera$PermissionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/sightcall/universal/media/offline/Camera$PermissionCallback;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/sightcall/universal/media/offline/Camera$PermissionCallback;)V
    .locals 0

    iput-object p2, p0, Lcom/sightcall/universal/media/offline/Camera$1;->val$callback:Lcom/sightcall/universal/media/offline/Camera$PermissionCallback;

    invoke-direct {p0, p1}, Lcom/sightcall/universal/permission/PermissionsActivity$PermissionsResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onPermissionsDenied(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/offline/Camera$1;->val$callback:Lcom/sightcall/universal/media/offline/Camera$PermissionCallback;

    invoke-interface {p0}, Lcom/sightcall/universal/media/offline/Camera$PermissionCallback;->onDenied()V

    return-void
.end method

.method public onPermissionsGranted()V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/offline/Camera$1;->val$callback:Lcom/sightcall/universal/media/offline/Camera$PermissionCallback;

    invoke-interface {p0}, Lcom/sightcall/universal/media/offline/Camera$PermissionCallback;->onGranted()V

    return-void
.end method
