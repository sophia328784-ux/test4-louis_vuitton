.class final Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$createStandaloneDropTimer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->createStandaloneDropTimer(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandaloneDrawDrop;)Lio/reactivex/rxjava3/disposables/Disposable;
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
.field final synthetic $annotationPosition:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;

.field final synthetic $mode:Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandaloneDrawDrop;

.field final synthetic this$0:Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;


# direct methods
.method public constructor <init>(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandaloneDrawDrop;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$createStandaloneDropTimer$1;->this$0:Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;

    iput-object p2, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$createStandaloneDropTimer$1;->$annotationPosition:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;

    iput-object p3, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$createStandaloneDropTimer$1;->$mode:Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandaloneDrawDrop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Long;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Local;->INSTANCE:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Local;

    iget-object v0, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$createStandaloneDropTimer$1;->this$0:Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;

    invoke-static {v0}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->access$getAnnotationId$p(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;

    move-result-object v0

    iget-object v1, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$createStandaloneDropTimer$1;->this$0:Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;

    invoke-virtual {v0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;->inc()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->access$setAnnotationId$p(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;)V

    iget-object v1, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$createStandaloneDropTimer$1;->$annotationPosition:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$createStandaloneDropTimer$1;->$mode:Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandaloneDrawDrop;

    invoke-static {p1, v0, v1, p0}, Lcom/sightcall/advancedannotations/domain/event/StandaloneEventInterpreterKt;->completeStandaloneDrop(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandaloneDrawDrop;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$createStandaloneDropTimer$1;->apply(Ljava/lang/Long;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    move-result-object p0

    return-object p0
.end method
