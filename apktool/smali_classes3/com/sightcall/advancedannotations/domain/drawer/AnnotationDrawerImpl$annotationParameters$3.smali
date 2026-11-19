.class final Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$annotationParameters$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;-><init>(Landroid/view/ViewGroup;Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParser$Out;Lcom/sightcall/advancedannotations/domain/event/EventInterpreter$Out;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector;Lio/reactivex/rxjava3/core/Scheduler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;


# direct methods
.method public constructor <init>(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$annotationParameters$3;->this$0:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;->getSenderId()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;

    move-result-object v0

    sget-object v1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Local;->INSTANCE:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Local;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$annotationParameters$3;->this$0:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;

    invoke-static {p0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;->access$getLocalAnnotationList$p(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;)Ljava/util/Map;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;-><init>(Ljava/util/Map;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;)V

    return-object v0

    :cond_0
    instance-of v0, v0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Remote;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$annotationParameters$3;->this$0:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;

    invoke-static {p0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;->access$getRemoteAnnotationList$p(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;->getSenderId()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast v1, Ljava/util/Map;

    new-instance p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;

    invoke-direct {p0, v1, p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;-><init>(Ljava/util/Map;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;)V

    return-object p0

    :cond_2
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    check-cast p1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;

    invoke-virtual {p0, p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$annotationParameters$3;->apply(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;

    move-result-object p0

    return-object p0
.end method
