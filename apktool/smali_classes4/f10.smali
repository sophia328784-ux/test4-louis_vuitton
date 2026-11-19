.class public final synthetic Lf10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Lkotlin/Function;

.field public final synthetic g:I

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;ZLkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;I)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lf10;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf10;->c:Ljava/lang/Object;

    iput-boolean p2, p0, Lf10;->d:Z

    iput-object p3, p0, Lf10;->h:Ljava/lang/Object;

    iput-boolean p4, p0, Lf10;->e:Z

    iput-object p5, p0, Lf10;->f:Lkotlin/Function;

    iput p6, p0, Lf10;->g:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;Lkotlin/jvm/functions/Function1;ZZII)V
    .locals 0

    .line 19
    const/4 p7, 0x0

    iput p7, p0, Lf10;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf10;->c:Ljava/lang/Object;

    iput-object p2, p0, Lf10;->h:Ljava/lang/Object;

    iput-object p3, p0, Lf10;->f:Lkotlin/Function;

    iput-boolean p4, p0, Lf10;->d:Z

    iput-boolean p5, p0, Lf10;->e:Z

    iput p6, p0, Lf10;->g:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;ZZLkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationRadioButton;I)V
    .locals 1

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Lf10;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf10;->c:Ljava/lang/Object;

    iput-boolean p2, p0, Lf10;->d:Z

    iput-boolean p3, p0, Lf10;->e:Z

    iput-object p4, p0, Lf10;->f:Lkotlin/Function;

    iput-object p5, p0, Lf10;->h:Ljava/lang/Object;

    iput p6, p0, Lf10;->g:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ZZLkotlin/jvm/functions/Function1;II)V
    .locals 0

    .line 21
    iput p7, p0, Lf10;->b:I

    iput-object p1, p0, Lf10;->c:Ljava/lang/Object;

    iput-object p2, p0, Lf10;->h:Ljava/lang/Object;

    iput-boolean p3, p0, Lf10;->d:Z

    iput-boolean p4, p0, Lf10;->e:Z

    iput-object p5, p0, Lf10;->f:Lkotlin/Function;

    iput p6, p0, Lf10;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget v0, p0, Lf10;->b:I

    iget v1, p0, Lf10;->g:I

    const/4 v2, 0x1

    iget-object v3, p0, Lf10;->f:Lkotlin/Function;

    iget-object v4, p0, Lf10;->h:Ljava/lang/Object;

    iget-object v5, p0, Lf10;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    move-object v6, v5

    check-cast v6, Ljava/util/List;

    move-object v7, v4

    check-cast v7, Landroidx/compose/foundation/pager/PagerState;

    move-object v10, v3

    check-cast v10, Lkotlin/jvm/functions/Function1;

    move-object v11, p1

    check-cast v11, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p1, v1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v12

    iget-boolean v8, p0, Lf10;->d:Z

    iget-boolean v9, p0, Lf10;->e:Z

    invoke-static/range {v6 .. v12}, Lcom/vuitton/android/presentation/common/editorial/components/slideshow/SlideShowCardKt;->a(Ljava/util/List;Landroidx/compose/foundation/pager/PagerState;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v0, v5

    check-cast v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p1, v1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    iget-boolean v1, p0, Lf10;->d:Z

    move-object v2, v4

    move-object v4, v3

    iget-boolean v3, p0, Lf10;->e:Z

    invoke-static/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListEmptyScreenKt;->a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;ZLkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    move-object v0, v5

    check-cast v0, Landroidx/compose/ui/Modifier;

    check-cast v4, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSwitch;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p1, v1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    iget-boolean v2, p0, Lf10;->d:Z

    move-object v1, v4

    move-object v4, v3

    iget-boolean v3, p0, Lf10;->e:Z

    invoke-static/range {v0 .. v6}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVSwitchKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationSwitch;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    move-object v0, v5

    check-cast v0, Landroidx/compose/ui/Modifier;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    check-cast v4, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationRadioButton;

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p1, v1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    iget-boolean v1, p0, Lf10;->d:Z

    iget-boolean v2, p0, Lf10;->e:Z

    invoke-static/range {v0 .. v6}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVRadioButtonKt;->b(Landroidx/compose/ui/Modifier;ZZLkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationRadioButton;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    move-object v0, v5

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v1, v4

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v7

    move-object v2, v3

    iget-boolean v3, p0, Lf10;->d:Z

    iget-boolean v4, p0, Lf10;->e:Z

    iget v5, p0, Lf10;->g:I

    invoke-static/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/pdp/components/variations/GridVariationKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;Lkotlin/jvm/functions/Function1;ZZILandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
