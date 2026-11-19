.class public final Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mediaComponent:Lcom/sightcall/getmedia/di/MediaComponent;

.field private repositoryModule:Lcom/sightcall/mediacapture/repo/di/RepositoryModule;

.field private sightCallComponent:Lcom/sightcall/core/di/SightCallComponent;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/sightcall/mediacapture/di/MediaCaptureComponent;
    .locals 3

    iget-object v0, p0, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$Builder;->repositoryModule:Lcom/sightcall/mediacapture/repo/di/RepositoryModule;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sightcall/mediacapture/repo/di/RepositoryModule;

    invoke-direct {v0}, Lcom/sightcall/mediacapture/repo/di/RepositoryModule;-><init>()V

    iput-object v0, p0, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$Builder;->repositoryModule:Lcom/sightcall/mediacapture/repo/di/RepositoryModule;

    :cond_0
    iget-object v0, p0, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$Builder;->sightCallComponent:Lcom/sightcall/core/di/SightCallComponent;

    const-class v1, Lcom/sightcall/core/di/SightCallComponent;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$Builder;->mediaComponent:Lcom/sightcall/getmedia/di/MediaComponent;

    const-class v1, Lcom/sightcall/getmedia/di/MediaComponent;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v0, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$MediaCaptureComponentImpl;

    iget-object v1, p0, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$Builder;->repositoryModule:Lcom/sightcall/mediacapture/repo/di/RepositoryModule;

    iget-object v2, p0, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$Builder;->sightCallComponent:Lcom/sightcall/core/di/SightCallComponent;

    iget-object p0, p0, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$Builder;->mediaComponent:Lcom/sightcall/getmedia/di/MediaComponent;

    invoke-direct {v0, v1, v2, p0}, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$MediaCaptureComponentImpl;-><init>(Lcom/sightcall/mediacapture/repo/di/RepositoryModule;Lcom/sightcall/core/di/SightCallComponent;Lcom/sightcall/getmedia/di/MediaComponent;)V

    return-object v0
.end method

.method public mediaComponent(Lcom/sightcall/getmedia/di/MediaComponent;)Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$Builder;->mediaComponent:Lcom/sightcall/getmedia/di/MediaComponent;

    return-object p0
.end method

.method public repositoryModule(Lcom/sightcall/mediacapture/repo/di/RepositoryModule;)Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$Builder;->repositoryModule:Lcom/sightcall/mediacapture/repo/di/RepositoryModule;

    return-object p0
.end method

.method public sightCallComponent(Lcom/sightcall/core/di/SightCallComponent;)Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$Builder;->sightCallComponent:Lcom/sightcall/core/di/SightCallComponent;

    return-object p0
.end method
