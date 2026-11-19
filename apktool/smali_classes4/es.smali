.class public final synthetic Les;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:F

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;

.field public final synthetic k:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;FLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpCapsuleStyle;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeAnimationState;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeCapsuleRenderContext;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Les;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Les;->c:Landroidx/compose/ui/Modifier;

    iput p2, p0, Les;->d:F

    iput-object p3, p0, Les;->f:Ljava/lang/Object;

    iput-object p4, p0, Les;->g:Ljava/lang/Object;

    iput-object p5, p0, Les;->h:Ljava/lang/Object;

    iput-object p6, p0, Les;->i:Ljava/lang/Object;

    iput-object p7, p0, Les;->j:Ljava/lang/Object;

    iput-object p8, p0, Les;->k:Ljava/lang/Object;

    iput p9, p0, Les;->e:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/ui/text/TextStyle;FLandroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 1

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Les;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Les;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Les;->f:Ljava/lang/Object;

    iput-object p3, p0, Les;->g:Ljava/lang/Object;

    iput-object p4, p0, Les;->h:Ljava/lang/Object;

    iput-object p5, p0, Les;->i:Ljava/lang/Object;

    iput-object p6, p0, Les;->j:Ljava/lang/Object;

    iput p7, p0, Les;->d:F

    iput-object p8, p0, Les;->k:Ljava/lang/Object;

    iput p9, p0, Les;->e:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Les;->b:I

    iget v2, v0, Les;->e:I

    iget-object v3, v0, Les;->k:Ljava/lang/Object;

    iget-object v4, v0, Les;->j:Ljava/lang/Object;

    iget-object v5, v0, Les;->i:Ljava/lang/Object;

    iget-object v6, v0, Les;->h:Ljava/lang/Object;

    iget-object v7, v0, Les;->g:Ljava/lang/Object;

    iget-object v8, v0, Les;->f:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    move-object v11, v8

    check-cast v11, Ljava/lang/String;

    move-object v12, v7

    check-cast v12, Ljava/lang/String;

    move-object v13, v6

    check-cast v13, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpCapsuleStyle;

    move-object v14, v5

    check-cast v14, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeAnimationState;

    move-object v15, v4

    check-cast v15, Lkotlin/jvm/functions/Function0;

    move-object/from16 v16, v3

    check-cast v16, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeCapsuleRenderContext;

    move-object/from16 v17, p1

    check-cast v17, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v1, v2, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v18

    iget-object v9, v0, Les;->c:Landroidx/compose/ui/Modifier;

    iget v10, v0, Les;->d:F

    invoke-static/range {v9 .. v18}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpToolBoxKt;->a(Landroidx/compose/ui/Modifier;FLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpCapsuleStyle;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeAnimationState;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeCapsuleRenderContext;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    check-cast v8, Lkotlin/jvm/functions/Function2;

    check-cast v7, Lkotlin/jvm/functions/Function2;

    check-cast v6, Lkotlin/jvm/functions/Function2;

    check-cast v5, Landroidx/compose/material3/DatePickerColors;

    check-cast v4, Landroidx/compose/ui/text/TextStyle;

    check-cast v3, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object/from16 v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v1, v2, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v10

    iget-object v1, v0, Les;->c:Landroidx/compose/ui/Modifier;

    iget v0, v0, Les;->d:F

    move-object v2, v6

    move-object v6, v4

    move-object v4, v2

    move-object v2, v8

    move-object v8, v3

    move-object v3, v7

    move v7, v0

    invoke-static/range {v1 .. v10}, Landroidx/compose/material3/DatePickerKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/ui/text/TextStyle;FLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
