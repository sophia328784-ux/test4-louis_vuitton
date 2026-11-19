.class public final synthetic Landroidx/navigationevent/compose/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Landroidx/navigationevent/compose/ComposeNavigationEventHandler;

.field public final synthetic c:Z

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:Z

.field public final synthetic g:Lkotlin/jvm/functions/Function0;

.field public final synthetic h:Lkotlin/jvm/functions/Function0;

.field public final synthetic i:Landroidx/navigationevent/compose/NavigationEventState;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigationevent/compose/ComposeNavigationEventHandler;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/navigationevent/compose/NavigationEventState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigationevent/compose/a;->b:Landroidx/navigationevent/compose/ComposeNavigationEventHandler;

    iput-boolean p2, p0, Landroidx/navigationevent/compose/a;->c:Z

    iput-object p3, p0, Landroidx/navigationevent/compose/a;->d:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Landroidx/navigationevent/compose/a;->e:Lkotlin/jvm/functions/Function0;

    iput-boolean p5, p0, Landroidx/navigationevent/compose/a;->f:Z

    iput-object p6, p0, Landroidx/navigationevent/compose/a;->g:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Landroidx/navigationevent/compose/a;->h:Lkotlin/jvm/functions/Function0;

    iput-object p8, p0, Landroidx/navigationevent/compose/a;->i:Landroidx/navigationevent/compose/NavigationEventState;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/navigationevent/compose/a;->b:Landroidx/navigationevent/compose/ComposeNavigationEventHandler;

    iget-boolean v1, v0, Landroidx/navigationevent/NavigationEventHandler;->f:Z

    iget-boolean v2, p0, Landroidx/navigationevent/compose/a;->c:Z

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v2, v0, Landroidx/navigationevent/NavigationEventHandler;->f:Z

    iget-object v1, v0, Landroidx/navigationevent/NavigationEventHandler;->g:Landroidx/navigationevent/NavigationEventDispatcher;

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroidx/navigationevent/NavigationEventDispatcher;->e:Landroidx/navigationevent/NavigationEventProcessor;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/navigationevent/NavigationEventProcessor;->b()V

    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/navigationevent/compose/a;->d:Lkotlin/jvm/functions/Function0;

    iput-object v1, v0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->i:Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Landroidx/navigationevent/compose/a;->e:Lkotlin/jvm/functions/Function0;

    iput-object v1, v0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->j:Lkotlin/jvm/functions/Function0;

    iget-boolean v1, p0, Landroidx/navigationevent/compose/a;->f:Z

    invoke-virtual {v0, v1}, Landroidx/navigationevent/NavigationEventHandler;->i(Z)V

    iget-object v1, p0, Landroidx/navigationevent/compose/a;->g:Lkotlin/jvm/functions/Function0;

    iput-object v1, v0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->k:Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Landroidx/navigationevent/compose/a;->h:Lkotlin/jvm/functions/Function0;

    iput-object v1, v0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->l:Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Landroidx/navigationevent/compose/a;->i:Landroidx/navigationevent/compose/NavigationEventState;

    iget-object v1, p0, Landroidx/navigationevent/compose/NavigationEventState;->c:Landroidx/compose/runtime/MutableState;

    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigationevent/NavigationEventInfo;

    iget-object v2, p0, Landroidx/navigationevent/compose/NavigationEventState;->b:Landroidx/compose/runtime/MutableState;

    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object p0, p0, Landroidx/navigationevent/compose/NavigationEventState;->d:Landroidx/compose/runtime/MutableState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v0, Landroidx/navigationevent/NavigationEventHandler;->a:Landroidx/navigationevent/NavigationEventInfo;

    iput-object v2, v0, Landroidx/navigationevent/NavigationEventHandler;->b:Ljava/util/List;

    iput-object p0, v0, Landroidx/navigationevent/NavigationEventHandler;->c:Ljava/util/List;

    iget-object p0, v0, Landroidx/navigationevent/NavigationEventHandler;->g:Landroidx/navigationevent/NavigationEventDispatcher;

    if-eqz p0, :cond_2

    iget-object p0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->e:Landroidx/navigationevent/NavigationEventProcessor;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v0}, Landroidx/navigationevent/NavigationEventProcessor;->d(Landroidx/navigationevent/NavigationEventHandler;)V

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
