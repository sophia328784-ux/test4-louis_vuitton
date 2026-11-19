.class final Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$annotationConfiguration$4;
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

    iput-object p1, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$annotationConfiguration$4;->this$0:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 121
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$annotationConfiguration$4;->apply(Lkotlin/Pair;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final apply(Lkotlin/Pair;)Lkotlin/Pair;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+",
            "Lkotlin/Pair<",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;",
            "+",
            "Ljava/util/List<",
            "Lcom/sightcall/advancedannotations/domain/settings/Setting;",
            ">;>;",
            "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$Mode;",
            ">;)",
            "Lkotlin/Pair<",
            "Ljava/util/Map<",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;",
            "Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;",
            ">;",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lkotlin/Pair;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lkotlin/Pair;

    iget-object v0, v0, Lkotlin/Pair;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$Mode;

    iget-object v2, v1, Lkotlin/Pair;->b:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;

    iget-object v1, v1, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$Mode;->getWriteMode()Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$UpdateCapability;

    move-result-object v0

    sget-object v3, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$UpdateCapability;->Standalone:Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$UpdateCapability;

    const/4 v4, 0x0

    if-ne v0, v3, :cond_0

    invoke-virtual {v2}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;->getCommand()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;

    move-result-object v5

    new-instance v15, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;

    const/16 v0, 0x2d

    invoke-direct {v15, v0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;-><init>(I)V

    const/16 v19, 0x1dff

    const/16 v20, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v5 .. v20}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;->copy$default(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;ZLcom/sightcall/advancedannotations/domain/drawer/AnnotationId;ZZLkotlin/jvm/functions/Function0;Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationRotation;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/TextParameters;ILjava/lang/Object;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v2, v4, v0, v3, v4}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;->copy$default(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;Ljava/util/Map;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;ILjava/lang/Object;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;

    move-result-object v2

    :cond_0
    invoke-virtual {v2}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;->getMap()Ljava/util/Map;

    move-result-object v0

    move-object/from16 v3, p0

    iget-object v3, v3, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$annotationConfiguration$4;->this$0:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;

    invoke-virtual {v2}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;->getCommand()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;

    move-result-object v5

    invoke-virtual {v2}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;->getCommand()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;->getResourceId()Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;->getValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/sightcall/advancedannotations/domain/settings/Setting;

    :cond_1
    invoke-static {v3, v5, v4}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;->access$createConfiguration(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;Lcom/sightcall/advancedannotations/domain/settings/Setting;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;

    move-result-object v1

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method
