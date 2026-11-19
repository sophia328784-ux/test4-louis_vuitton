.class public final Lcom/sightcall/livetranslation/live/LiveSentencesComponent_Module_ProvideCoordinatorFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/sightcall/livetranslation/live/LiveSentencesCoordinator;",
        ">;"
    }
.end annotation


# instance fields
.field private final coordinatorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/live/LiveSentencesCoordinatorImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Module;


# direct methods
.method private constructor <init>(Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Module;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Module;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/live/LiveSentencesCoordinatorImpl;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/livetranslation/live/LiveSentencesComponent_Module_ProvideCoordinatorFactory;->module:Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Module;

    iput-object p2, p0, Lcom/sightcall/livetranslation/live/LiveSentencesComponent_Module_ProvideCoordinatorFactory;->coordinatorProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Module;Ldagger/internal/Provider;)Lcom/sightcall/livetranslation/live/LiveSentencesComponent_Module_ProvideCoordinatorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Module;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/live/LiveSentencesCoordinatorImpl;",
            ">;)",
            "Lcom/sightcall/livetranslation/live/LiveSentencesComponent_Module_ProvideCoordinatorFactory;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/livetranslation/live/LiveSentencesComponent_Module_ProvideCoordinatorFactory;

    invoke-direct {v0, p0, p1}, Lcom/sightcall/livetranslation/live/LiveSentencesComponent_Module_ProvideCoordinatorFactory;-><init>(Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Module;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static provideCoordinator(Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Module;Lcom/sightcall/livetranslation/live/LiveSentencesCoordinatorImpl;)Lcom/sightcall/livetranslation/live/LiveSentencesCoordinator;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Module;->provideCoordinator(Lcom/sightcall/livetranslation/live/LiveSentencesCoordinatorImpl;)Lcom/sightcall/livetranslation/live/LiveSentencesCoordinator;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Lcom/sightcall/livetranslation/live/LiveSentencesCoordinator;
    .locals 1

    iget-object v0, p0, Lcom/sightcall/livetranslation/live/LiveSentencesComponent_Module_ProvideCoordinatorFactory;->module:Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Module;

    iget-object p0, p0, Lcom/sightcall/livetranslation/live/LiveSentencesComponent_Module_ProvideCoordinatorFactory;->coordinatorProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/livetranslation/live/LiveSentencesCoordinatorImpl;

    invoke-static {v0, p0}, Lcom/sightcall/livetranslation/live/LiveSentencesComponent_Module_ProvideCoordinatorFactory;->provideCoordinator(Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Module;Lcom/sightcall/livetranslation/live/LiveSentencesCoordinatorImpl;)Lcom/sightcall/livetranslation/live/LiveSentencesCoordinator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/sightcall/livetranslation/live/LiveSentencesComponent_Module_ProvideCoordinatorFactory;->get()Lcom/sightcall/livetranslation/live/LiveSentencesCoordinator;

    move-result-object p0

    return-object p0
.end method
