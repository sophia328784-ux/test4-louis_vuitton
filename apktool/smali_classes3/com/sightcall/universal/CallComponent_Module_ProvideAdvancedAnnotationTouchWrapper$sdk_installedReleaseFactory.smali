.class public final Lcom/sightcall/universal/CallComponent_Module_ProvideAdvancedAnnotationTouchWrapper$sdk_installedReleaseFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final advancedAnnotationsAPIProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/sightcall/universal/CallComponent$Module;

.field private final sessionConfigProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/universal/model/Config;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sightcall/universal/CallComponent$Module;Ldagger/internal/Provider;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/CallComponent$Module;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/universal/model/Config;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/CallComponent_Module_ProvideAdvancedAnnotationTouchWrapper$sdk_installedReleaseFactory;->module:Lcom/sightcall/universal/CallComponent$Module;

    iput-object p2, p0, Lcom/sightcall/universal/CallComponent_Module_ProvideAdvancedAnnotationTouchWrapper$sdk_installedReleaseFactory;->advancedAnnotationsAPIProvider:Ldagger/internal/Provider;

    iput-object p3, p0, Lcom/sightcall/universal/CallComponent_Module_ProvideAdvancedAnnotationTouchWrapper$sdk_installedReleaseFactory;->sessionConfigProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Lcom/sightcall/universal/CallComponent$Module;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/sightcall/universal/CallComponent_Module_ProvideAdvancedAnnotationTouchWrapper$sdk_installedReleaseFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/CallComponent$Module;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/universal/model/Config;",
            ">;)",
            "Lcom/sightcall/universal/CallComponent_Module_ProvideAdvancedAnnotationTouchWrapper$sdk_installedReleaseFactory;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/universal/CallComponent_Module_ProvideAdvancedAnnotationTouchWrapper$sdk_installedReleaseFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/sightcall/universal/CallComponent_Module_ProvideAdvancedAnnotationTouchWrapper$sdk_installedReleaseFactory;-><init>(Lcom/sightcall/universal/CallComponent$Module;Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static provideAdvancedAnnotationTouchWrapper$sdk_installedRelease(Lcom/sightcall/universal/CallComponent$Module;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;Lcom/sightcall/universal/model/Config;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/universal/CallComponent$Module;->provideAdvancedAnnotationTouchWrapper$sdk_installedRelease(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;Lcom/sightcall/universal/model/Config;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/CallComponent_Module_ProvideAdvancedAnnotationTouchWrapper$sdk_installedReleaseFactory;->module:Lcom/sightcall/universal/CallComponent$Module;

    iget-object v1, p0, Lcom/sightcall/universal/CallComponent_Module_ProvideAdvancedAnnotationTouchWrapper$sdk_installedReleaseFactory;->advancedAnnotationsAPIProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;

    iget-object p0, p0, Lcom/sightcall/universal/CallComponent_Module_ProvideAdvancedAnnotationTouchWrapper$sdk_installedReleaseFactory;->sessionConfigProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/model/Config;

    invoke-static {v0, v1, p0}, Lcom/sightcall/universal/CallComponent_Module_ProvideAdvancedAnnotationTouchWrapper$sdk_installedReleaseFactory;->provideAdvancedAnnotationTouchWrapper$sdk_installedRelease(Lcom/sightcall/universal/CallComponent$Module;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;Lcom/sightcall/universal/model/Config;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/sightcall/universal/CallComponent_Module_ProvideAdvancedAnnotationTouchWrapper$sdk_installedReleaseFactory;->get()Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    move-result-object p0

    return-object p0
.end method
