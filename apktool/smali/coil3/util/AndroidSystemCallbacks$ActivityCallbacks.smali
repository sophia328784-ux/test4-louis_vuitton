.class public final Lcoil3/util/AndroidSystemCallbacks$ActivityCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil3/util/DefaultActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/util/AndroidSystemCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ActivityCallbacks"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcoil3/util/AndroidSystemCallbacks$ActivityCallbacks;",
        "Lcoil3/util/DefaultActivityLifecycleCallbacks;",
        "Lcoil3/RealImageLoader;",
        "strongImageLoaderReference",
        "<init>",
        "(Lcoil3/util/AndroidSystemCallbacks;Lcoil3/RealImageLoader;)V",
        "io.coil-kt.coil3:coil-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final b:D

.field public final synthetic c:Lcoil3/util/AndroidSystemCallbacks;


# direct methods
.method public constructor <init>(Lcoil3/util/AndroidSystemCallbacks;Lcoil3/RealImageLoader;)V
    .locals 0

    iput-object p1, p0, Lcoil3/util/AndroidSystemCallbacks$ActivityCallbacks;->c:Lcoil3/util/AndroidSystemCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p2, Lcoil3/RealImageLoader;->a:Lcoil3/RealImageLoader$Options;

    sget-object p2, Lcoil3/ImageLoaders_androidKt;->a:Lcoil3/Extras$Key;

    iget-object p1, p1, Lcoil3/RealImageLoader$Options;->b:Lcoil3/request/ImageRequest$Defaults;

    iget-object p1, p1, Lcoil3/request/ImageRequest$Defaults;->n:Lcoil3/Extras;

    sget-object p2, Lcoil3/ImageLoaders_androidKt;->d:Lcoil3/Extras$Key;

    iget-object p1, p1, Lcoil3/Extras;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p2, Lcoil3/Extras$Key;->a:Ljava/lang/Object;

    :cond_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p0, Lcoil3/util/AndroidSystemCallbacks$ActivityCallbacks;->b:D

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-wide v2, p0, Lcoil3/util/AndroidSystemCallbacks$ActivityCallbacks;->b:D

    cmpg-double v0, v2, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroid/app/Application;

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object p0, p0, Lcoil3/util/AndroidSystemCallbacks$ActivityCallbacks;->c:Lcoil3/util/AndroidSystemCallbacks;

    iget-object p1, p0, Lcoil3/util/AndroidSystemCallbacks;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcoil3/RealImageLoader;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcoil3/RealImageLoader;->e()Lcoil3/memory/MemoryCache;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcoil3/memory/MemoryCache;->d()J

    move-result-wide v0

    long-to-double v0, v0

    mul-double/2addr v2, v0

    double-to-long v0, v2

    invoke-interface {p0, v0, v1}, Lcoil3/memory/MemoryCache;->b(J)V

    iget-object p1, p1, Lcoil3/RealImageLoader;->a:Lcoil3/RealImageLoader$Options;

    iget-object p1, p1, Lcoil3/RealImageLoader$Options;->h:Lcoil3/util/Logger;

    if-eqz p1, :cond_1

    sget-object v0, Lcoil3/util/Logger$Level;->Verbose:Lcoil3/util/Logger$Level;

    invoke-interface {p1}, Lcoil3/util/Logger;->a()Lcoil3/util/Logger$Level;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_1

    invoke-interface {p0}, Lcoil3/memory/MemoryCache;->e()J

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-interface {p1}, Lcoil3/util/Logger;->b()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcoil3/util/AndroidSystemCallbacks;->b()V

    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 4

    iget-wide v0, p0, Lcoil3/util/AndroidSystemCallbacks$ActivityCallbacks;->b:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroid/app/Application;

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object p0, p0, Lcoil3/util/AndroidSystemCallbacks$ActivityCallbacks;->c:Lcoil3/util/AndroidSystemCallbacks;

    iget-object p1, p0, Lcoil3/util/AndroidSystemCallbacks;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcoil3/RealImageLoader;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcoil3/RealImageLoader;->e()Lcoil3/memory/MemoryCache;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcoil3/memory/MemoryCache;->d()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcoil3/memory/MemoryCache;->b(J)V

    iget-object p1, p1, Lcoil3/RealImageLoader;->a:Lcoil3/RealImageLoader$Options;

    iget-object p1, p1, Lcoil3/RealImageLoader$Options;->h:Lcoil3/util/Logger;

    if-eqz p1, :cond_1

    sget-object v0, Lcoil3/util/Logger$Level;->Verbose:Lcoil3/util/Logger$Level;

    invoke-interface {p1}, Lcoil3/util/Logger;->a()Lcoil3/util/Logger$Level;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_1

    invoke-interface {p0}, Lcoil3/memory/MemoryCache;->e()J

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-interface {p1}, Lcoil3/util/Logger;->b()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcoil3/util/AndroidSystemCallbacks;->b()V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcoil3/util/AndroidSystemCallbacks$ActivityCallbacks;->b(Landroid/content/Context;)V

    return-void
.end method
