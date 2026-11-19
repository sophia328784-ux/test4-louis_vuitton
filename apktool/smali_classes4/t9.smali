.class public final synthetic Lt9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;

.field public final synthetic c:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;

.field public final synthetic h:Lkotlin/jvm/functions/Function1;

.field public final synthetic i:Lkotlin/jvm/functions/Function0;

.field public final synthetic j:Lkotlin/jvm/functions/Function0;

.field public final synthetic k:Lkotlin/jvm/functions/Function0;

.field public final synthetic l:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

.field public final synthetic m:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt9;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;

    iput-object p2, p0, Lt9;->c:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lt9;->d:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lt9;->e:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lt9;->f:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lt9;->g:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lt9;->h:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Lt9;->i:Lkotlin/jvm/functions/Function0;

    iput-object p9, p0, Lt9;->j:Lkotlin/jvm/functions/Function0;

    iput-object p10, p0, Lt9;->k:Lkotlin/jvm/functions/Function0;

    iput-object p11, p0, Lt9;->l:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iput-object p12, p0, Lt9;->m:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v15, p3

    check-cast v15, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p4

    check-cast v3, Ljava/lang/Integer;

    invoke-static {v3, v1, v2}, La;->x(Ljava/lang/Integer;Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;)V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, v0, Lt9;->m:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    sget v1, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v17, v1, 0x3

    iget-object v3, v0, Lt9;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;

    iget-object v5, v0, Lt9;->c:Lkotlinx/coroutines/CoroutineScope;

    iget-object v6, v0, Lt9;->d:Lkotlin/jvm/functions/Function1;

    iget-object v7, v0, Lt9;->e:Lkotlin/jvm/functions/Function1;

    iget-object v8, v0, Lt9;->f:Lkotlin/jvm/functions/Function1;

    iget-object v9, v0, Lt9;->g:Lkotlin/jvm/functions/Function1;

    iget-object v10, v0, Lt9;->h:Lkotlin/jvm/functions/Function1;

    iget-object v11, v0, Lt9;->i:Lkotlin/jvm/functions/Function0;

    iget-object v12, v0, Lt9;->j:Lkotlin/jvm/functions/Function0;

    iget-object v13, v0, Lt9;->k:Lkotlin/jvm/functions/Function0;

    iget-object v14, v0, Lt9;->l:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    const/16 v16, 0x0

    invoke-static/range {v3 .. v17}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/AssessmentFormComponentKt;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
