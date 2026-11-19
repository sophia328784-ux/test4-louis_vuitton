.class public final Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideRepository$advancedannotations_releaseFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/sightcall/advancedannotations/domain/AdvancedAnnotationsRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private final apiProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/data/API;",
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

.field private final module:Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;

.field private final urlProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/data/API;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;",
            ">;",
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideRepository$advancedannotations_releaseFactory;->module:Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;

    iput-object p2, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideRepository$advancedannotations_releaseFactory;->apiProvider:Ldagger/internal/Provider;

    iput-object p3, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideRepository$advancedannotations_releaseFactory;->urlProvider:Ldagger/internal/Provider;

    iput-object p4, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideRepository$advancedannotations_releaseFactory;->contextProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideRepository$advancedannotations_releaseFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/data/API;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;",
            ">;",
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideRepository$advancedannotations_releaseFactory;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideRepository$advancedannotations_releaseFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideRepository$advancedannotations_releaseFactory;-><init>(Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static provideRepository$advancedannotations_release(Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;Lcom/sightcall/advancedannotations/data/API;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;Landroid/content/Context;)Lcom/sightcall/advancedannotations/domain/AdvancedAnnotationsRepository;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;->provideRepository$advancedannotations_release(Lcom/sightcall/advancedannotations/data/API;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;Landroid/content/Context;)Lcom/sightcall/advancedannotations/domain/AdvancedAnnotationsRepository;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Lcom/sightcall/advancedannotations/domain/AdvancedAnnotationsRepository;
    .locals 3

    iget-object v0, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideRepository$advancedannotations_releaseFactory;->module:Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;

    iget-object v1, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideRepository$advancedannotations_releaseFactory;->apiProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sightcall/advancedannotations/data/API;

    iget-object v2, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideRepository$advancedannotations_releaseFactory;->urlProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;

    iget-object p0, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideRepository$advancedannotations_releaseFactory;->contextProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {v0, v1, v2, p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideRepository$advancedannotations_releaseFactory;->provideRepository$advancedannotations_release(Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;Lcom/sightcall/advancedannotations/data/API;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;Landroid/content/Context;)Lcom/sightcall/advancedannotations/domain/AdvancedAnnotationsRepository;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideRepository$advancedannotations_releaseFactory;->get()Lcom/sightcall/advancedannotations/domain/AdvancedAnnotationsRepository;

    move-result-object p0

    return-object p0
.end method
