.class public final Landroidx/media3/datasource/DataSourceBitmapLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/BitmapLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;
    }
.end annotation


# static fields
.field public static final f:Lcom/google/common/base/Supplier;


# instance fields
.field public final a:Lcom/google/common/util/concurrent/ListeningExecutorService;

.field public final b:Landroidx/media3/datasource/DataSource$Factory;

.field public final c:Landroid/graphics/BitmapFactory$Options;

.field public final d:I

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lur;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lur;-><init>(I)V

    invoke-static {v0}, Lcom/google/common/base/Suppliers;->a(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    move-result-object v0

    sput-object v0, Landroidx/media3/datasource/DataSourceBitmapLoader;->f:Lcom/google/common/base/Supplier;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 48
    new-instance v0, Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;

    invoke-direct {v0, p1}, Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Landroidx/media3/datasource/DataSourceBitmapLoader;-><init>(Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 37
    new-instance v0, Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;

    invoke-direct {v0, p1}, Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;-><init>(Landroid/content/Context;)V

    .line 38
    iput p2, v0, Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;->b:I

    .line 39
    invoke-direct {p0, v0}, Landroidx/media3/datasource/DataSourceBitmapLoader;-><init>(Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/datasource/DefaultDataSource$Factory;

    iget-object v1, p1, Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/media3/datasource/DefaultDataSource$Factory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->b:Landroidx/media3/datasource/DataSource$Factory;

    sget-object v0, Landroidx/media3/datasource/DataSourceBitmapLoader;->f:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListeningExecutorService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->a:Lcom/google/common/util/concurrent/ListeningExecutorService;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->c:Landroid/graphics/BitmapFactory$Options;

    iget v0, p1, Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;->b:I

    iput v0, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->d:I

    iget-boolean p1, p1, Landroidx/media3/datasource/DataSourceBitmapLoader$Builder;->c:Z

    iput-boolean p1, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->e:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/common/util/concurrent/ListeningExecutorService;Landroidx/media3/datasource/DataSource$Factory;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/datasource/DataSourceBitmapLoader;-><init>(Lcom/google/common/util/concurrent/ListeningExecutorService;Landroidx/media3/datasource/DataSource$Factory;Landroid/graphics/BitmapFactory$Options;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/util/concurrent/ListeningExecutorService;Landroidx/media3/datasource/DataSource$Factory;Landroid/graphics/BitmapFactory$Options;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    .line 41
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/media3/datasource/DataSourceBitmapLoader;-><init>(Lcom/google/common/util/concurrent/ListeningExecutorService;Landroidx/media3/datasource/DataSource$Factory;Landroid/graphics/BitmapFactory$Options;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/util/concurrent/ListeningExecutorService;Landroidx/media3/datasource/DataSource$Factory;Landroid/graphics/BitmapFactory$Options;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->a:Lcom/google/common/util/concurrent/ListeningExecutorService;

    .line 44
    iput-object p2, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->b:Landroidx/media3/datasource/DataSource$Factory;

    .line 45
    iput-object p3, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->c:Landroid/graphics/BitmapFactory$Options;

    .line 46
    iput p4, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->d:I

    const/4 p1, 0x0

    .line 47
    iput-boolean p1, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->e:Z

    return-void
.end method


# virtual methods
.method public final b(Landroid/net/Uri;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    new-instance v0, Lo7;

    const/4 v1, 0x4

    invoke-direct {v0, p0, p1, v1}, Lo7;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p0, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->a:Lcom/google/common/util/concurrent/ListeningExecutorService;

    invoke-interface {p0, v0}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final c([B)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    new-instance v0, Lo7;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Lo7;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p0, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->a:Lcom/google/common/util/concurrent/ListeningExecutorService;

    invoke-interface {p0, v0}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method
