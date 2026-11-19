.class public final Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTrackerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0013\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTrackerImpl;",
        "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
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


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation runtime Ldagger/hilt/android/qualifiers/ApplicationContext;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTrackerImpl;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {p2}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;->b()Ljava/util/Map;

    move-result-object p2

    new-instance v2, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTrackerImpl$logEvent$1;

    invoke-direct {v2, p1}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTrackerImpl$logEvent$1;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTrackerImpl;->a:Landroid/content/Context;

    invoke-virtual {v0, p0, v1, p2, v2}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/appsflyer/share/attribution/AppsFlyerRequestListener;)V

    return-void
.end method
