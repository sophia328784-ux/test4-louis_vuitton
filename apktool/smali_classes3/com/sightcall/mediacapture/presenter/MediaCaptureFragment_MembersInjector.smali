.class public final Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment_MembersInjector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private final viewModelFactoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$Factory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$Factory;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment_MembersInjector;->viewModelFactoryProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$Factory;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment_MembersInjector;

    invoke-direct {v0, p0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment_MembersInjector;-><init>(Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static injectViewModelFactory(Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$Factory;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;->viewModelFactory:Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$Factory;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;)V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment_MembersInjector;->viewModelFactoryProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$Factory;

    invoke-static {p1, p0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment_MembersInjector;->injectViewModelFactory(Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$Factory;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;

    invoke-virtual {p0, p1}, Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment_MembersInjector;->injectMembers(Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;)V

    return-void
.end method
