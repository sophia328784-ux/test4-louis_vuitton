.class final Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


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
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
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

    iput-object p1, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$1;->this$0:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 83
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$1;->accept(Lkotlin/Pair;)V

    return-void
.end method

.method public final accept(Lkotlin/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+",
            "Ljava/util/Map<",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;",
            "Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;",
            ">;",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    iget-object p1, p1, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast p1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;->getDelete()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$1;->this$0:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;->getAnnotationId()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;->access$handleDeleteAnnotationCommand(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;Ljava/util/Map;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;->getFadeOut()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$1;->this$0:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;->getAnnotationId()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;->getFadeOutCompletion()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-static {p0, v0, v1, p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;->access$handleFadeOutAnnotationCommand(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;Ljava/util/Map;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;Lkotlin/jvm/functions/Function0;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;->getAnnotationId()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;

    move-result-object v1

    instance-of v1, v1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;->getAnnotationId()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$1;->this$0:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;

    if-eqz v1, :cond_2

    invoke-static {p0, v1, p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;->access$update(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;->getAnnotationId()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;

    move-result-object v1

    check-cast v1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;

    invoke-static {p0, v0, v1, p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;->access$createAnnotation(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;Ljava/util/Map;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;)V

    :cond_3
    return-void
.end method
