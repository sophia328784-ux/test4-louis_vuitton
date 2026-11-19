.class public abstract Lcom/vuitton/android/presentation/screen/base/BaseActivity;
.super Lcom/vuitton/android/presentation/screen/base/Hilt_BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screenshaker/ShakeListener;


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\'\u0018\u00002\u00020\u00012\u00020\u0002B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004B\u0013\u0008\u0016\u0012\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0003\u0010\u0007J\u0019\u0010\u000b\u001a\u00020\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\r\u001a\u00020\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\nH\u0014\u00a2\u0006\u0004\u0008\u000e\u0010\u0004J\u000f\u0010\u000f\u001a\u00020\nH\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0004J\u000f\u0010\u0010\u001a\u00020\nH\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0004J\u0019\u0010\u0014\u001a\u00020\n2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\nH\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0004J\u0017\u0010\u0019\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u0017H\u0014\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\"\u0010\"\u001a\u00020\u001b8\u0000@\u0000X\u0081.\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\"\u0010*\u001a\u00020#8\u0000@\u0000X\u0081.\u00a2\u0006\u0012\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)\u00a8\u0006+"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/base/BaseActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lcom/vuitton/android/presentation/screenshaker/ShakeListener;",
        "<init>",
        "()V",
        "",
        "contentLayoutId",
        "(I)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onPostCreate",
        "onDestroy",
        "onPause",
        "onResume",
        "E",
        "Landroid/content/res/Configuration;",
        "overrideConfiguration",
        "applyOverrideConfiguration",
        "(Landroid/content/res/Configuration;)V",
        "onStart",
        "Landroid/content/Intent;",
        "intent",
        "onNewIntent",
        "(Landroid/content/Intent;)V",
        "Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;",
        "l",
        "Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;",
        "D",
        "()Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;",
        "G",
        "(Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;)V",
        "shakeSensorManager",
        "Lcom/vuitton/android/presentation/push/NotificationsManager;",
        "m",
        "Lcom/vuitton/android/presentation/push/NotificationsManager;",
        "B",
        "()Lcom/vuitton/android/presentation/push/NotificationsManager;",
        "F",
        "(Lcom/vuitton/android/presentation/push/NotificationsManager;)V",
        "notificationsManager",
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
.field public static final n:I = 0x8


# instance fields
.field public l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public m:Lcom/vuitton/android/presentation/push/NotificationsManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/base/Hilt_BaseActivity;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/screen/base/Hilt_BaseActivity;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final B()Lcom/vuitton/android/presentation/push/NotificationsManager;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "notificationsManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final D()Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "shakeSensorManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public E()V
    .locals 2

    sget-object v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerDebugActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerDebugActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerDebugActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final F(Lcom/vuitton/android/presentation/push/NotificationsManager;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    return-void
.end method

.method public final G(Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    return-void
.end method

.method public applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iput v0, p1, Landroid/content/res/Configuration;->uiMode:I

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/vuitton/android/presentation/screen/base/Hilt_BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->D()Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/vuitton/android/presentation/screen/base/Hilt_BaseActivity;->onDestroy()V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->D()Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->B()Lcom/vuitton/android/presentation/push/NotificationsManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/vuitton/android/presentation/push/NotificationsManager;->g(Lcom/vuitton/android/presentation/screen/base/BaseActivity;Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->D()Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/vuitton/android/presentation/extensions/ActivityViewTreeExtKt;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->D()Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->B()Lcom/vuitton/android/presentation/push/NotificationsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/vuitton/android/presentation/push/NotificationsManager;->f(Lcom/vuitton/android/presentation/screen/base/BaseActivity;)V

    return-void
.end method
