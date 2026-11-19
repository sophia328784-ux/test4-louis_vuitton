.class public Lcom/networkbench/agent/impl/floatbtnmanager/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field public static a:Z = false

.field public static b:Ljava/lang/String; = ""

.field public static c:Ljava/lang/String; = ""

.field private static final d:Ljava/lang/String; = "ActivityTrackingDelegate"

.field private static final e:Ljava/lang/String; = "tingyun."

.field private static f:Z = false

.field private static g:Z = false

.field private static final h:I = 0x1e240

.field private static i:Lcom/networkbench/agent/impl/floatbtnmanager/c;


# instance fields
.field private j:Lcom/networkbench/agent/impl/floatbtnmanager/k;

.field private k:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/data/type/l;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/c;->m:Z

    invoke-direct {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/c;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/c;->m:Z

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/c;->l:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/networkbench/agent/impl/floatbtnmanager/c;
    .locals 1

    .line 35
    sget-object v0, Lcom/networkbench/agent/impl/floatbtnmanager/c;->i:Lcom/networkbench/agent/impl/floatbtnmanager/c;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/networkbench/agent/impl/floatbtnmanager/c;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/floatbtnmanager/c;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/floatbtnmanager/c;->i:Lcom/networkbench/agent/impl/floatbtnmanager/c;

    .line 37
    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/floatbtnmanager/c;->i:Lcom/networkbench/agent/impl/floatbtnmanager/c;

    return-object v0
.end method

.method private a(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/floatbtnmanager/c;->c(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "intent data value:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityTrackingDelegate"

    invoke-static {v0, p1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 0

    .line 48
    return-void
.end method

.method private a(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;)V
    .locals 1

    .line 40
    :try_start_0
    const-class p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string v0, "j"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x1

    .line 41
    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 42
    invoke-static {p0, p1, p2}, Lcom/networkbench/agent/impl/util/ad;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 43
    const-string p1, "ActivityTrackingDelegate"

    const-string p2, "setValueForWebChromeClient failed"

    invoke-static {p1, p2, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)V
    .locals 1

    .line 44
    :try_start_0
    const-class p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string v0, "k"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x1

    .line 45
    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 46
    invoke-static {p0, p1, p2}, Lcom/networkbench/agent/impl/util/ad;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 47
    const-string p1, "ActivityTrackingDelegate"

    const-string p2, "setValueForWebViewClient failed"

    invoke-static {p1, p2, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/floatbtnmanager/c;Lcom/alipay/mobile/nebulacore/core/H5PageImpl;Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/floatbtnmanager/c;->a(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;)V

    return-void
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/floatbtnmanager/c;Lcom/alipay/mobile/nebulacore/core/H5PageImpl;Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/floatbtnmanager/c;->a(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)V

    return-void
.end method

.method public static b()Lcom/networkbench/agent/impl/floatbtnmanager/c;
    .locals 1

    .line 34
    sget-object v0, Lcom/networkbench/agent/impl/floatbtnmanager/c;->i:Lcom/networkbench/agent/impl/floatbtnmanager/c;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/networkbench/agent/impl/floatbtnmanager/c;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/floatbtnmanager/c;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/floatbtnmanager/c;->i:Lcom/networkbench/agent/impl/floatbtnmanager/c;

    :cond_0
    const/4 v0, 0x1

    .line 36
    sput-boolean v0, Lcom/networkbench/agent/impl/floatbtnmanager/c;->a:Z

    .line 37
    sget-object v0, Lcom/networkbench/agent/impl/floatbtnmanager/c;->i:Lcom/networkbench/agent/impl/floatbtnmanager/c;

    return-object v0
.end method

.method private b(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/floatbtnmanager/c;->c(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "intent data value:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityTrackingDelegate"

    invoke-static {v0, p1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private c(Landroid/app/Activity;)Landroid/net/Uri;
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    const-string v0, "ActivityTrackingDelegate"

    const-string v1, "error get intent data:"

    invoke-static {v0, v1, p1}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method private d(Landroid/app/Activity;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/floatbtnmanager/c;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tingyun."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/networkbench/agent/impl/NBSAppAgent;->schemeIgnore:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/networkbench/agent/impl/NBSAppAgent;->schemeIgnore:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private e(Landroid/app/Activity;)V
    .locals 1

    sget-boolean v0, Lcom/networkbench/agent/impl/floatbtnmanager/c;->g:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/floatbtnmanager/c;->d(Landroid/app/Activity;)Z

    move-result v0

    sput-boolean v0, Lcom/networkbench/agent/impl/floatbtnmanager/c;->f:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/floatbtnmanager/c;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/floatbtnmanager/c;->c:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/floatbtnmanager/c;->b(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/floatbtnmanager/c;->b:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/floatbtnmanager/c;->g(Landroid/app/Activity;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->a()Lcom/networkbench/agent/impl/util/c/c;

    move-result-object p1

    new-instance v0, Lcom/networkbench/agent/impl/floatbtnmanager/c$2;

    invoke-direct {v0, p0}, Lcom/networkbench/agent/impl/floatbtnmanager/c$2;-><init>(Lcom/networkbench/agent/impl/floatbtnmanager/c;)V

    invoke-virtual {p1, v0}, Lcom/networkbench/agent/impl/util/c/c;->a(Ljava/lang/Runnable;)V

    :cond_0
    new-instance p1, Lcom/networkbench/agent/impl/floatbtnmanager/k;

    invoke-direct {p1}, Lcom/networkbench/agent/impl/floatbtnmanager/k;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/c;->j:Lcom/networkbench/agent/impl/floatbtnmanager/k;

    const/4 p0, 0x1

    sput-boolean p0, Lcom/networkbench/agent/impl/floatbtnmanager/c;->g:Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "runOnlyOnce isStartFromNBSBrowser:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean p1, Lcom/networkbench/agent/impl/floatbtnmanager/c;->f:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTrackingDelegate"

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private f(Landroid/app/Activity;)Z
    .locals 0

    const-string p0, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {p1, p0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private g(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/floatbtnmanager/c;->f(Landroid/app/Activity;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "android.permission.SYSTEM_ALERT_WINDOW"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const v0, 0x1e240

    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_0
    new-instance p0, Lcom/networkbench/agent/impl/floatbtnmanager/a/c;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/floatbtnmanager/a/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/floatbtnmanager/a/c;->a(Landroid/app/Activity;)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "permission result:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTrackingDelegate"

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private g()Z
    .locals 1

    .line 53
    :try_start_0
    const-string p0, "com.alipay.mobile.nebulacore.ui.H5Activity"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    .line 54
    :catchall_0
    const-string p0, "ActivityTrackingDelegate"

    const-string v0, "not find H5Activity class, so not mpaas project"

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a(Lcom/networkbench/agent/impl/data/type/l;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/c;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/c;->l:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b(Lcom/networkbench/agent/impl/data/type/l;)V
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/c;->l:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Z
    .locals 0

    .line 22
    const/4 p0, 0x0

    return p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    .line 51
    const-string p0, ""

    return-object p0
.end method

.method public e()Lcom/networkbench/agent/impl/floatbtnmanager/k;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/c;->j:Lcom/networkbench/agent/impl/floatbtnmanager/k;

    return-object p0
.end method

.method public f()Ljava/lang/ref/WeakReference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/c;->k:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    const-string p2, "ActivityTrackingDelegate"

    const-string v0, "onActivityCreated : "

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/networkbench/agent/impl/harvest/Harvest;->addActionAndInteraction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/floatbtnmanager/c;->e(Landroid/app/Activity;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/c;->l:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/data/type/l;

    invoke-interface {v0, p1}, Lcom/networkbench/agent/impl/data/type/l;->a(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    return-void

    :goto_1
    const-string p1, "error onActivityCreated"

    invoke-static {p2, p1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onDestroy"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->addActionAndInteraction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "ActivityTrackingDelegate"

    const-string v0, "onActivityDestroyed error"

    invoke-static {p1, v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "ActivityTrackingDelegate"

    :try_start_0
    const-string v1, "onActivityPaused"

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "onPause"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v2}, Lcom/networkbench/agent/impl/harvest/Harvest;->addActionAndInteraction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p1, Lcom/networkbench/agent/impl/floatbtnmanager/c;->f:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/c;->j:Lcom/networkbench/agent/impl/floatbtnmanager/k;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/k;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResumed e:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 5

    const-string v0, "ActivityTrackingDelegate"

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->ad()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "onActivityResumed"

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onResume"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v4}, Lcom/networkbench/agent/impl/harvest/Harvest;->addActionAndInteraction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/c;->k:Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/floatbtnmanager/c;->e(Landroid/app/Activity;)V

    sget-boolean v1, Lcom/networkbench/agent/impl/floatbtnmanager/c;->f:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/c;->j:Lcom/networkbench/agent/impl/floatbtnmanager/k;

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/networkbench/agent/impl/floatbtnmanager/k;->a(Ljava/lang/ref/WeakReference;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/c;->l:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/data/type/l;

    invoke-interface {v1, p1}, Lcom/networkbench/agent/impl/data/type/l;->b(Landroid/app/Activity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_1
    return-void

    :goto_2
    const-string p1, "onActivityResumed e:"

    invoke-static {v0, p1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "ActivityTrackingDelegate"

    const-string v1, "appstatus onActivityStarted foregrounded:"

    const-string v2, " onActivityStarted : "

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->getInstance()Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->onActivityStartMonitor(Ljava/lang/String;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/c;->l:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/data/type/l;

    invoke-interface {v1, p1, v2}, Lcom/networkbench/agent/impl/data/type/l;->a(Landroid/app/Activity;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    return-void

    :goto_1
    const-string p1, "error onActivityStarted"

    invoke-static {v0, p1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "ActivityTrackingDelegate"

    const-string v1, "appstatus onActivityStopped inBackground:"

    const-string v2, " onActivityStopped : "

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->getInstance()Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/networkbench/agent/impl/background/NBSApplicationStateMonitor;->onActivityStopMonitor(Ljava/lang/String;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/c;->l:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/data/type/l;

    invoke-interface {v1, p1, v2}, Lcom/networkbench/agent/impl/data/type/l;->b(Landroid/app/Activity;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    return-void

    :goto_1
    const-string p1, "error onActivityStopped"

    invoke-static {v0, p1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
