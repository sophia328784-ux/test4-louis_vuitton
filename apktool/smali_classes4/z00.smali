.class public final synthetic Lz00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Z

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:F

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Lkotlin/jvm/functions/Function0;

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;Landroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/ranges/ClosedFloatingPointRange;I)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lz00;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lz00;->j:F

    iput-object p2, p0, Lz00;->d:Ljava/lang/Object;

    iput-object p3, p0, Lz00;->c:Landroidx/compose/ui/Modifier;

    iput-boolean p4, p0, Lz00;->h:Z

    iput-object p5, p0, Lz00;->l:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lz00;->e:Ljava/lang/Object;

    iput-object p7, p0, Lz00;->f:Ljava/lang/Object;

    iput-object p8, p0, Lz00;->g:Ljava/lang/Object;

    iput-object p9, p0, Lz00;->i:Ljava/lang/Object;

    iput-object p10, p0, Lz00;->k:Ljava/lang/Object;

    iput p11, p0, Lz00;->m:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Ljava/util/List;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;FLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;II)V
    .locals 0

    .line 29
    iput p12, p0, Lz00;->b:I

    iput-object p1, p0, Lz00;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lz00;->d:Ljava/lang/Object;

    iput-object p3, p0, Lz00;->e:Ljava/lang/Object;

    iput-object p4, p0, Lz00;->f:Ljava/lang/Object;

    iput-object p5, p0, Lz00;->g:Ljava/lang/Object;

    iput-boolean p6, p0, Lz00;->h:Z

    iput-object p7, p0, Lz00;->i:Ljava/lang/Object;

    iput p8, p0, Lz00;->j:F

    iput-object p9, p0, Lz00;->k:Ljava/lang/Object;

    iput-object p10, p0, Lz00;->l:Lkotlin/jvm/functions/Function0;

    iput p11, p0, Lz00;->m:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    iget v1, v0, Lz00;->b:I

    iget v2, v0, Lz00;->m:I

    iget-object v3, v0, Lz00;->k:Ljava/lang/Object;

    iget-object v4, v0, Lz00;->i:Ljava/lang/Object;

    iget-object v5, v0, Lz00;->g:Ljava/lang/Object;

    iget-object v6, v0, Lz00;->f:Ljava/lang/Object;

    iget-object v7, v0, Lz00;->e:Ljava/lang/Object;

    iget-object v8, v0, Lz00;->d:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    move-object v10, v8

    check-cast v10, Lkotlin/jvm/functions/Function1;

    move-object v14, v7

    check-cast v14, Landroidx/compose/material3/SliderColors;

    move-object v15, v6

    check-cast v15, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v16, v5

    check-cast v16, Lkotlin/jvm/functions/Function3;

    move-object/from16 v17, v4

    check-cast v17, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object/from16 v18, v3

    check-cast v18, Lkotlin/ranges/ClosedFloatingPointRange;

    move-object/from16 v19, p1

    check-cast v19, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v1, v2, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v20

    iget v9, v0, Lz00;->j:F

    iget-object v11, v0, Lz00;->c:Landroidx/compose/ui/Modifier;

    iget-boolean v12, v0, Lz00;->h:Z

    iget-object v13, v0, Lz00;->l:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v9 .. v20}, Landroidx/compose/material3/SliderKt;->a(FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;Landroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/ranges/ClosedFloatingPointRange;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    check-cast v8, Ljava/lang/String;

    check-cast v7, Ljava/lang/String;

    check-cast v6, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    check-cast v5, Ljava/util/List;

    check-cast v4, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-object v9, v3

    check-cast v9, Lkotlin/jvm/functions/Function2;

    move-object/from16 v11, p1

    check-cast v11, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v1, v2, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v12

    iget-object v1, v0, Lz00;->c:Landroidx/compose/ui/Modifier;

    move-object v3, v7

    move-object v7, v4

    move-object v4, v6

    iget-boolean v6, v0, Lz00;->h:Z

    move-object v2, v8

    iget v8, v0, Lz00;->j:F

    iget-object v10, v0, Lz00;->l:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v1 .. v12}, Lcom/vuitton/android/presentation/common/editorial/components/grids/GridSKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Ljava/util/List;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;FLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    check-cast v8, Ljava/lang/String;

    check-cast v7, Ljava/lang/String;

    check-cast v6, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    check-cast v5, Ljava/util/List;

    check-cast v4, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-object v9, v3

    check-cast v9, Lkotlin/jvm/functions/Function2;

    move-object/from16 v11, p1

    check-cast v11, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v1, v2, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v12

    iget-object v1, v0, Lz00;->c:Landroidx/compose/ui/Modifier;

    move-object v3, v7

    move-object v7, v4

    move-object v4, v6

    iget-boolean v6, v0, Lz00;->h:Z

    move-object v2, v8

    iget v8, v0, Lz00;->j:F

    iget-object v10, v0, Lz00;->l:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v1 .. v12}, Lcom/vuitton/android/presentation/common/editorial/components/grids/GridSKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Ljava/util/List;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;FLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
