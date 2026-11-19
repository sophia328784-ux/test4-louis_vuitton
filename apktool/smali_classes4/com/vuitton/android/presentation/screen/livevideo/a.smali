.class public final synthetic Lcom/vuitton/android/presentation/screen/livevideo/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/livevideo/a;->b:Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/livevideo/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object v0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;->q:Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$Companion;

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/2addr p2, v2

    invoke-interface {p1, p2, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_6

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {p1}, Lcom/vuitton/android/presentation/compose/components/LifecycleEventKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/Lifecycle$Event;

    move-result-object p2

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/livevideo/a;->b:Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;->B()Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;

    iget-boolean v6, v0, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;->b:Z

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;->c:Ljava/lang/String;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/Context;

    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v0, v5

    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v0, v5

    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v0, v5

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v0, :cond_1

    if-ne v5, v7, :cond_2

    :cond_1
    new-instance v0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$onCreate$1$1$1;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$onCreate$1$1$1;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;Landroid/content/Context;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v5, v0

    :cond_2
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {p1, v1, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v0

    invoke-interface {p1, v4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v0, :cond_3

    if-ne v1, v7, :cond_4

    :cond_3
    new-instance v1, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$onCreate$1$2$1;

    invoke-direct {v1, p2, v4, v3}, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$onCreate$1$2$1;-><init>(Landroidx/lifecycle/Lifecycle$Event;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {p1, p2, v1}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;

    iget-object p2, p2, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;->d:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz p2, :cond_5

    new-instance v0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$onCreate$1$3;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/livevideo/a;->c:Ljava/lang/String;

    invoke-direct {v0, v2, p0, v6}, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$onCreate$1$3;-><init>(Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;Ljava/lang/String;Z)V

    invoke-interface {p2, v0}, Landroidx/media3/common/Player;->Y(Landroidx/media3/common/Player$Listener;)V

    :cond_5
    new-instance p0, Lrg;

    const/4 p2, 0x5

    invoke-direct {p0, v4, v2, v6, p2}, Lrg;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    const p2, 0x53893820

    invoke-static {p2, p0, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object p0

    const/16 p2, 0x30

    invoke-static {v3, p0, p1, p2}, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_6
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
