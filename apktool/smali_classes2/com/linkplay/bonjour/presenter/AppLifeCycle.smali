.class public Lcom/linkplay/bonjour/presenter/AppLifeCycle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linkplay/bonjour/presenter/AppLifeCycle$AppLifeCycleCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LPServiceManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static monitorLifeCycle(Landroid/content/Context;Lcom/linkplay/bonjour/presenter/AppLifeCycle$AppLifeCycleCallback;)V
    .locals 1

    if-eqz p0, :cond_0

    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/Application;

    new-instance v0, Lcom/linkplay/bonjour/presenter/AppLifeCycle$1;

    invoke-direct {v0, p1}, Lcom/linkplay/bonjour/presenter/AppLifeCycle$1;-><init>(Lcom/linkplay/bonjour/presenter/AppLifeCycle$AppLifeCycleCallback;)V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void

    :cond_0
    const-string p0, "Context must be your ApplicationContext"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method
