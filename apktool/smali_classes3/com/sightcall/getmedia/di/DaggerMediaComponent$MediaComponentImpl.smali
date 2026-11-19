.class final Lcom/sightcall/getmedia/di/DaggerMediaComponent$MediaComponentImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/getmedia/di/MediaComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/getmedia/di/DaggerMediaComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaComponentImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/getmedia/di/DaggerMediaComponent$MediaComponentImpl$ContextProvider;
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

.field getContentResolverProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaComponentImpl:Lcom/sightcall/getmedia/di/DaggerMediaComponent$MediaComponentImpl;

.field provideMediaRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/getmedia/MediaRepository;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sightcall/getmedia/di/MediaModule;Lcom/sightcall/core/di/SightCallComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/sightcall/getmedia/di/DaggerMediaComponent$MediaComponentImpl;->mediaComponentImpl:Lcom/sightcall/getmedia/di/DaggerMediaComponent$MediaComponentImpl;

    invoke-direct {p0, p1, p2}, Lcom/sightcall/getmedia/di/DaggerMediaComponent$MediaComponentImpl;->initialize(Lcom/sightcall/getmedia/di/MediaModule;Lcom/sightcall/core/di/SightCallComponent;)V

    return-void
.end method

.method private initialize(Lcom/sightcall/getmedia/di/MediaModule;Lcom/sightcall/core/di/SightCallComponent;)V
    .locals 1

    new-instance v0, Lcom/sightcall/getmedia/di/DaggerMediaComponent$MediaComponentImpl$ContextProvider;

    invoke-direct {v0, p2}, Lcom/sightcall/getmedia/di/DaggerMediaComponent$MediaComponentImpl$ContextProvider;-><init>(Lcom/sightcall/core/di/SightCallComponent;)V

    iput-object v0, p0, Lcom/sightcall/getmedia/di/DaggerMediaComponent$MediaComponentImpl;->contextProvider:Ldagger/internal/Provider;

    invoke-static {p1, v0}, Lcom/sightcall/getmedia/di/MediaModule_GetContentResolverFactory;->create(Lcom/sightcall/getmedia/di/MediaModule;Ldagger/internal/Provider;)Lcom/sightcall/getmedia/di/MediaModule_GetContentResolverFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/getmedia/di/DaggerMediaComponent$MediaComponentImpl;->getContentResolverProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2}, Lcom/sightcall/getmedia/di/MediaModule_ProvideMediaRepositoryFactory;->create(Lcom/sightcall/getmedia/di/MediaModule;Ldagger/internal/Provider;)Lcom/sightcall/getmedia/di/MediaModule_ProvideMediaRepositoryFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/getmedia/di/DaggerMediaComponent$MediaComponentImpl;->provideMediaRepositoryProvider:Ldagger/internal/Provider;

    return-void
.end method


# virtual methods
.method public mediaRepository()Lcom/sightcall/getmedia/MediaRepository;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/getmedia/di/DaggerMediaComponent$MediaComponentImpl;->provideMediaRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/getmedia/MediaRepository;

    return-object p0
.end method
