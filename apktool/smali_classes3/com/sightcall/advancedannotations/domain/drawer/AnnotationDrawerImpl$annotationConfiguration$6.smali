.class final Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$annotationConfiguration$6;
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

    iput-object p1, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$annotationConfiguration$6;->this$0:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    check-cast p1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;

    invoke-virtual {p0, p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$annotationConfiguration$6;->apply(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final apply(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;)Lkotlin/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/util/Map<",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;",
            "Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;",
            ">;",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;->getCommand()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;->getResourceId()Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;->getValue()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sightcall/advancedannotations/domain/settings/SettingKt;->getPointerSetting()Lcom/sightcall/advancedannotations/domain/settings/Setting;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;->getMap()Ljava/util/Map;

    move-result-object v1

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$annotationConfiguration$6;->this$0:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;->getCommand()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;->access$createConfiguration(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;Lcom/sightcall/advancedannotations/domain/settings/Setting;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;

    move-result-object p0

    new-instance p1, Lkotlin/Pair;

    invoke-direct {p1, v1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
