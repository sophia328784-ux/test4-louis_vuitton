.class public final Landroidx/media3/session/MediaController$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroidx/media3/session/SessionToken;

.field public c:Landroid/os/Bundle;

.field public d:Landroidx/media3/session/MediaController$Listener;

.field public e:Landroid/os/Looper;

.field public f:Landroidx/media3/session/CacheBitmapLoader;

.field public final g:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/session/SessionToken;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/media3/session/MediaController$Builder;->a:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Landroidx/media3/session/MediaController$Builder;->b:Landroidx/media3/session/SessionToken;

    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object p1, p0, Landroidx/media3/session/MediaController$Builder;->c:Landroid/os/Bundle;

    new-instance p1, Landroidx/media3/session/MediaController$Builder$1;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaController$Builder;->d:Landroidx/media3/session/MediaController$Listener;

    sget-object p1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/media3/session/MediaController$Builder;->e:Landroid/os/Looper;

    const-wide/16 p1, 0x64

    iput-wide p1, p0, Landroidx/media3/session/MediaController$Builder;->g:J

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 10

    new-instance v6, Landroidx/media3/session/MediaControllerHolder;

    iget-object v0, p0, Landroidx/media3/session/MediaController$Builder;->e:Landroid/os/Looper;

    invoke-direct {v6, v0}, Landroidx/media3/session/MediaControllerHolder;-><init>(Landroid/os/Looper;)V

    iget-object v2, p0, Landroidx/media3/session/MediaController$Builder;->b:Landroidx/media3/session/SessionToken;

    iget-object v0, v2, Landroidx/media3/session/SessionToken;->a:Landroidx/media3/session/SessionToken$SessionTokenImpl;

    invoke-interface {v0}, Landroidx/media3/session/SessionToken$SessionTokenImpl;->f()Z

    move-result v0

    iget-object v1, p0, Landroidx/media3/session/MediaController$Builder;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaController$Builder;->f:Landroidx/media3/session/CacheBitmapLoader;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/media3/session/CacheBitmapLoader;

    new-instance v3, Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;

    invoke-direct {v3, v1}, Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroidx/media3/datasource/DataSourceBitmapLoader;

    invoke-direct {v4, v3}, Landroidx/media3/datasource/DataSourceBitmapLoader;-><init>(Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;)V

    invoke-direct {v0, v4}, Landroidx/media3/session/CacheBitmapLoader;-><init>(Landroidx/media3/common/util/BitmapLoader;)V

    iput-object v0, p0, Landroidx/media3/session/MediaController$Builder;->f:Landroidx/media3/session/CacheBitmapLoader;

    :cond_0
    new-instance v0, Landroidx/media3/session/MediaController;

    iget-object v3, p0, Landroidx/media3/session/MediaController$Builder;->c:Landroid/os/Bundle;

    iget-object v4, p0, Landroidx/media3/session/MediaController$Builder;->d:Landroidx/media3/session/MediaController$Listener;

    iget-object v5, p0, Landroidx/media3/session/MediaController$Builder;->e:Landroid/os/Looper;

    iget-object v7, p0, Landroidx/media3/session/MediaController$Builder;->f:Landroidx/media3/session/CacheBitmapLoader;

    iget-wide v8, p0, Landroidx/media3/session/MediaController$Builder;->g:J

    invoke-direct/range {v0 .. v9}, Landroidx/media3/session/MediaController;-><init>(Landroid/content/Context;Landroidx/media3/session/SessionToken;Landroid/os/Bundle;Landroidx/media3/session/MediaController$Listener;Landroid/os/Looper;Landroidx/media3/session/MediaControllerHolder;Landroidx/media3/session/CacheBitmapLoader;J)V

    new-instance v1, Landroid/os/Handler;

    iget-object p0, p0, Landroidx/media3/session/MediaController$Builder;->e:Landroid/os/Looper;

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p0, Landroidx/media3/session/f;

    const/4 v2, 0x0

    invoke-direct {p0, v6, v0, v2}, Landroidx/media3/session/f;-><init>(Landroidx/media3/session/MediaControllerHolder;Landroidx/media3/session/MediaController;I)V

    invoke-static {v1, p0}, Landroidx/media3/common/util/Util;->W(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-object v6
.end method
