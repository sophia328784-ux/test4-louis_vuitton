.class public final Landroidx/navigationevent/compose/NavigationEventHandlerKt$NavigationEventHandler$lambda$7$0$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "androidx/navigationevent/compose/NavigationEventHandlerKt$NavigationEventHandler$lambda$7$0$$inlined$onDispose$1",
        "Landroidx/compose/runtime/DisposableEffectResult;",
        "runtime"
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
.field public final synthetic a:Landroidx/navigationevent/compose/ComposeNavigationEventHandler;

.field public final synthetic b:Landroidx/navigationevent/compose/NavigationEventState;


# direct methods
.method public constructor <init>(Landroidx/navigationevent/compose/ComposeNavigationEventHandler;Landroidx/navigationevent/compose/NavigationEventState;)V
    .locals 0

    iput-object p1, p0, Landroidx/navigationevent/compose/NavigationEventHandlerKt$NavigationEventHandler$lambda$7$0$$inlined$onDispose$1;->a:Landroidx/navigationevent/compose/ComposeNavigationEventHandler;

    iput-object p2, p0, Landroidx/navigationevent/compose/NavigationEventHandlerKt$NavigationEventHandler$lambda$7$0$$inlined$onDispose$1;->b:Landroidx/navigationevent/compose/NavigationEventState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    iget-object v0, p0, Landroidx/navigationevent/compose/NavigationEventHandlerKt$NavigationEventHandler$lambda$7$0$$inlined$onDispose$1;->a:Landroidx/navigationevent/compose/ComposeNavigationEventHandler;

    invoke-virtual {v0}, Landroidx/navigationevent/NavigationEventHandler;->h()V

    iget-object p0, p0, Landroidx/navigationevent/compose/NavigationEventHandlerKt$NavigationEventHandler$lambda$7$0$$inlined$onDispose$1;->b:Landroidx/navigationevent/compose/NavigationEventState;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/navigationevent/compose/NavigationEventState;->e:Landroidx/navigationevent/NavigationEventHandler;

    return-void
.end method
