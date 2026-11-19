.class public interface abstract Lcoil3/ImageLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/ImageLoader$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001:\u0001\u0002\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0003\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcoil3/ImageLoader;",
        "",
        "Builder",
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


# virtual methods
.method public abstract a()Lcoil3/disk/DiskCache;
.end method

.method public abstract b(Lcoil3/request/ImageRequest;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
.end method

.method public abstract c()Lcoil3/request/ImageRequest$Defaults;
.end method

.method public abstract d(Lcoil3/request/ImageRequest;)Lcoil3/request/Disposable;
.end method

.method public abstract e()Lcoil3/memory/MemoryCache;
.end method

.method public abstract getComponents()Lcoil3/ComponentRegistry;
.end method
