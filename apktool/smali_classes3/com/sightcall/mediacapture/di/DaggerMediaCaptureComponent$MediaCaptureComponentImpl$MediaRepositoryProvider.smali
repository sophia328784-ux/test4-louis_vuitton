.class final Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$MediaCaptureComponentImpl$MediaRepositoryProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$MediaCaptureComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaRepositoryProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Provider<",
        "Lcom/sightcall/getmedia/MediaRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private final mediaComponent:Lcom/sightcall/getmedia/di/MediaComponent;


# direct methods
.method public constructor <init>(Lcom/sightcall/getmedia/di/MediaComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$MediaCaptureComponentImpl$MediaRepositoryProvider;->mediaComponent:Lcom/sightcall/getmedia/di/MediaComponent;

    return-void
.end method


# virtual methods
.method public get()Lcom/sightcall/getmedia/MediaRepository;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$MediaCaptureComponentImpl$MediaRepositoryProvider;->mediaComponent:Lcom/sightcall/getmedia/di/MediaComponent;

    invoke-interface {p0}, Lcom/sightcall/getmedia/di/MediaComponent;->mediaRepository()Lcom/sightcall/getmedia/MediaRepository;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->b(Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/sightcall/mediacapture/di/DaggerMediaCaptureComponent$MediaCaptureComponentImpl$MediaRepositoryProvider;->get()Lcom/sightcall/getmedia/MediaRepository;

    move-result-object p0

    return-object p0
.end method
