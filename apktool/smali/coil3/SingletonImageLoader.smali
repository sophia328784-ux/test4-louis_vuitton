.class public abstract Lcoil3/SingletonImageLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/SingletonImageLoader$Factory;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0004R\u0013\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00028\u0002X\u0082\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcoil3/SingletonImageLoader;",
        "",
        "Lkotlinx/atomicfu/AtomicRef;",
        "reference",
        "Factory",
        "io.coil-kt.coil3:coil"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcoil3/SingletonImageLoader;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static final a(Landroid/content/Context;)Lcoil3/ImageLoader;
    .locals 6

    sget-object v0, Lcoil3/SingletonImageLoader;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcoil3/ImageLoader;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lcoil3/ImageLoader;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-nez v1, :cond_9

    move-object v1, v3

    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Lcoil3/ImageLoader;

    if-eqz v4, :cond_1

    move-object v4, v2

    check-cast v4, Lcoil3/ImageLoader;

    move-object v5, v1

    goto :goto_5

    :cond_1
    if-nez v1, :cond_6

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v4, v2, Lcoil3/SingletonImageLoader$Factory;

    if-eqz v4, :cond_2

    move-object v4, v2

    check-cast v4, Lcoil3/SingletonImageLoader$Factory;

    goto :goto_2

    :cond_2
    move-object v4, v3

    :goto_2
    if-eqz v4, :cond_3

    invoke-interface {v4, v1}, Lcoil3/SingletonImageLoader$Factory;->b(Landroid/content/Context;)Lcoil3/RealImageLoader;

    move-result-object v1

    goto :goto_4

    :cond_3
    instance-of v4, v1, Lcoil3/SingletonImageLoader$Factory;

    if-eqz v4, :cond_4

    move-object v4, v1

    check-cast v4, Lcoil3/SingletonImageLoader$Factory;

    goto :goto_3

    :cond_4
    move-object v4, v3

    :goto_3
    if-eqz v4, :cond_5

    invoke-interface {v4, v1}, Lcoil3/SingletonImageLoader$Factory;->b(Landroid/content/Context;)Lcoil3/RealImageLoader;

    move-result-object v1

    goto :goto_4

    :cond_5
    sget-object v4, Lcoil3/SingletonImageLoaderKt;->a:Llw0;

    invoke-virtual {v4, v1}, Llw0;->b(Landroid/content/Context;)Lcoil3/RealImageLoader;

    move-result-object v1

    :cond_6
    :goto_4
    move-object v4, v1

    move-object v5, v4

    :cond_7
    :goto_5
    invoke-virtual {v0, v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-object v4

    :cond_8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v2, :cond_7

    move-object v1, v5

    goto :goto_1

    :cond_9
    return-object v1
.end method
