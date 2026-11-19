.class final Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$touchCommands$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;-><init>(Landroid/view/ViewGroup;Lio/reactivex/rxjava3/core/Scheduler;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector;Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;Z)V
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
.field final synthetic this$0:Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;


# direct methods
.method public constructor <init>(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$touchCommands$1;->this$0:Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lkotlin/Pair;)Lcom/sightcall/libraries/rx/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+",
            "Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;",
            "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$Mode;",
            ">;)",
            "Lcom/sightcall/libraries/rx/Optional<",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;

    iget-object p1, p1, Lkotlin/Pair;->c:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$Mode;

    sget-object v1, Lcom/sightcall/libraries/rx/Optional;->Companion:Lcom/sightcall/libraries/rx/Optional$Companion;

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$Mode;->getMode()Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration;

    move-result-object p1

    instance-of v2, p1, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenPointer;

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$touchCommands$1;->this$0:Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;

    check-cast p1, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenPointer;

    invoke-static {p0, v0, p1}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->access$handleDrivenPointerModeEvent(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenPointer;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v2, p1, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDraw;

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$touchCommands$1;->this$0:Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;

    invoke-virtual {p0}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->isEphemeral()Z

    move-result v2

    check-cast p1, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDraw;

    invoke-static {p0, v0, v2, p1}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->access$handleDrivenDrawModeEvent(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;ZLcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDraw;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v2, p1, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandalonePointer;

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$touchCommands$1;->this$0:Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;

    check-cast p1, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandalonePointer;

    invoke-static {p0, v0, p1}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->access$handleStandalonePointerModeEvent(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandalonePointer;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    move-result-object p0

    goto :goto_0

    :cond_2
    instance-of v2, p1, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandaloneDrawDrop;

    if-eqz v2, :cond_3

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$touchCommands$1;->this$0:Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;

    check-cast p1, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandaloneDrawDrop;

    invoke-static {p0, v0, p1}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->access$handleStandaloneDrawDropModeEvent(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandaloneDrawDrop;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v1, p0}, Lcom/sightcall/libraries/rx/Optional$Companion;->ofNullable(Ljava/lang/Object;)Lcom/sightcall/libraries/rx/Optional;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 82
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$touchCommands$1;->apply(Lkotlin/Pair;)Lcom/sightcall/libraries/rx/Optional;

    move-result-object p0

    return-object p0
.end method
