.class public abstract Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/BaseTrunkActivity;
.super Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/Hilt_BaseTrunkActivity;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000I\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0005*\u0001\u001d\u0008\'\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\r\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\u0003J-\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u0010\u001a\u00020\u000fH\u0017\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u0013\u0010\u0003J\u000f\u0010\u0014\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u0014\u0010\u0003J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J)\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\n2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0014\u00a2\u0006\u0004\u0008\u001b\u0010\u001cR\u0014\u0010 \u001a\u00020\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001f\u00a8\u0006!"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/BaseTrunkActivity;",
        "Lcom/vuitton/android/presentation/screen/base/BaseActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "J",
        "",
        "requestCode",
        "",
        "",
        "permissions",
        "",
        "grantResults",
        "onRequestPermissionsResult",
        "(I[Ljava/lang/String;[I)V",
        "onResume",
        "onPause",
        "",
        "onSupportNavigateUp",
        "()Z",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
        "com/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/BaseTrunkActivity$bluetoothReceiver$1",
        "p",
        "Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/BaseTrunkActivity$bluetoothReceiver$1;",
        "bluetoothReceiver",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final q:I = 0x8


# instance fields
.field private final p:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/BaseTrunkActivity$bluetoothReceiver$1;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/Hilt_BaseTrunkActivity;-><init>()V

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/BaseTrunkActivity$bluetoothReceiver$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/BaseTrunkActivity$bluetoothReceiver$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/BaseTrunkActivity;)V

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/BaseTrunkActivity;->p:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/BaseTrunkActivity$bluetoothReceiver$1;

    return-void
.end method

.method public static final synthetic H(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/BaseTrunkActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/BaseTrunkActivity;->K()V

    return-void
.end method

.method public static final I(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/BaseTrunkActivity;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/connectivity/views/ToastKt;->a(Lcom/vuitton/android/presentation/screen/base/BaseActivity;)V

    return-void
.end method


# virtual methods
.method public final J()V
    .locals 3

    invoke-static {p0}, Lcom/vuitton/android/presentation/utils/PermissionUtils;->c(Lcom/vuitton/android/presentation/screen/base/BaseActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/vuitton/android/presentation/utils/PermissionUtils;->a(Lcom/vuitton/android/presentation/screen/base/BaseActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/vuitton/android/presentation/utils/PermissionUtils;->a:[Ljava/lang/String;

    aget-object v2, v1, v0

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x5ce

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    :cond_1
    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/BaseTrunkActivity$checkGps$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/BaseTrunkActivity$checkGps$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/BaseTrunkActivity;)V

    invoke-static {p0, v0}, Lcom/vuitton/android/presentation/utils/PermissionUtils;->b(Lcom/vuitton/android/presentation/screen/base/BaseActivity;Lcom/vuitton/android/presentation/utils/PermissionUtils$PermissionListener;)V

    :cond_2
    return-void

    :cond_3
    invoke-static {p0}, Lcom/vuitton/android/presentation/utils/PermissionUtils;->d(Lcom/vuitton/android/presentation/screen/base/BaseActivity;)V

    return-void
.end method

.method public final K()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->M()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkSpeakerFragmentInterface;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkSpeakerFragmentInterface;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkSpeakerFragmentInterface;->t()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x9ed

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p1, p3, :cond_3

    const/16 p3, 0x9f3

    if-eq p1, p3, :cond_0

    goto :goto_1

    :cond_0
    if-ne p2, v1, :cond_4

    :goto_0
    const/4 p1, 0x2

    if-ge v0, p1, :cond_2

    sget-object p1, Lcom/vuitton/android/presentation/utils/PermissionUtils;->a:[Ljava/lang/String;

    aget-object p2, p1, v0

    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 p2, 0x5ce

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    :cond_2
    new-instance p1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/BaseTrunkActivity$checkGps$1;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/BaseTrunkActivity$checkGps$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/BaseTrunkActivity;)V

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/utils/PermissionUtils;->b(Lcom/vuitton/android/presentation/screen/base/BaseActivity;Lcom/vuitton/android/presentation/utils/PermissionUtils$PermissionListener;)V

    return-void

    :cond_3
    if-eq p2, v1, :cond_6

    if-eqz p2, :cond_5

    :cond_4
    :goto_1
    return-void

    :cond_5
    new-instance p1, Lrc;

    invoke-direct {p1, p0, v0}, Lrc;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/BaseTrunkActivity;I)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/BaseTrunkActivity;->K()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0023

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->onPause()V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/BaseTrunkActivity;->p:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/BaseTrunkActivity$bluetoothReceiver$1;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p2, 0x0

    const/16 v0, 0x5ce

    if-eq p1, v0, :cond_4

    const/16 v1, 0x5cf

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p3, p2}, Lkotlin/collections/ArraysKt;->g([II)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p0}, Lcom/vuitton/android/presentation/utils/PermissionUtils;->a(Lcom/vuitton/android/presentation/screen/base/BaseActivity;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_0
    const/4 p1, 0x2

    if-ge p2, p1, :cond_2

    sget-object p1, Lcom/vuitton/android/presentation/utils/PermissionUtils;->a:[Ljava/lang/String;

    aget-object p3, p1, p2

    invoke-static {p0, p3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    :cond_2
    new-instance p1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/BaseTrunkActivity$checkGps$1;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/BaseTrunkActivity$checkGps$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/BaseTrunkActivity;)V

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/utils/PermissionUtils;->b(Lcom/vuitton/android/presentation/screen/base/BaseActivity;Lcom/vuitton/android/presentation/utils/PermissionUtils$PermissionListener;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-static {p3, p2}, Lkotlin/collections/ArraysKt;->g([II)Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/BaseTrunkActivity$checkGps$1;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/BaseTrunkActivity$checkGps$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/BaseTrunkActivity;)V

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/utils/PermissionUtils;->b(Lcom/vuitton/android/presentation/screen/base/BaseActivity;Lcom/vuitton/android/presentation/utils/PermissionUtils$PermissionListener;)V

    return-void

    :cond_5
    new-instance p1, Lrc;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lrc;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/BaseTrunkActivity;I)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->onResume()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/BaseTrunkActivity;->p:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/BaseTrunkActivity$bluetoothReceiver$1;

    const/4 v2, 0x4

    invoke-static {p0, v1, v0, v2}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->J()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->V()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
