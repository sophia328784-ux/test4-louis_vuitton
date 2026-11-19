.class final Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$drivenDropCommands$3;
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

    iput-object p1, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$drivenDropCommands$3;->this$0:Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lkotlin/Pair;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+",
            "Lkotlin/Pair<",
            "+",
            "Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;",
            "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$Mode;",
            ">;+",
            "Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$State;",
            ">;)",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lkotlin/Pair;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lkotlin/Pair;

    iget-object p1, p1, Lkotlin/Pair;->c:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$State;

    iget-object v1, v0, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v1, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;

    iget-object v0, v0, Lkotlin/Pair;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$Mode;

    invoke-virtual {v0}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$Mode;->getMode()Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$drivenDropCommands$3;->this$0:Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;

    check-cast p1, Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$State$Ready;

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$State$Ready;->getSettings()Ljava/util/List;

    move-result-object p1

    invoke-static {p0, v1, v0, p1}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->access$handleDrivenDropModeEvent(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;Ljava/util/List;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 50
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$drivenDropCommands$3;->apply(Lkotlin/Pair;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    move-result-object p0

    return-object p0
.end method
