.class public Lorg/teleal/cling/android/AndroidEzlinkHandler;
.super Ljava/util/Observable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/cling/android/AndroidEzlinkHandler$IEZLINKBINDER;,
        Lorg/teleal/cling/android/AndroidEzlinkHandler$NotifyItem;,
        Lorg/teleal/cling/android/AndroidEzlinkHandler$NotifyType;
    }
.end annotation


# direct methods
.method public static a()Lorg/teleal/cling/android/AndroidEzlinkHandler;
    .locals 1

    sget-object v0, Lorg/teleal/cling/android/AndroidEzlinkHandler$IEZLINKBINDER;->a:Lorg/teleal/cling/android/AndroidEzlinkHandler;

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/util/HashMap;)V
    .locals 2

    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    new-instance v0, Lorg/teleal/cling/android/AndroidEzlinkHandler$NotifyItem;

    sget-object v1, Lorg/teleal/cling/android/AndroidEzlinkHandler$NotifyType;->DEVICE_ON_LINE:Lorg/teleal/cling/android/AndroidEzlinkHandler$NotifyType;

    invoke-direct {v0, v1, p1}, Lorg/teleal/cling/android/AndroidEzlinkHandler$NotifyItem;-><init>(Lorg/teleal/cling/android/AndroidEzlinkHandler$NotifyType;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method
