.class public final synthetic Lkb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/main/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/main/MainActivity;I)V
    .locals 0

    iput p2, p0, Lkb0;->b:I

    iput-object p1, p0, Lkb0;->c:Lcom/vuitton/android/presentation/screen/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lkb0;->b:I

    iget-object p0, p0, Lkb0;->c:Lcom/vuitton/android/presentation/screen/main/MainActivity;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    check-cast p2, Ljava/lang/String;

    sget-object v0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->L:Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/main/MainActivity;->J()Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;

    move-result-object p0

    new-instance v0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent$NavigateToAppLink;

    invoke-direct {v0, p1, p2}, Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent$NavigateToAppLink;-><init>(Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;->F6(Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    check-cast p2, Lkotlin/Pair;

    sget-object v0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->L:Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/main/MainActivity;->J()Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;

    move-result-object p0

    new-instance v0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent$NavigateToDeepLink;

    invoke-direct {v0, p1, p2}, Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent$NavigateToDeepLink;-><init>(Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;Lkotlin/Pair;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;->F6(Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    check-cast p2, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;

    sget-object v0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->L:Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/main/MainActivity;->J()Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;

    move-result-object p0

    new-instance v0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent$NavigateToTopLevelDestination;

    invoke-direct {v0, p1, p2}, Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent$NavigateToTopLevelDestination;-><init>(Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;->F6(Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast p1, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    check-cast p2, Ljava/lang/String;

    sget-object v0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->L:Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/main/MainActivity;->J()Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;

    move-result-object p0

    new-instance v0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent$NavigateToAppLink;

    invoke-direct {v0, p1, p2}, Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent$NavigateToAppLink;-><init>(Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;->F6(Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    check-cast p1, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    check-cast p2, Lkotlin/Pair;

    sget-object v0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->L:Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/main/MainActivity;->J()Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;

    move-result-object p0

    new-instance v0, Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent$NavigateToDeepLink;

    invoke-direct {v0, p1, p2}, Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent$NavigateToDeepLink;-><init>(Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;Lkotlin/Pair;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;->F6(Lcom/vuitton/android/presentation/screen/main/models/MainActivityUiEvent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object v0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->L:Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;

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

    if-eqz p2, :cond_1

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance p2, Lcom/vuitton/android/presentation/screen/main/a;

    invoke-direct {p2, p0}, Lcom/vuitton/android/presentation/screen/main/a;-><init>(Lcom/vuitton/android/presentation/screen/main/MainActivity;)V

    const p0, -0x4e4adbbb

    invoke-static {p0, p2, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object p0

    const/16 p2, 0x30

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
