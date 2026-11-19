.class public final Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0006B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;",
        "",
        "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;",
        "tracker",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;)V",
        "Companion",
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
.field public static final b:Ljava/lang/String;


# instance fields
.field public final a:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-class v0, Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->B()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    sput-object v0, Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;->a:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;->a:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

    sget-object v0, Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;->b:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;->a(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;)V

    return-void
.end method

.method public final b(Lcom/vuitton/android/presentation/tracking/AudioGuideActions;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/tracking/AudioGuideActions;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lkotlin/Pair;

    const-string v1, "action"

    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Lkotlin/Pair;

    const-string v1, "audio_language"

    invoke-direct {p1, v1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v0, p1}, [Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->i([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    new-instance p2, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$AudioGuide;

    invoke-direct {p2, p1}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$AudioGuide;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p2}, Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;->a(Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;)V

    return-void
.end method

.method public final c(Lcom/vuitton/android/presentation/tracking/PassActions;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlin/collections/builders/MapBuilder;

    invoke-direct {v0}, Lkotlin/collections/builders/MapBuilder;-><init>()V

    const-string v1, "action"

    invoke-interface {p1}, Lcom/vuitton/android/presentation/tracking/PassActions;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    const-string v1, "store_id"

    invoke-virtual {v0, v1, p2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Lkotlin/collections/builders/MapBuilder;->c()Lkotlin/collections/builders/MapBuilder;

    move-result-object p2

    instance-of v0, p1, Lcom/vuitton/android/presentation/tracking/PassActions$LVPass;

    if-eqz v0, :cond_1

    new-instance p1, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$LVPass;

    invoke-direct {p1, p2}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$LVPass;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    instance-of p1, p1, Lcom/vuitton/android/presentation/tracking/PassActions$SpeedyPass;

    if-eqz p1, :cond_2

    new-instance p1, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$SpeedyPass;

    invoke-direct {p1, p2}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$SpeedyPass;-><init>(Ljava/util/Map;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;->a(Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;)V

    return-void

    :cond_2
    invoke-static {}, Lv40;->g()V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lkotlin/Pair;

    const-string v1, "af_content_type"

    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/collections/MapsKt;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object p1

    :cond_1
    new-instance v0, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$ListView;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$ListView;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;->a(Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;)V

    return-void
.end method

.method public final e(Lcom/vuitton/android/presentation/tracking/PersonalSelectionActions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlin/collections/builders/MapBuilder;

    invoke-direct {v0}, Lkotlin/collections/builders/MapBuilder;-><init>()V

    const-string v1, "action"

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/tracking/PersonalSelectionActions;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    const-string p1, "product_id"

    invoke-virtual {v0, p1, p2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p3, :cond_1

    const-string p1, "product_category"

    invoke-virtual {v0, p1, p3}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p4, :cond_2

    const-string p1, "origin_store_id"

    invoke-virtual {v0, p1, p4}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0}, Lkotlin/collections/builders/MapBuilder;->c()Lkotlin/collections/builders/MapBuilder;

    move-result-object p1

    new-instance p2, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$LookBook;

    invoke-direct {p2, p1}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$LookBook;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p2}, Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;->a(Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;)V

    return-void
.end method

.method public final f(Lcom/vuitton/android/presentation/tracking/PersonalSelectionActions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlin/collections/builders/MapBuilder;

    invoke-direct {v0}, Lkotlin/collections/builders/MapBuilder;-><init>()V

    const-string v1, "action"

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/tracking/PersonalSelectionActions;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    const-string p1, "product_id"

    invoke-virtual {v0, p1, p2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p3, :cond_1

    const-string p1, "product_category"

    invoke-virtual {v0, p1, p3}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p4, :cond_2

    const-string p1, "origin_store_id"

    invoke-virtual {v0, p1, p4}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0}, Lkotlin/collections/builders/MapBuilder;->c()Lkotlin/collections/builders/MapBuilder;

    move-result-object p1

    new-instance p2, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$OmniWishlist;

    invoke-direct {p2, p1}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$OmniWishlist;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p2}, Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;->a(Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;)V

    return-void
.end method
