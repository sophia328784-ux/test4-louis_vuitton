.class public final synthetic Lr8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;

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


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr8;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;

    iput-object p2, p0, Lr8;->c:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lr8;->d:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lr8;->e:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lr8;->f:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lr8;->g:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lr8;->h:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Lr8;->i:Lkotlin/jvm/functions/Function0;

    iput-object p9, p0, Lr8;->j:Lkotlin/jvm/functions/Function0;

    iput-object p10, p0, Lr8;->k:Lkotlin/jvm/functions/Function0;

    iput-object p11, p0, Lr8;->l:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v14, p3

    check-cast v14, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/4 v15, 0x0

    sget v16, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    iget-object v3, v0, Lr8;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;

    iget-object v4, v0, Lr8;->c:Lkotlinx/coroutines/CoroutineScope;

    iget-object v5, v0, Lr8;->d:Lkotlin/jvm/functions/Function1;

    iget-object v6, v0, Lr8;->e:Lkotlin/jvm/functions/Function1;

    iget-object v7, v0, Lr8;->f:Lkotlin/jvm/functions/Function1;

    iget-object v8, v0, Lr8;->g:Lkotlin/jvm/functions/Function1;

    iget-object v9, v0, Lr8;->h:Lkotlin/jvm/functions/Function1;

    iget-object v10, v0, Lr8;->i:Lkotlin/jvm/functions/Function0;

    iget-object v11, v0, Lr8;->j:Lkotlin/jvm/functions/Function0;

    iget-object v12, v0, Lr8;->k:Lkotlin/jvm/functions/Function0;

    iget-object v13, v0, Lr8;->l:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    invoke-static/range {v3 .. v16}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/AssessmentFormBffComponentKt;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
