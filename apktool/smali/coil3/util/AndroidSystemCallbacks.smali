.class public final Lcoil3/util/AndroidSystemCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil3/util/SystemCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/util/AndroidSystemCallbacks$ActivityCallbacks;,
        Lcoil3/util/AndroidSystemCallbacks$Companion;,
        Lcoil3/util/AndroidSystemCallbacks$ComponentCallbacks;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001:\u0003\u0006\u0007\u0008B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\t"
    }
    d2 = {
        "Lcoil3/util/AndroidSystemCallbacks;",
        "Lcoil3/util/SystemCallbacks;",
        "Lcoil3/RealImageLoader;",
        "strongImageLoaderReference",
        "<init>",
        "(Lcoil3/RealImageLoader;)V",
        "ActivityCallbacks",
        "ComponentCallbacks",
        "Companion",
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
.field public final a:Ljava/lang/ref/WeakReference;

.field public final b:Lcoil3/util/AndroidSystemCallbacks$ActivityCallbacks;

.field public final c:Lcoil3/util/AndroidSystemCallbacks$ComponentCallbacks;

.field public d:Landroid/content/Context;

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoil3/util/AndroidSystemCallbacks$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil3/util/AndroidSystemCallbacks$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcoil3/RealImageLoader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcoil3/util/AndroidSystemCallbacks;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcoil3/util/AndroidSystemCallbacks$ActivityCallbacks;

    invoke-direct {v0, p0, p1}, Lcoil3/util/AndroidSystemCallbacks$ActivityCallbacks;-><init>(Lcoil3/util/AndroidSystemCallbacks;Lcoil3/RealImageLoader;)V

    iput-object v0, p0, Lcoil3/util/AndroidSystemCallbacks;->b:Lcoil3/util/AndroidSystemCallbacks$ActivityCallbacks;

    new-instance p1, Lcoil3/util/AndroidSystemCallbacks$ComponentCallbacks;

    invoke-direct {p1, p0}, Lcoil3/util/AndroidSystemCallbacks$ComponentCallbacks;-><init>(Lcoil3/util/AndroidSystemCallbacks;)V

    iput-object p1, p0, Lcoil3/util/AndroidSystemCallbacks;->c:Lcoil3/util/AndroidSystemCallbacks$ComponentCallbacks;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcoil3/util/AndroidSystemCallbacks;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcoil3/RealImageLoader;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcoil3/util/AndroidSystemCallbacks;->d:Landroid/content/Context;

    if-nez v1, :cond_1

    iget-object v0, v0, Lcoil3/RealImageLoader;->a:Lcoil3/RealImageLoader$Options;

    iget-object v0, v0, Lcoil3/RealImageLoader$Options;->a:Landroid/content/Context;

    iput-object v0, p0, Lcoil3/util/AndroidSystemCallbacks;->d:Landroid/content/Context;

    iget-object v1, p0, Lcoil3/util/AndroidSystemCallbacks;->c:Lcoil3/util/AndroidSystemCallbacks$ComponentCallbacks;

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcoil3/util/AndroidSystemCallbacks;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcoil3/util/AndroidSystemCallbacks;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcoil3/util/AndroidSystemCallbacks;->e:Z

    iget-object v0, p0, Lcoil3/util/AndroidSystemCallbacks;->d:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcoil3/util/AndroidSystemCallbacks;->b:Lcoil3/util/AndroidSystemCallbacks$ActivityCallbacks;

    invoke-virtual {v1, v0}, Lcoil3/util/AndroidSystemCallbacks$ActivityCallbacks;->b(Landroid/content/Context;)V

    iget-object v1, p0, Lcoil3/util/AndroidSystemCallbacks;->c:Lcoil3/util/AndroidSystemCallbacks$ComponentCallbacks;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcoil3/util/AndroidSystemCallbacks;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
