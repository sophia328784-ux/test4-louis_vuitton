.class final Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$annotationCommands$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


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

    iput-object p1, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$annotationCommands$1;->this$0:Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$annotationCommands$1;->this$0:Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;

    invoke-static {p0}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->access$getDisposables$p(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;)Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    move-result-object p0

    invoke-static {p0, p1}, Lio/reactivex/rxjava3/kotlin/DisposableKt;->a(Lio/reactivex/rxjava3/disposables/CompositeDisposable;Lio/reactivex/rxjava3/disposables/Disposable;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-virtual {p0, p1}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$annotationCommands$1;->accept(Lio/reactivex/rxjava3/disposables/Disposable;)V

    return-void
.end method
