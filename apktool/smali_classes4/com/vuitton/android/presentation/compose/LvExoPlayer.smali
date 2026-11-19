.class public final Lcom/vuitton/android/presentation/compose/LvExoPlayer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/compose/LvExoPlayer;",
        "",
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
.field public final a:Landroidx/media3/exoplayer/ExoPlayer;

.field public final b:Landroidx/compose/runtime/MutableState;

.field public final c:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/vuitton/android/presentation/di/AppModule;->a:Lcom/vuitton/android/presentation/CacheFactory;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/vuitton/android/presentation/CacheFactory;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/datasource/cache/CacheDataSource$Factory;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/media3/exoplayer/ExoPlayer$Builder;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    invoke-direct {p1, v0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    iget-boolean v0, v1, Landroidx/media3/exoplayer/ExoPlayer$Builder;->A:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    new-instance v0, Lws;

    const/4 v2, 0x2

    invoke-direct {v0, p1, v2}, Lws;-><init>(Ljava/lang/Object;I)V

    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayer$Builder;->d:Lcom/google/common/base/Supplier;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->a()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->a()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/vuitton/android/presentation/compose/LvExoPlayer;->a:Landroidx/media3/exoplayer/ExoPlayer;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/compose/LvExoPlayer;->b:Landroidx/compose/runtime/MutableState;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/compose/LvExoPlayer;->c:Landroidx/compose/runtime/MutableState;

    new-instance v0, Lcom/vuitton/android/presentation/compose/LvExoPlayer$playerListener$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/compose/LvExoPlayer$playerListener$1;-><init>(Lcom/vuitton/android/presentation/compose/LvExoPlayer;)V

    invoke-interface {p1, v0}, Landroidx/media3/common/Player;->Y(Landroidx/media3/common/Player$Listener;)V

    return-void
.end method
