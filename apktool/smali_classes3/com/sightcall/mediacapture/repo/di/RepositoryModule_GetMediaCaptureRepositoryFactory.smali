.class public final Lcom/sightcall/mediacapture/repo/di/RepositoryModule_GetMediaCaptureRepositoryFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private final cacheDirProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final contentResolverProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final executorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/getmedia/MediaRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/sightcall/mediacapture/repo/di/RepositoryModule;

.field private final storageDirProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final videoConverterProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/mediacapture/repo/converter/VideoConverter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sightcall/mediacapture/repo/di/RepositoryModule;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/mediacapture/repo/di/RepositoryModule;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/getmedia/MediaRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Landroid/content/ContentResolver;",
            ">;",
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ldagger/internal/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ldagger/internal/Provider<",
            "Ljava/io/File;",
            ">;",
            "Ldagger/internal/Provider<",
            "Ljava/io/File;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/mediacapture/repo/converter/VideoConverter;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/mediacapture/repo/di/RepositoryModule_GetMediaCaptureRepositoryFactory;->module:Lcom/sightcall/mediacapture/repo/di/RepositoryModule;

    iput-object p2, p0, Lcom/sightcall/mediacapture/repo/di/RepositoryModule_GetMediaCaptureRepositoryFactory;->mediaRepositoryProvider:Ldagger/internal/Provider;

    iput-object p3, p0, Lcom/sightcall/mediacapture/repo/di/RepositoryModule_GetMediaCaptureRepositoryFactory;->contentResolverProvider:Ldagger/internal/Provider;

    iput-object p4, p0, Lcom/sightcall/mediacapture/repo/di/RepositoryModule_GetMediaCaptureRepositoryFactory;->contextProvider:Ldagger/internal/Provider;

    iput-object p5, p0, Lcom/sightcall/mediacapture/repo/di/RepositoryModule_GetMediaCaptureRepositoryFactory;->executorProvider:Ldagger/internal/Provider;

    iput-object p6, p0, Lcom/sightcall/mediacapture/repo/di/RepositoryModule_GetMediaCaptureRepositoryFactory;->cacheDirProvider:Ldagger/internal/Provider;

    iput-object p7, p0, Lcom/sightcall/mediacapture/repo/di/RepositoryModule_GetMediaCaptureRepositoryFactory;->storageDirProvider:Ldagger/internal/Provider;

    iput-object p8, p0, Lcom/sightcall/mediacapture/repo/di/RepositoryModule_GetMediaCaptureRepositoryFactory;->videoConverterProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Lcom/sightcall/mediacapture/repo/di/RepositoryModule;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/sightcall/mediacapture/repo/di/RepositoryModule_GetMediaCaptureRepositoryFactory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/mediacapture/repo/di/RepositoryModule;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/getmedia/MediaRepository;",
            ">;",
            "Ldagger/internal/Provider<",
            "Landroid/content/ContentResolver;",
            ">;",
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ldagger/internal/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ldagger/internal/Provider<",
            "Ljava/io/File;",
            ">;",
            "Ldagger/internal/Provider<",
            "Ljava/io/File;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/mediacapture/repo/converter/VideoConverter;",
            ">;)",
            "Lcom/sightcall/mediacapture/repo/di/RepositoryModule_GetMediaCaptureRepositoryFactory;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/mediacapture/repo/di/RepositoryModule_GetMediaCaptureRepositoryFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/sightcall/mediacapture/repo/di/RepositoryModule_GetMediaCaptureRepositoryFactory;-><init>(Lcom/sightcall/mediacapture/repo/di/RepositoryModule;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static getMediaCaptureRepository(Lcom/sightcall/mediacapture/repo/di/RepositoryModule;Lcom/sightcall/getmedia/MediaRepository;Landroid/content/ContentResolver;Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/io/File;Ljava/io/File;Lcom/sightcall/mediacapture/repo/converter/VideoConverter;)Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;
    .locals 0

    invoke-virtual/range {p0 .. p7}, Lcom/sightcall/mediacapture/repo/di/RepositoryModule;->getMediaCaptureRepository(Lcom/sightcall/getmedia/MediaRepository;Landroid/content/ContentResolver;Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/io/File;Ljava/io/File;Lcom/sightcall/mediacapture/repo/converter/VideoConverter;)Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;
    .locals 8

    iget-object v0, p0, Lcom/sightcall/mediacapture/repo/di/RepositoryModule_GetMediaCaptureRepositoryFactory;->module:Lcom/sightcall/mediacapture/repo/di/RepositoryModule;

    iget-object v1, p0, Lcom/sightcall/mediacapture/repo/di/RepositoryModule_GetMediaCaptureRepositoryFactory;->mediaRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sightcall/getmedia/MediaRepository;

    iget-object v2, p0, Lcom/sightcall/mediacapture/repo/di/RepositoryModule_GetMediaCaptureRepositoryFactory;->contentResolverProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/sightcall/mediacapture/repo/di/RepositoryModule_GetMediaCaptureRepositoryFactory;->contextProvider:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    iget-object v4, p0, Lcom/sightcall/mediacapture/repo/di/RepositoryModule_GetMediaCaptureRepositoryFactory;->executorProvider:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Executor;

    iget-object v5, p0, Lcom/sightcall/mediacapture/repo/di/RepositoryModule_GetMediaCaptureRepositoryFactory;->cacheDirProvider:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    iget-object v6, p0, Lcom/sightcall/mediacapture/repo/di/RepositoryModule_GetMediaCaptureRepositoryFactory;->storageDirProvider:Ldagger/internal/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    iget-object p0, p0, Lcom/sightcall/mediacapture/repo/di/RepositoryModule_GetMediaCaptureRepositoryFactory;->videoConverterProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/sightcall/mediacapture/repo/converter/VideoConverter;

    invoke-static/range {v0 .. v7}, Lcom/sightcall/mediacapture/repo/di/RepositoryModule_GetMediaCaptureRepositoryFactory;->getMediaCaptureRepository(Lcom/sightcall/mediacapture/repo/di/RepositoryModule;Lcom/sightcall/getmedia/MediaRepository;Landroid/content/ContentResolver;Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/io/File;Ljava/io/File;Lcom/sightcall/mediacapture/repo/converter/VideoConverter;)Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 64
    invoke-virtual {p0}, Lcom/sightcall/mediacapture/repo/di/RepositoryModule_GetMediaCaptureRepositoryFactory;->get()Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;

    move-result-object p0

    return-object p0
.end method
