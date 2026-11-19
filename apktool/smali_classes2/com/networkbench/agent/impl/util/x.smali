.class public Lcom/networkbench/agent/impl/util/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String; = "NBSReactNativePageManager"

.field private static b:Lcom/networkbench/agent/impl/util/x;

.field private static c:I


# instance fields
.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/networkbench/agent/impl/n/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/networkbench/agent/impl/util/x;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/util/x;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/util/x;->b:Lcom/networkbench/agent/impl/util/x;

    const/16 v0, 0x64

    sput v0, Lcom/networkbench/agent/impl/util/x;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/util/x;->d:Ljava/util/Map;

    return-void
.end method

.method private a(JJ)Lcom/networkbench/agent/impl/data/type/p;
    .locals 0

    .line 100
    new-instance p0, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;-><init>(J)V

    .line 101
    sget-object p1, Lcom/networkbench/agent/impl/data/type/SlowStartState$UEType;->pageLoading:Lcom/networkbench/agent/impl/data/type/SlowStartState$UEType;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->metricName:Ljava/lang/String;

    .line 102
    new-instance p1, Lcom/networkbench/agent/impl/data/type/p;

    invoke-direct {p1, p0}, Lcom/networkbench/agent/impl/data/type/p;-><init>(Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;)V

    .line 103
    invoke-virtual {p1, p3, p4}, Lcom/networkbench/agent/impl/asyncaction/s;->a(J)V

    return-object p1
.end method

.method public static a()Lcom/networkbench/agent/impl/util/x;
    .locals 1

    .line 99
    sget-object v0, Lcom/networkbench/agent/impl/util/x;->b:Lcom/networkbench/agent/impl/util/x;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/networkbench/agent/impl/util/x;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    sget v1, Lcom/networkbench/agent/impl/util/x;->c:I

    if-le v0, v1, :cond_0

    sget-object p0, Lcom/networkbench/agent/impl/util/x;->a:Ljava/lang/String;

    const-string p1, "page map is over max map size"

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/util/x;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/x;->d:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/n/g;

    sget-object p1, Lcom/networkbench/agent/impl/util/x;->a:Ljava/lang/String;

    const-string v0, "not the first start, skip"

    invoke-static {p1, v0}, Lcom/networkbench/agent/impl/util/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/n/g;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/util/UUID;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/networkbench/agent/impl/n/g;

    invoke-direct {v1}, Lcom/networkbench/agent/impl/n/g;-><init>()V

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/n/g;->b(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/networkbench/agent/impl/n/g;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/networkbench/agent/impl/n/g;->a(J)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/x;->d:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public a(JJLjava/lang/String;)V
    .locals 5

    .line 104
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/networkbench/agent/impl/util/x;->a(JJ)Lcom/networkbench/agent/impl/data/type/p;

    move-result-object p0

    .line 105
    new-instance v0, Lcom/networkbench/agent/impl/data/d/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p5, p0}, Lcom/networkbench/agent/impl/data/d/h;-><init>(ILjava/lang/String;Lcom/networkbench/agent/impl/data/type/p;)V

    .line 106
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/d/h;->o()Z

    move-result p0

    const-string v1, ", exitTime:"

    const-string v2, ", enterTime:"

    if-nez p0, :cond_0

    .line 107
    sget-object p0, Lcom/networkbench/agent/impl/util/x;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "react native page data is store to data, pageName is:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/util/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    sget-object p0, Lcom/networkbench/agent/impl/asyncaction/a/b;->a:Lcom/networkbench/agent/impl/asyncaction/a/b;

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/asyncaction/a/b;->a(Lcom/networkbench/agent/impl/asyncaction/a/a;)V

    return-void

    .line 109
    :cond_0
    sget-object p0, Lcom/networkbench/agent/impl/util/x;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "react native page data is cross the border, pageName is:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/util/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lcom/networkbench/agent/impl/util/x;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/util/x;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/n/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/n/g;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/networkbench/agent/impl/n/g;->b(J)V

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/n/g;->b()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/n/g;->c()J

    move-result-wide v7

    move-object v4, p0

    move-object v9, p1

    invoke-virtual/range {v4 .. v9}, Lcom/networkbench/agent/impl/util/x;->a(JJLjava/lang/String;)V

    iget-object p0, v4, Lcom/networkbench/agent/impl/util/x;->d:Ljava/util/Map;

    invoke-interface {p0, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public b()V
    .locals 2

    .line 51
    sget-object v0, Lcom/networkbench/agent/impl/util/x;->a:Ljava/lang/String;

    const-string v1, "registerReactMarkerListener"

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v0, "com.facebook.react.bridge.ReactMarker"

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    sget-object p0, Lcom/networkbench/agent/impl/util/x;->a:Ljava/lang/String;

    const-string v0, "class ReactMarker is not exist, skip"

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 54
    :cond_0
    new-instance v0, Lcom/networkbench/agent/impl/util/x$1;

    invoke-direct {v0, p0}, Lcom/networkbench/agent/impl/util/x$1;-><init>(Lcom/networkbench/agent/impl/util/x;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->addListener(Lcom/facebook/react/bridge/ReactMarker$MarkerListener;)V

    return-void
.end method
