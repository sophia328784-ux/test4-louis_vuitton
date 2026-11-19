.class public final Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideParserImpl$advancedannotations_releaseFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final eventInterpreterProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/domain/event/EventInterpreter$Out;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;

.field private final senderIdGetterProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;Ldagger/internal/Provider;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/domain/event/EventInterpreter$Out;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideParserImpl$advancedannotations_releaseFactory;->module:Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;

    iput-object p2, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideParserImpl$advancedannotations_releaseFactory;->eventInterpreterProvider:Ldagger/internal/Provider;

    iput-object p3, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideParserImpl$advancedannotations_releaseFactory;->senderIdGetterProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideParserImpl$advancedannotations_releaseFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/domain/event/EventInterpreter$Out;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;",
            ">;)",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideParserImpl$advancedannotations_releaseFactory;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideParserImpl$advancedannotations_releaseFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideParserImpl$advancedannotations_releaseFactory;-><init>(Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static provideParserImpl$advancedannotations_release(Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;Lcom/sightcall/advancedannotations/domain/event/EventInterpreter$Out;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;)Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;->provideParserImpl$advancedannotations_release(Lcom/sightcall/advancedannotations/domain/event/EventInterpreter$Out;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;)Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->c(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;
    .locals 2

    iget-object v0, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideParserImpl$advancedannotations_releaseFactory;->module:Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;

    iget-object v1, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideParserImpl$advancedannotations_releaseFactory;->eventInterpreterProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sightcall/advancedannotations/domain/event/EventInterpreter$Out;

    iget-object p0, p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideParserImpl$advancedannotations_releaseFactory;->senderIdGetterProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;

    invoke-static {v0, v1, p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideParserImpl$advancedannotations_releaseFactory;->provideParserImpl$advancedannotations_release(Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule;Lcom/sightcall/advancedannotations/domain/event/EventInterpreter$Out;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;)Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsModule_ProvideParserImpl$advancedannotations_releaseFactory;->get()Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParserImpl;

    move-result-object p0

    return-object p0
.end method
