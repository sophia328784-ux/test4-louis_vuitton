.class public final synthetic Lcom/perfectcorp/perfectlib/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/perfectcorp/common/network/ProgressCallback;

.field public final synthetic d:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

.field public final synthetic e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

.field public final synthetic f:Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/perfectcorp/common/network/ProgressCallback;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/o;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/o;->c:Lcom/perfectcorp/common/network/ProgressCallback;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/o;->d:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/o;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput-object p5, p0, Lcom/perfectcorp/perfectlib/o;->f:Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    sget-object v0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    iget-wide v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->m:J

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/LookHandler;->e(Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const-string v0, "[newLookUpdateFirstStrategySingle] Updating outdated look. lookGuid="

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/o;->b:Ljava/lang/String;

    const-string v3, "ApplyEffectUtility"

    invoke-static {v1, v0, v2, v3}, La;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/perfectcorp/perfectlib/CacheCleaner;->d(Ljava/lang/String;Z)V

    sget-object v0, Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;->UPDATE_FIRST:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/o;->c:Lcom/perfectcorp/common/network/ProgressCallback;

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/o;->d:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/o;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-static {p1, v1, v0, v2, p0}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->m(Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;Lcom/perfectcorp/common/network/ProgressCallback;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/o;->f:Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object p0

    return-object p0
.end method
