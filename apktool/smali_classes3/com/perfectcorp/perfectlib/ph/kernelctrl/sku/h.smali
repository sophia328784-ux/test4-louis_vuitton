.class public abstract Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

.field public static final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder;

    invoke-direct {v0}, Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder;-><init>()V

    const-string v1, "SkuManagerThread"

    iput-object v1, v0, Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder;->a:Ljava/lang/String;

    const/16 v1, 0xa

    iput v1, v0, Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder;->d:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder;->c:Z

    invoke-virtual {v0}, Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder;->a()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->a(Ljava/util/concurrent/ExecutorService;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    sget-boolean v1, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->q:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_SHADOW:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v1, v0}, Lz81;->i(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;)V

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_LINES:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v1, v0}, Lz81;->i(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;)V

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_LASHES:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v1, v0}, Lz81;->i(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;)V

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->LIP_STICK:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v1, v0}, Lz81;->i(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;)V

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->BLUSH:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v1, v0}, Lz81;->i(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;)V

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->SKIN_TONER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v1, v0}, Lz81;->i(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;)V

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_CONTACT:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v1, v0}, Lz81;->i(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;)V

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_BROW:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v1, v0}, Lz81;->i(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;)V

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_CONTOUR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v1, v0}, Lz81;->i(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;)V

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->LIP_LINER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v1, v0}, Lz81;->i(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;)V

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->BACKGROUND:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v1, v0}, Lz81;->i(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;)V

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->BRONZER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v1, v0}, Lz81;->i(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;)V

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->CONCEALER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v1, v0}, Lz81;->i(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;)V

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_WEAR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v1, v0}, Lz81;->i(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;)V

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EARRINGS:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v1, v0}, Lz81;->i(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;)V

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->HAIR_DYE:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v1, v0}, Lz81;->i(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;)V

    :cond_0
    sget-boolean v1, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->v:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->NAIL:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v1, v0}, Lz81;->i(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;)V

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->RING:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v1, v0}, Lz81;->i(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;)V

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->BRACELET:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v1, v0}, Lz81;->i(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;)V

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->WATCH:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v1, v0}, Lz81;->i(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;)V

    :cond_1
    sget-boolean v1, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->y:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->NECKLACE:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v1, v0}, Lz81;->i(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;)V

    :cond_2
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h;->b:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/util/Collection;ILcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;
    .locals 5

    invoke-static {p0}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v0

    const-string v1, "SkuManager"

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "guid is null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const-string p1, "requestSkuMetadataByGuids error"

    invoke-static {v1, p1, p0}, Lcom/perfectcorp/common/utility/Log;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e;

    invoke-direct {p1, p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lzp;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lzp;-><init>(I)V

    invoke-static {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Collections2;->a(Ljava/util/Collection;Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Lcom/perfectcorp/thirdparty/com/google/common/base/Joiner;

    const-string v4, ","

    invoke-direct {v3, v4}, Lcom/perfectcorp/thirdparty/com/google/common/base/Joiner;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/perfectcorp/thirdparty/com/google/common/base/Joiner;->c()Lcom/perfectcorp/thirdparty/com/google/common/base/Joiner;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Joiner;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string p0, "guids validate failed!"

    invoke-static {v1, p0, v2}, Lcom/perfectcorp/common/utility/Log;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    invoke-static {v0}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "empty guid collection"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->g(Ljava/lang/Throwable;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/l;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a$a;

    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a$a;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a$a;->a:Ljava/util/Collection;

    iput p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a$a;->b:I

    iget-object p1, p2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a;->d:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a$a;->f:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iget-boolean p1, p2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a;->a:Z

    iput-boolean p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a$a;->c:Z

    iget-boolean p1, p2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a;->b:Z

    iput-boolean p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a$a;->d:Z

    iget-boolean p1, p2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a;->c:Z

    iput-boolean p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a$a;->e:Z

    new-instance p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b;

    new-instance p2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a;

    invoke-direct {p2, p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a$a;)V

    invoke-direct {p1, p2}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a;)V

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;)V
    .locals 8

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$d;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/f$c;-><init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/DownloadFolderHelper;->c(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/download/DownloadMetadata;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    sget-object v4, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;->SKU:Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;

    new-instance v2, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;

    const-wide/16 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;-><init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;Ljava/lang/String;J)V

    invoke-static {v0, v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;)V

    return-void
.end method

.method public static c(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z
    .locals 1

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->e(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->h(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->j(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static d(Ljava/util/Set;Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;
    .locals 5

    invoke-static {p0}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v0

    const-string v1, "SkuManager"

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "guid is null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const-string p1, "requestSkuMetadataByShadeIds error"

    invoke-static {v1, p1, p0}, Lcom/perfectcorp/common/utility/Log;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e;

    invoke-direct {p1, p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/e;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lzp;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lzp;-><init>(I)V

    invoke-static {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Collections2;->a(Ljava/util/Collection;Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Lcom/perfectcorp/thirdparty/com/google/common/base/Joiner;

    const-string v4, ","

    invoke-direct {v3, v4}, Lcom/perfectcorp/thirdparty/com/google/common/base/Joiner;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/perfectcorp/thirdparty/com/google/common/base/Joiner;->c()Lcom/perfectcorp/thirdparty/com/google/common/base/Joiner;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Joiner;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string p0, "guids validate failed!"

    invoke-static {v1, p0, v2}, Lcom/perfectcorp/common/utility/Log;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    invoke-static {v0}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "empty guid collection"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->g(Ljava/lang/Throwable;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/l;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a$a;

    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a$a;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a$a;->a:Ljava/util/Collection;

    const/4 v0, 0x0

    iput v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a$a;->b:I

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a;->d:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a$a;->f:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a;->a:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a$a;->c:Z

    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a;->b:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a$a;->d:Z

    iget-boolean p1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h$a;->c:Z

    iput-boolean p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a$a;->e:Z

    new-instance p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/a;

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a;

    invoke-direct {v0, p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a$a;)V

    invoke-direct {p1, v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b$a;)V

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/b;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method public static e()Z
    .locals 1

    sget-boolean v0, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->q:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->v:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
