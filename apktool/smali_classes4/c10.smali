.class public final synthetic Lc10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Z

.field public final synthetic f:Z

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function0;II)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lc10;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc10;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lc10;->i:Ljava/lang/Object;

    iput-boolean p3, p0, Lc10;->e:Z

    iput-object p4, p0, Lc10;->d:Ljava/lang/Object;

    iput-boolean p5, p0, Lc10;->f:Z

    iput-object p6, p0, Lc10;->j:Ljava/lang/Object;

    iput p7, p0, Lc10;->g:I

    iput p8, p0, Lc10;->h:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/foundation/shape/RoundedCornerShape;ZZII)V
    .locals 1

    .line 23
    const/4 v0, 0x5

    iput v0, p0, Lc10;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc10;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lc10;->i:Ljava/lang/Object;

    iput-object p3, p0, Lc10;->d:Ljava/lang/Object;

    iput-object p4, p0, Lc10;->j:Ljava/lang/Object;

    iput-boolean p5, p0, Lc10;->e:Z

    iput-boolean p6, p0, Lc10;->f:Z

    iput p7, p0, Lc10;->g:I

    iput p8, p0, Lc10;->h:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function0;II)V
    .locals 1

    .line 24
    const/4 v0, 0x2

    iput v0, p0, Lc10;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc10;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lc10;->d:Ljava/lang/Object;

    iput-boolean p3, p0, Lc10;->e:Z

    iput-object p4, p0, Lc10;->i:Ljava/lang/Object;

    iput-boolean p5, p0, Lc10;->f:Z

    iput-object p6, p0, Lc10;->j:Ljava/lang/Object;

    iput p7, p0, Lc10;->g:I

    iput p8, p0, Lc10;->h:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZZLjava/lang/Object;Lkotlin/jvm/functions/Function0;III)V
    .locals 0

    .line 25
    iput p9, p0, Lc10;->b:I

    iput-object p1, p0, Lc10;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lc10;->d:Ljava/lang/Object;

    iput-boolean p3, p0, Lc10;->e:Z

    iput-boolean p4, p0, Lc10;->f:Z

    iput-object p5, p0, Lc10;->i:Ljava/lang/Object;

    iput-object p6, p0, Lc10;->j:Ljava/lang/Object;

    iput p7, p0, Lc10;->g:I

    iput p8, p0, Lc10;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/util/List;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;ZII)V
    .locals 1

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lc10;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc10;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lc10;->i:Ljava/lang/Object;

    iput-object p3, p0, Lc10;->d:Ljava/lang/Object;

    iput-boolean p4, p0, Lc10;->e:Z

    iput-object p5, p0, Lc10;->j:Ljava/lang/Object;

    iput-boolean p6, p0, Lc10;->f:Z

    iput p7, p0, Lc10;->g:I

    iput p8, p0, Lc10;->h:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lc10;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lc10;->i:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    iget-object v0, p0, Lc10;->d:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iget-object v0, p0, Lc10;->j:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lc10;->g:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    iget-object v1, p0, Lc10;->c:Landroidx/compose/ui/Modifier;

    iget-boolean v5, p0, Lc10;->e:Z

    iget-boolean v6, p0, Lc10;->f:Z

    iget v9, p0, Lc10;->h:I

    invoke-static/range {v1 .. v9}, Lcom/vuitton/android/presentation/screen/orders/components/list/OrderItemKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/foundation/shape/RoundedCornerShape;ZZLandroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lc10;->i:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;

    iget-object v0, p0, Lc10;->d:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iget-object v0, p0, Lc10;->j:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function0;

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lc10;->g:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    iget-object v1, p0, Lc10;->c:Landroidx/compose/ui/Modifier;

    iget-boolean v3, p0, Lc10;->e:Z

    iget-boolean v5, p0, Lc10;->f:Z

    iget v9, p0, Lc10;->h:I

    invoke-static/range {v1 .. v9}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSegmentedControlKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lc10;->d:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v0, p0, Lc10;->i:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationLink;

    iget-object v0, p0, Lc10;->j:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function0;

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lc10;->g:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    iget-object v1, p0, Lc10;->c:Landroidx/compose/ui/Modifier;

    iget-boolean v3, p0, Lc10;->e:Z

    iget-boolean v4, p0, Lc10;->f:Z

    iget v9, p0, Lc10;->h:I

    invoke-static/range {v1 .. v9}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVLinkKt;->c(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZZLcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationLink;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    iget-object v0, p0, Lc10;->d:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v0, p0, Lc10;->i:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iget-object v0, p0, Lc10;->j:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function0;

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lc10;->g:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    iget-object v1, p0, Lc10;->c:Landroidx/compose/ui/Modifier;

    iget-boolean v3, p0, Lc10;->e:Z

    iget-boolean v5, p0, Lc10;->f:Z

    iget v9, p0, Lc10;->h:I

    invoke-static/range {v1 .. v9}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVLinkKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    iget-object v0, p0, Lc10;->d:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v0, p0, Lc10;->i:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonGroupIndicator;

    iget-object v0, p0, Lc10;->j:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function0;

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lc10;->g:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    iget-object v1, p0, Lc10;->c:Landroidx/compose/ui/Modifier;

    iget-boolean v3, p0, Lc10;->e:Z

    iget-boolean v4, p0, Lc10;->f:Z

    iget v9, p0, Lc10;->h:I

    invoke-static/range {v1 .. v9}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonGroupKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZZLcom/vuitton/android/designkit/ui/theme/atoms/LVButtonGroupIndicator;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    iget-object v0, p0, Lc10;->i:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    iget-object v0, p0, Lc10;->d:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v0, p0, Lc10;->j:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function1;

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lc10;->h:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v9

    iget-object v1, p0, Lc10;->c:Landroidx/compose/ui/Modifier;

    iget-boolean v4, p0, Lc10;->e:Z

    iget-boolean v6, p0, Lc10;->f:Z

    iget v7, p0, Lc10;->g:I

    invoke-static/range {v1 .. v9}, Lcom/vuitton/android/presentation/screen/pdp/components/variations/GridVariationKt;->b(Landroidx/compose/ui/Modifier;Ljava/util/List;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;ZILandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
