.class final Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$createStandaloneDropTimer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


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
.field final synthetic this$0:Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;


# direct methods
.method public constructor <init>(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$createStandaloneDropTimer$2;->this$0:Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$createStandaloneDropTimer$2;->this$0:Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;

    sget-object p1, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$DropState$Detected;->INSTANCE:Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$DropState$Detected;

    invoke-static {p0, p1}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->access$setDropState$p(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$DropState;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    invoke-virtual {p0, p1}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$createStandaloneDropTimer$2;->accept(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;)V

    return-void
.end method
