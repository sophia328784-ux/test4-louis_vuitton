.class public final synthetic Lmn0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;I)V
    .locals 0

    iput p4, p0, Lmn0;->b:I

    iput-object p1, p0, Lmn0;->c:Ljava/lang/String;

    iput-object p2, p0, Lmn0;->d:Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;

    iput-object p3, p0, Lmn0;->e:Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lmn0;->b:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lmn0;->e:Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;

    iget-object v4, p0, Lmn0;->d:Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;

    iget-object p0, p0, Lmn0;->c:Ljava/lang/String;

    const/4 v5, 0x1

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;->s:Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity$Companion;

    and-int/lit8 v0, p2, 0x3

    if-eq v0, v1, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/2addr p2, v5

    invoke-interface {p1, p2, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-array p2, v2, [Landroidx/navigation/Navigator;

    invoke-static {p2, p1}, Landroidx/navigation/compose/NavHostControllerKt;->a([Landroidx/navigation/Navigator;Landroidx/compose/runtime/Composer;)Landroidx/navigation/NavHostController;

    move-result-object p2

    new-instance v0, Lcom/vuitton/android/presentation/screen/personalselections/a;

    invoke-direct {v0, p0, v4, v3, p2}, Lcom/vuitton/android/presentation/screen/personalselections/a;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;Landroidx/navigation/NavHostController;)V

    const p0, -0x1922a007

    invoke-static {p0, v0, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object p0

    const/4 p2, 0x6

    invoke-static {p0, p1, p2}, Lcom/vuitton/android/presentation/compose/components/compositionlocalprovider/LVServiceLocalProviderKt;->a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;->s:Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity$Companion;

    and-int/lit8 v0, p2, 0x3

    if-eq v0, v1, :cond_2

    move v2, v5

    :cond_2
    and-int/2addr p2, v5

    invoke-interface {p1, p2, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance p2, Lmn0;

    invoke-direct {p2, p0, v4, v3, v5}, Lmn0;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;I)V

    const p0, 0x35ba8c17

    invoke-static {p0, p2, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object p0

    const/16 p2, 0x30

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_2

    :cond_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
