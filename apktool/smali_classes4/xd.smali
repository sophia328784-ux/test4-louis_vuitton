.class public final synthetic Lxd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:I

.field public final synthetic e:Z

.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Lkotlin/Function;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;IILjava/lang/String;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    const/4 p8, 0x3

    iput p8, p0, Lxd;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxd;->c:Landroidx/compose/ui/Modifier;

    iput p2, p0, Lxd;->d:I

    iput p3, p0, Lxd;->f:I

    iput-object p4, p0, Lxd;->g:Ljava/lang/Object;

    iput-boolean p5, p0, Lxd;->e:Z

    iput-object p6, p0, Lxd;->h:Ljava/lang/Object;

    iput-object p7, p0, Lxd;->i:Lkotlin/Function;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/common/editorial/models/CarouselMItemUiModel;ILcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function1;I)V
    .locals 1

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lxd;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxd;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lxd;->g:Ljava/lang/Object;

    iput p3, p0, Lxd;->d:I

    iput-object p4, p0, Lxd;->h:Ljava/lang/Object;

    iput-boolean p5, p0, Lxd;->e:Z

    iput-object p6, p0, Lxd;->i:Lkotlin/Function;

    iput p7, p0, Lxd;->f:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;II)V
    .locals 1

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lxd;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxd;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lxd;->g:Ljava/lang/Object;

    iput-object p3, p0, Lxd;->h:Ljava/lang/Object;

    iput-boolean p4, p0, Lxd;->e:Z

    iput-object p5, p0, Lxd;->i:Lkotlin/Function;

    iput p6, p0, Lxd;->d:I

    iput p7, p0, Lxd;->f:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function0;II)V
    .locals 1

    .line 23
    const/4 v0, 0x2

    iput v0, p0, Lxd;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxd;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lxd;->g:Ljava/lang/Object;

    iput-boolean p3, p0, Lxd;->e:Z

    iput-object p4, p0, Lxd;->h:Ljava/lang/Object;

    iput-object p5, p0, Lxd;->i:Lkotlin/Function;

    iput p6, p0, Lxd;->d:I

    iput p7, p0, Lxd;->f:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget v0, p0, Lxd;->b:I

    iget v1, p0, Lxd;->d:I

    iget-object v2, p0, Lxd;->i:Lkotlin/Function;

    iget-object v3, p0, Lxd;->h:Ljava/lang/Object;

    iget-object v4, p0, Lxd;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    move-object v10, v3

    check-cast v10, Lkotlin/jvm/functions/Function1;

    move-object v11, v2

    check-cast v11, Lkotlin/jvm/functions/Function1;

    move-object v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x7

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v13

    iget-object v5, p0, Lxd;->c:Landroidx/compose/ui/Modifier;

    iget v6, p0, Lxd;->d:I

    iget v7, p0, Lxd;->f:I

    iget-boolean v9, p0, Lxd;->e:Z

    invoke-static/range {v5 .. v13}, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightBottomStepperKt;->d(Landroidx/compose/ui/Modifier;IILjava/lang/String;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast v4, Ljava/lang/String;

    check-cast v3, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v0, v1, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    iget-object v0, p0, Lxd;->c:Landroidx/compose/ui/Modifier;

    move-object v1, v4

    move-object v4, v2

    iget-boolean v2, p0, Lxd;->e:Z

    iget v7, p0, Lxd;->f:I

    invoke-static/range {v0 .. v7}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVLinkKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    move-object v1, v4

    check-cast v1, Lcom/vuitton/android/presentation/common/editorial/models/CarouselMItemUiModel;

    check-cast v3, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-object v5, v2

    check-cast v5, Lkotlin/jvm/functions/Function1;

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lxd;->f:I

    or-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v7

    iget-object v0, p0, Lxd;->c:Landroidx/compose/ui/Modifier;

    iget v2, p0, Lxd;->d:I

    iget-boolean v4, p0, Lxd;->e:Z

    invoke-static/range {v0 .. v7}, Lcom/vuitton/android/presentation/common/editorial/components/carouselm/CarouselMItemKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/common/editorial/models/CarouselMItemUiModel;ILcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast v4, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    check-cast v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v0, v1, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    iget-object v0, p0, Lxd;->c:Landroidx/compose/ui/Modifier;

    move-object v1, v4

    move-object v4, v2

    move-object v2, v3

    iget-boolean v3, p0, Lxd;->e:Z

    iget v7, p0, Lxd;->f:I

    invoke-static/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyDualColorComparatorKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
