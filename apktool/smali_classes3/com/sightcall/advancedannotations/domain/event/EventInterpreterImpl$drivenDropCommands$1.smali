.class final Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$drivenDropCommands$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


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
        "Lio/reactivex/rxjava3/functions/Predicate;"
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
.field public static final INSTANCE:Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$drivenDropCommands$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$drivenDropCommands$1<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$drivenDropCommands$1;

    invoke-direct {v0}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$drivenDropCommands$1;-><init>()V

    sput-object v0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$drivenDropCommands$1;->INSTANCE:Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$drivenDropCommands$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 17
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$drivenDropCommands$1;->test(Lkotlin/Pair;)Z

    move-result p0

    return p0
.end method

.method public final test(Lkotlin/Pair;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+",
            "Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;",
            "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$Mode;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lkotlin/Pair;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$Mode;

    invoke-virtual {p0}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$Mode;->getMode()Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration;

    move-result-object p0

    instance-of p0, p0, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;

    return p0
.end method
