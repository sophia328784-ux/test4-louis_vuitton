.class public final Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideViewHolder$livetranslation_releaseFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final interactorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor<",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;",
            ">;>;"
        }
    .end annotation
.end field

.field private final module:Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;

.field private final rootViewProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;Ldagger/internal/Provider;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;",
            "Ldagger/internal/Provider<",
            "Landroid/view/ViewGroup;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor<",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideViewHolder$livetranslation_releaseFactory;->module:Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;

    iput-object p2, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideViewHolder$livetranslation_releaseFactory;->rootViewProvider:Ldagger/internal/Provider;

    iput-object p3, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideViewHolder$livetranslation_releaseFactory;->interactorProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideViewHolder$livetranslation_releaseFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;",
            "Ldagger/internal/Provider<",
            "Landroid/view/ViewGroup;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor<",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;",
            ">;>;)",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideViewHolder$livetranslation_releaseFactory;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideViewHolder$livetranslation_releaseFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideViewHolder$livetranslation_releaseFactory;-><init>(Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static provideViewHolder$livetranslation_release(Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;Landroid/view/ViewGroup;Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;)Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;",
            "Landroid/view/ViewGroup;",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor<",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;",
            ">;)",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;->provideViewHolder$livetranslation_release(Landroid/view/ViewGroup;Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;)Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;
    .locals 2

    iget-object v0, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideViewHolder$livetranslation_releaseFactory;->module:Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;

    iget-object v1, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideViewHolder$livetranslation_releaseFactory;->rootViewProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideViewHolder$livetranslation_releaseFactory;->interactorProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;

    invoke-static {v0, v1, p0}, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideViewHolder$livetranslation_releaseFactory;->provideViewHolder$livetranslation_release(Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;Landroid/view/ViewGroup;Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;)Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideViewHolder$livetranslation_releaseFactory;->get()Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;

    move-result-object p0

    return-object p0
.end method
