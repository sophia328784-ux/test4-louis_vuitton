.class public final Lcom/vuitton/android/presentation/CacheFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/CacheFactory;",
        "",
        "Ljava/io/File;",
        "cacheDir",
        "Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;",
        "cacheEvictor",
        "Landroidx/media3/database/StandaloneDatabaseProvider;",
        "exoplayerDatabaseProvider",
        "<init>",
        "(Ljava/io/File;Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;Landroidx/media3/database/StandaloneDatabaseProvider;)V",
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
.field public final a:Lkotlin/Lazy;

.field public final b:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Ljava/io/File;Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;Landroidx/media3/database/StandaloneDatabaseProvider;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lq;

    const/16 v1, 0x13

    invoke-direct {v0, p1, p2, p3, v1}, Lq;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/CacheFactory;->a:Lkotlin/Lazy;

    new-instance p1, Lw1;

    const/16 p2, 0xd

    invoke-direct {p1, p0, p2}, Lw1;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/CacheFactory;->b:Lkotlin/Lazy;

    return-void
.end method
