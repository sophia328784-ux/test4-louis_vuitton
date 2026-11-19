.class final Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$deleteAllCommands$1;
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


# static fields
.field public static final INSTANCE:Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$deleteAllCommands$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$deleteAllCommands$1<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$deleteAllCommands$1;

    invoke-direct {v0}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$deleteAllCommands$1;-><init>()V

    sput-object v0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$deleteAllCommands$1;->INSTANCE:Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$deleteAllCommands$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lkotlin/Unit;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Local;->INSTANCE:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Local;

    sget-object p1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$All;->INSTANCE:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$All;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/sightcall/advancedannotations/domain/event/DrivenEventInterpreterKt;->delete(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;Z)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$deleteAllCommands$1;->apply(Lkotlin/Unit;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    move-result-object p0

    return-object p0
.end method
