.class public final Lcoil3/util/AndroidSystemCallbacks$ComponentCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/util/AndroidSystemCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ComponentCallbacks"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcoil3/util/AndroidSystemCallbacks$ComponentCallbacks;",
        "Landroid/content/ComponentCallbacks2;",
        "<init>",
        "(Lcoil3/util/AndroidSystemCallbacks;)V",
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
.field public final synthetic b:Lcoil3/util/AndroidSystemCallbacks;


# direct methods
.method public constructor <init>(Lcoil3/util/AndroidSystemCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcoil3/util/AndroidSystemCallbacks$ComponentCallbacks;->b:Lcoil3/util/AndroidSystemCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p0, p0, Lcoil3/util/AndroidSystemCallbacks$ComponentCallbacks;->b:Lcoil3/util/AndroidSystemCallbacks;

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcoil3/util/AndroidSystemCallbacks;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcoil3/RealImageLoader;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcoil3/util/AndroidSystemCallbacks;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onLowMemory()V
    .locals 1

    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcoil3/util/AndroidSystemCallbacks$ComponentCallbacks;->onTrimMemory(I)V

    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 4

    iget-object p0, p0, Lcoil3/util/AndroidSystemCallbacks$ComponentCallbacks;->b:Lcoil3/util/AndroidSystemCallbacks;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcoil3/util/AndroidSystemCallbacks;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcoil3/RealImageLoader;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcoil3/RealImageLoader;->a:Lcoil3/RealImageLoader$Options;

    iget-object v1, v1, Lcoil3/RealImageLoader$Options;->h:Lcoil3/util/Logger;

    if-eqz v1, :cond_0

    sget-object v2, Lcoil3/util/Logger$Level;->Verbose:Lcoil3/util/Logger$Level;

    invoke-interface {v1}, Lcoil3/util/Logger;->a()Lcoil3/util/Logger$Level;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-gtz v2, :cond_0

    invoke-interface {v1}, Lcoil3/util/Logger;->b()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const/16 v1, 0x28

    if-lt p1, v1, :cond_1

    invoke-virtual {v0}, Lcoil3/RealImageLoader;->e()Lcoil3/memory/MemoryCache;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcoil3/memory/MemoryCache;->clear()V

    goto :goto_1

    :cond_1
    const/16 v1, 0x14

    if-lt p1, v1, :cond_2

    iget-object p1, p0, Lcoil3/util/AndroidSystemCallbacks;->b:Lcoil3/util/AndroidSystemCallbacks$ActivityCallbacks;

    iget-object v0, v0, Lcoil3/RealImageLoader;->a:Lcoil3/RealImageLoader$Options;

    iget-object v0, v0, Lcoil3/RealImageLoader$Options;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcoil3/util/AndroidSystemCallbacks$ActivityCallbacks;->a(Landroid/content/Context;)V

    goto :goto_1

    :cond_2
    const/16 v1, 0xa

    if-lt p1, v1, :cond_4

    invoke-virtual {v0}, Lcoil3/RealImageLoader;->e()Lcoil3/memory/MemoryCache;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcoil3/memory/MemoryCache;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    invoke-interface {p1, v0, v1}, Lcoil3/memory/MemoryCache;->g(J)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcoil3/util/AndroidSystemCallbacks;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method
