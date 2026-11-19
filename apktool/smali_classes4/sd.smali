.class public final synthetic Lsd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function4;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarScrollBehavior;II)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lsd;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsd;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lsd;->g:Ljava/lang/Object;

    iput-object p3, p0, Lsd;->h:Ljava/lang/Object;

    iput-object p4, p0, Lsd;->i:Ljava/lang/Object;

    iput-object p5, p0, Lsd;->d:Ljava/lang/Object;

    iput-object p6, p0, Lsd;->j:Ljava/lang/Object;

    iput-object p7, p0, Lsd;->k:Ljava/lang/Object;

    iput-object p8, p0, Lsd;->l:Ljava/lang/Object;

    iput p9, p0, Lsd;->e:I

    iput p10, p0, Lsd;->f:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/Function;Ljava/lang/Object;III)V
    .locals 0

    .line 27
    iput p11, p0, Lsd;->b:I

    iput-object p1, p0, Lsd;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lsd;->g:Ljava/lang/Object;

    iput-object p3, p0, Lsd;->h:Ljava/lang/Object;

    iput-object p4, p0, Lsd;->i:Ljava/lang/Object;

    iput-object p5, p0, Lsd;->j:Ljava/lang/Object;

    iput-object p6, p0, Lsd;->d:Ljava/lang/Object;

    iput-object p7, p0, Lsd;->k:Ljava/lang/Object;

    iput-object p8, p0, Lsd;->l:Ljava/lang/Object;

    iput p9, p0, Lsd;->e:I

    iput p10, p0, Lsd;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcoil3/compose/internal/AsyncImageState;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;ILkotlin/jvm/functions/Function3;II)V
    .locals 0

    .line 28
    const/4 p10, 0x3

    iput p10, p0, Lsd;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsd;->g:Ljava/lang/Object;

    iput-object p2, p0, Lsd;->h:Ljava/lang/Object;

    iput-object p3, p0, Lsd;->c:Landroidx/compose/ui/Modifier;

    iput-object p4, p0, Lsd;->j:Ljava/lang/Object;

    iput-object p5, p0, Lsd;->i:Ljava/lang/Object;

    iput-object p6, p0, Lsd;->d:Ljava/lang/Object;

    iput-object p7, p0, Lsd;->k:Ljava/lang/Object;

    iput p8, p0, Lsd;->e:I

    iput-object p9, p0, Lsd;->l:Ljava/lang/Object;

    iput p11, p0, Lsd;->f:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    iget v1, v0, Lsd;->b:I

    iget v2, v0, Lsd;->e:I

    const/4 v3, 0x1

    iget-object v4, v0, Lsd;->l:Ljava/lang/Object;

    iget-object v5, v0, Lsd;->k:Ljava/lang/Object;

    iget-object v6, v0, Lsd;->d:Ljava/lang/Object;

    iget-object v7, v0, Lsd;->i:Ljava/lang/Object;

    iget-object v8, v0, Lsd;->j:Ljava/lang/Object;

    iget-object v9, v0, Lsd;->h:Ljava/lang/Object;

    iget-object v10, v0, Lsd;->g:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    move-object v11, v10

    check-cast v11, Lcoil3/compose/internal/AsyncImageState;

    move-object v12, v9

    check-cast v12, Ljava/lang/String;

    move-object v14, v8

    check-cast v14, Lkotlin/jvm/functions/Function1;

    move-object v15, v7

    check-cast v15, Lkotlin/jvm/functions/Function1;

    move-object/from16 v16, v6

    check-cast v16, Landroidx/compose/ui/Alignment;

    move-object/from16 v17, v5

    check-cast v17, Landroidx/compose/ui/layout/ContentScale;

    move-object/from16 v19, v4

    check-cast v19, Lkotlin/jvm/functions/Function3;

    move-object/from16 v20, p1

    check-cast v20, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v21

    iget v1, v0, Lsd;->f:I

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v22

    iget-object v13, v0, Lsd;->c:Landroidx/compose/ui/Modifier;

    iget v0, v0, Lsd;->e:I

    move/from16 v18, v0

    invoke-static/range {v11 .. v22}, Lcoil3/compose/SubcomposeAsyncImageKt;->a(Lcoil3/compose/internal/AsyncImageState;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;ILkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    check-cast v10, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    check-cast v9, Ljava/lang/String;

    check-cast v7, Ljava/lang/String;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    check-cast v8, Lkotlin/jvm/functions/Function4;

    check-cast v5, Landroidx/compose/foundation/layout/WindowInsets;

    check-cast v4, Landroidx/compose/material3/TopAppBarScrollBehavior;

    move v1, v3

    move-object v3, v9

    move-object/from16 v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    move-object/from16 v11, p2

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/2addr v1, v2

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v1

    move-object v2, v10

    move v10, v1

    iget-object v1, v0, Lsd;->c:Landroidx/compose/ui/Modifier;

    iget v11, v0, Lsd;->f:I

    move-object/from16 v23, v8

    move-object v8, v4

    move-object v4, v7

    move-object v7, v5

    move-object v5, v6

    move-object/from16 v6, v23

    invoke-static/range {v1 .. v11}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function4;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarScrollBehavior;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    move v1, v3

    check-cast v10, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/FloatingTopBarType;

    move-object v3, v9

    check-cast v3, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/FloatingTopBarStyle;

    check-cast v7, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    check-cast v8, Ljava/lang/String;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    check-cast v5, Lkotlin/jvm/functions/Function4;

    check-cast v4, Landroidx/compose/foundation/layout/WindowInsets;

    move-object/from16 v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    move-object/from16 v11, p2

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/2addr v1, v2

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v1

    move-object v2, v10

    move v10, v1

    iget-object v1, v0, Lsd;->c:Landroidx/compose/ui/Modifier;

    iget v11, v0, Lsd;->f:I

    move-object/from16 v23, v8

    move-object v8, v4

    move-object v4, v7

    move-object v7, v5

    move-object/from16 v5, v23

    invoke-static/range {v1 .. v11}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVFloatingTopBarKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/FloatingTopBarType;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/FloatingTopBarStyle;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function4;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_2
    move v1, v3

    check-cast v10, Ljava/util/List;

    move-object v3, v9

    check-cast v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    check-cast v7, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    move-object/from16 v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    move-object/from16 v11, p2

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/2addr v1, v2

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v1

    move-object v2, v10

    move v10, v1

    iget-object v1, v0, Lsd;->c:Landroidx/compose/ui/Modifier;

    iget v11, v0, Lsd;->f:I

    move-object/from16 v23, v8

    move-object v8, v4

    move-object v4, v7

    move-object v7, v5

    move-object/from16 v5, v23

    invoke-static/range {v1 .. v11}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyColorSelectorKt;->a(Landroidx/compose/ui/Modifier;Ljava/util/List;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
