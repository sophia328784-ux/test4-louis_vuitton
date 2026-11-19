.class final Landroidx/navigationevent/compose/ComposeNavigationEventHandler;
.super Landroidx/navigationevent/NavigationEventHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/navigationevent/NavigationEventInfo;",
        ">",
        "Landroidx/navigationevent/NavigationEventHandler<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0003B%\u0012\u0006\u0010\u0004\u001a\u00028\u0000\u0012\u0014\u0008\u0002\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroidx/navigationevent/compose/ComposeNavigationEventHandler;",
        "Landroidx/navigationevent/NavigationEventInfo;",
        "T",
        "Landroidx/navigationevent/NavigationEventHandler;",
        "initialInfo",
        "Lkotlin/Function1;",
        "Landroidx/navigationevent/NavigationEventTransitionState;",
        "",
        "onTransitionStateChanged",
        "<init>",
        "(Landroidx/navigationevent/NavigationEventInfo;Lkotlin/jvm/functions/Function1;)V",
        "navigationevent-compose"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final h:Lkotlin/jvm/functions/Function1;

.field public i:Lkotlin/jvm/functions/Function0;

.field public j:Lkotlin/jvm/functions/Function0;

.field public k:Lkotlin/jvm/functions/Function0;

.field public l:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Landroidx/navigationevent/NavigationEventInfo;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/navigationevent/NavigationEventTransitionState;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroidx/navigationevent/NavigationEventHandler;-><init>(Landroidx/navigationevent/NavigationEventInfo;ZZ)V

    iput-object p2, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->h:Lkotlin/jvm/functions/Function1;

    new-instance p1, Loo;

    const/16 p2, 0x15

    invoke-direct {p1, p2}, Loo;-><init>(I)V

    iput-object p1, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->i:Lkotlin/jvm/functions/Function0;

    new-instance p1, Loo;

    const/16 p2, 0x16

    invoke-direct {p1, p2}, Loo;-><init>(I)V

    iput-object p1, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->j:Lkotlin/jvm/functions/Function0;

    new-instance p1, Loo;

    const/16 p2, 0x17

    invoke-direct {p1, p2}, Loo;-><init>(I)V

    iput-object p1, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->k:Lkotlin/jvm/functions/Function0;

    new-instance p1, Loo;

    const/16 p2, 0x18

    invoke-direct {p1, p2}, Loo;-><init>(I)V

    iput-object p1, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->l:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/navigationevent/NavigationEventInfo;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 43
    new-instance p2, Lno;

    const/16 p3, 0x1d

    invoke-direct {p2, p3}, Lno;-><init>(I)V

    .line 44
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;-><init>(Landroidx/navigationevent/NavigationEventInfo;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    iget-object v0, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->h:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Landroidx/navigationevent/NavigationEventHandler;->d:Landroidx/navigationevent/NavigationEventTransitionState;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->k:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->h:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Landroidx/navigationevent/NavigationEventHandler;->d:Landroidx/navigationevent/NavigationEventTransitionState;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->l:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final e(Landroidx/navigationevent/NavigationEvent;)V
    .locals 0

    iget-object p1, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->h:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Landroidx/navigationevent/NavigationEventHandler;->d:Landroidx/navigationevent/NavigationEventTransitionState;

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final f(Landroidx/navigationevent/NavigationEvent;)V
    .locals 0

    iget-object p1, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->h:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Landroidx/navigationevent/NavigationEventHandler;->d:Landroidx/navigationevent/NavigationEventTransitionState;

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->h:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Landroidx/navigationevent/NavigationEventHandler;->d:Landroidx/navigationevent/NavigationEventTransitionState;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->i:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
