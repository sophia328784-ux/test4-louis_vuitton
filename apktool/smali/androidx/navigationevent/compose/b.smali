.class public final synthetic Landroidx/navigationevent/compose/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Landroidx/navigationevent/compose/NavigationEventState;

.field public final synthetic c:Landroidx/navigationevent/compose/ComposeNavigationEventHandler;

.field public final synthetic d:Landroidx/navigationevent/NavigationEventDispatcher;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigationevent/compose/NavigationEventState;Landroidx/navigationevent/compose/ComposeNavigationEventHandler;Landroidx/navigationevent/NavigationEventDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigationevent/compose/b;->b:Landroidx/navigationevent/compose/NavigationEventState;

    iput-object p2, p0, Landroidx/navigationevent/compose/b;->c:Landroidx/navigationevent/compose/ComposeNavigationEventHandler;

    iput-object p3, p0, Landroidx/navigationevent/compose/b;->d:Landroidx/navigationevent/NavigationEventDispatcher;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    iget-object p1, p0, Landroidx/navigationevent/compose/b;->b:Landroidx/navigationevent/compose/NavigationEventState;

    iget-object v0, p1, Landroidx/navigationevent/compose/NavigationEventState;->e:Landroidx/navigationevent/NavigationEventHandler;

    iget-object v1, p0, Landroidx/navigationevent/compose/b;->c:Landroidx/navigationevent/compose/ComposeNavigationEventHandler;

    if-nez v0, :cond_0

    iput-object v1, p1, Landroidx/navigationevent/compose/NavigationEventState;->e:Landroidx/navigationevent/NavigationEventHandler;

    iget-object p0, p0, Landroidx/navigationevent/compose/b;->d:Landroidx/navigationevent/NavigationEventDispatcher;

    invoke-static {p0, v1}, Landroidx/navigationevent/NavigationEventDispatcher;->a(Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/navigationevent/NavigationEventHandler;)V

    new-instance p0, Landroidx/navigationevent/compose/NavigationEventHandlerKt$NavigationEventHandler$lambda$7$0$$inlined$onDispose$1;

    invoke-direct {p0, v1, p1}, Landroidx/navigationevent/compose/NavigationEventHandlerKt$NavigationEventHandler$lambda$7$0$$inlined$onDispose$1;-><init>(Landroidx/navigationevent/compose/ComposeNavigationEventHandler;Landroidx/navigationevent/compose/NavigationEventState;)V

    return-object p0

    :cond_0
    const-string p0, "\' is already registered with a NavigationEventHandler \'"

    const-string v0, "\'."

    const-string v2, "NavigationEventState \'"

    invoke-static {p1, p0, v1, v0, v2}, Lct0;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
