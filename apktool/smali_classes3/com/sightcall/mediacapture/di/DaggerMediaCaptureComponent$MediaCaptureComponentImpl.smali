.class final Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$MediaCaptureComponentImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/mediacapture/di/MediaCaptureComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaCaptureComponentImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$MediaCaptureComponentImpl$MediaRepositoryProvider;,
        Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$MediaCaptureComponentImpl$ContextProvider;
    }
.end annotation


# instance fields
.field contextProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field getCacheDirProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field getContentResolverProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field getMediaCaptureRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;",
            ">;"
        }
    .end annotation
.end field

.field getStorageDirProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field getVideoConverterProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/mediacapture/repo/converter/VideoConverter;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaCaptureComponentImpl:Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$MediaCaptureComponentImpl;

.field mediaRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/getmedia/MediaRepository;",
            ">;"
        }
    .end annotation
.end field

.field providesExecutorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sightcall/mediacapture/repo/di/RepositoryModule;Lcom/sightcall/core/di/SightCallComponent;Lcom/sightcall/getmedia/di/MediaComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$MediaCaptureComponentImpl;->mediaCaptureComponentImpl:Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$MediaCaptureComponentImpl;

    invoke-direct {p0, p1, p2, p3}, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$MediaCaptureComponentImpl;->initialize(Lcom/sightcall/mediacapture/repo/di/RepositoryModule;Lcom/sightcall/core/di/SightCallComponent;Lcom/sightcall/getmedia/di/MediaComponent;)V

    return-void
.end method

.method private initialize(Lcom/sightcall/mediacapture/repo/di/RepositoryModule;Lcom/sightcall/core/di/SightCallComponent;Lcom/sightcall/getmedia/di/MediaComponent;)V
    .locals 8

    new-instance v0, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$MediaCaptureComponentImpl$MediaRepositoryProvider;

    invoke-direct {v0, p3}, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$MediaCaptureComponentImpl$MediaRepositoryProvider;-><init>(Lcom/sightcall/getmedia/di/MediaComponent;)V

    iput-object v0, p0, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$MediaCaptureComponentImpl;->mediaRepositoryProvider:Ldagger/internal/Provider;

    new-instance p3, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$MediaCaptureComponentImpl$ContextProvider;

    invoke-direct {p3, p2}, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$MediaCaptureComponentImpl$ContextProvider;-><init>(Lcom/sightcall/core/di/SightCallComponent;)V

    iput-object p3, p0, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$MediaCaptureComponentImpl;->contextProvider:Ldagger/internal/Provider;

    invoke-static {p1, p3}, Lcom/sightcall/mediacapture/repo/di/RepositoryModule_GetContentResolverFactory;->create(Lcom/sightcall/mediacapture/repo/di/RepositoryModule;Ldagger/internal/Provider;)Lcom/sightcall/mediacapture/repo/di/RepositoryModule_GetContentResolverFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$MediaCaptureComponentImpl;->getContentResolverProvider:Ldagger/internal/Provider;

    iget-object p2, p0, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$MediaCaptureComponentImpl;->contextProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2}, Lcom/sightcall/mediacapture/repo/di/RepositoryModule_ProvidesExecutorFactory;->create(Lcom/sightcall/mediacapture/repo/di/RepositoryModule;Ldagger/internal/Provider;)Lcom/sightcall/mediacapture/repo/di/RepositoryModule_ProvidesExecutorFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$MediaCaptureComponentImpl;->providesExecutorProvider:Ldagger/internal/Provider;

    iget-object p2, p0, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$MediaCaptureComponentImpl;->contextProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2}, Lcom/sightcall/mediacapture/repo/di/RepositoryModule_GetCacheDirFactory;->create(Lcom/sightcall/mediacapture/repo/di/RepositoryModule;Ldagger/internal/Provider;)Lcom/sightcall/mediacapture/repo/di/RepositoryModule_GetCacheDirFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$MediaCaptureComponentImpl;->getCacheDirProvider:Ldagger/internal/Provider;

    iget-object p2, p0, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$MediaCaptureComponentImpl;->contextProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2}, Lcom/sightcall/mediacapture/repo/di/RepositoryModule_GetStorageDirFactory;->create(Lcom/sightcall/mediacapture/repo/di/RepositoryModule;Ldagger/internal/Provider;)Lcom/sightcall/mediacapture/repo/di/RepositoryModule_GetStorageDirFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$MediaCaptureComponentImpl;->getStorageDirProvider:Ldagger/internal/Provider;

    iget-object p2, p0, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$MediaCaptureComponentImpl;->contextProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2}, Lcom/sightcall/mediacapture/repo/di/RepositoryModule_GetVideoConverterFactory;->create(Lcom/sightcall/mediacapture/repo/di/RepositoryModule;Ldagger/internal/Provider;)Lcom/sightcall/mediacapture/repo/di/RepositoryModule_GetVideoConverterFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v7

    iput-object v7, p0, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$MediaCaptureComponentImpl;->getVideoConverterProvider:Ldagger/internal/Provider;

    iget-object v1, p0, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$MediaCaptureComponentImpl;->mediaRepositoryProvider:Ldagger/internal/Provider;

    iget-object v2, p0, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$MediaCaptureComponentImpl;->getContentResolverProvider:Ldagger/internal/Provider;

    iget-object v3, p0, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$MediaCaptureComponentImpl;->contextProvider:Ldagger/internal/Provider;

    iget-object v4, p0, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$MediaCaptureComponentImpl;->providesExecutorProvider:Ldagger/internal/Provider;

    iget-object v5, p0, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$MediaCaptureComponentImpl;->getCacheDirProvider:Ldagger/internal/Provider;

    iget-object v6, p0, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$MediaCaptureComponentImpl;->getStorageDirProvider:Ldagger/internal/Provider;

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/sightcall/mediacapture/repo/di/RepositoryModule_GetMediaCaptureRepositoryFactory;->create(Lcom/sightcall/mediacapture/repo/di/RepositoryModule;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/sightcall/mediacapture/repo/di/RepositoryModule_GetMediaCaptureRepositoryFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$MediaCaptureComponentImpl;->getMediaCaptureRepositoryProvider:Ldagger/internal/Provider;

    return-void
.end method

.method private injectMediaCaptureFragment(Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;)Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$MediaCaptureComponentImpl;->mediaCaptureViewModelFactory()Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$Factory;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment_MembersInjector;->injectViewModelFactory(Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$Factory;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$MediaCaptureComponentImpl;->injectMediaCaptureFragment(Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;)Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;

    return-void
.end method

.method public mediaCaptureUseCase()Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;
    .locals 1

    new-instance v0, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;

    iget-object p0, p0, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$MediaCaptureComponentImpl;->getMediaCaptureRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;

    invoke-direct {v0, p0}, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;-><init>(Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;)V

    return-object v0
.end method

.method public mediaCaptureViewModelFactory()Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$Factory;
    .locals 1

    new-instance v0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$Factory;

    invoke-virtual {p0}, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$MediaCaptureComponentImpl;->mediaCaptureUseCase()Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$Factory;-><init>(Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;)V

    return-object v0
.end method
