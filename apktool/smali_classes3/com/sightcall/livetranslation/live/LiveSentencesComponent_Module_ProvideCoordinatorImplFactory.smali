.class public final Lcom/sightcall/livetranslation/live/LiveSentencesComponent_Module_ProvideCoordinatorImplFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/sightcall/livetranslation/live/LiveSentencesCoordinatorImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final componentProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/live/LiveSentencesComponent;",
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
            "Lcom/sightcall/livetranslation/live/LiveSentencesComponent;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/livetranslation/live/LiveSentencesComponent_Module_ProvideCoordinatorImplFactory;->module:Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Module;

    iput-object p2, p0, Lcom/sightcall/livetranslation/live/LiveSentencesComponent_Module_ProvideCoordinatorImplFactory;->componentProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Module;Ldagger/internal/Provider;)Lcom/sightcall/livetranslation/live/LiveSentencesComponent_Module_ProvideCoordinatorImplFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Module;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/live/LiveSentencesComponent;",
            ">;)",
            "Lcom/sightcall/livetranslation/live/LiveSentencesComponent_Module_ProvideCoordinatorImplFactory;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/livetranslation/live/LiveSentencesComponent_Module_ProvideCoordinatorImplFactory;

    invoke-direct {v0, p0, p1}, Lcom/sightcall/livetranslation/live/LiveSentencesComponent_Module_ProvideCoordinatorImplFactory;-><init>(Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Module;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static provideCoordinatorImpl(Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Module;Lcom/sightcall/livetranslation/live/LiveSentencesComponent;)Lcom/sightcall/livetranslation/live/LiveSentencesCoordinatorImpl;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Module;->provideCoordinatorImpl(Lcom/sightcall/livetranslation/live/LiveSentencesComponent;)Lcom/sightcall/livetranslation/live/LiveSentencesCoordinatorImpl;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Lcom/sightcall/livetranslation/live/LiveSentencesCoordinatorImpl;
    .locals 1

    iget-object v0, p0, Lcom/sightcall/livetranslation/live/LiveSentencesComponent_Module_ProvideCoordinatorImplFactory;->module:Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Module;

    iget-object p0, p0, Lcom/sightcall/livetranslation/live/LiveSentencesComponent_Module_ProvideCoordinatorImplFactory;->componentProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/livetranslation/live/LiveSentencesComponent;

    invoke-static {v0, p0}, Lcom/sightcall/livetranslation/live/LiveSentencesComponent_Module_ProvideCoordinatorImplFactory;->provideCoordinatorImpl(Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Module;Lcom/sightcall/livetranslation/live/LiveSentencesComponent;)Lcom/sightcall/livetranslation/live/LiveSentencesCoordinatorImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/sightcall/livetranslation/live/LiveSentencesComponent_Module_ProvideCoordinatorImplFactory;->get()Lcom/sightcall/livetranslation/live/LiveSentencesCoordinatorImpl;

    move-result-object p0

    return-object p0
.end method
