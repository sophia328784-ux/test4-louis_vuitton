.class final Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$touchEvents$1;
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
.field public static final INSTANCE:Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$touchEvents$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$touchEvents$1<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$touchEvents$1;

    invoke-direct {v0}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$touchEvents$1;-><init>()V

    sput-object v0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$touchEvents$1;->INSTANCE:Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$touchEvents$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Landroid/view/MotionEvent;)Lcom/sightcall/libraries/rx/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            ")",
            "Lcom/sightcall/libraries/rx/Optional<",
            "Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/sightcall/libraries/rx/Optional;->Companion:Lcom/sightcall/libraries/rx/Optional$Companion;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Move;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {v1, v0, p1}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Move;-><init>(II)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Up;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {v1, v0, p1}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Up;-><init>(II)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Down;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {v1, v0, p1}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Down;-><init>(II)V

    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Lcom/sightcall/libraries/rx/Optional$Companion;->ofNullable(Ljava/lang/Object;)Lcom/sightcall/libraries/rx/Optional;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 80
    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p0, p1}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$touchEvents$1;->apply(Landroid/view/MotionEvent;)Lcom/sightcall/libraries/rx/Optional;

    move-result-object p0

    return-object p0
.end method
