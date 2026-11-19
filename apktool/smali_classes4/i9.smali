.class public final synthetic Li9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;

.field public final synthetic h:Lkotlin/jvm/functions/Function1;

.field public final synthetic i:Lkotlin/jvm/functions/Function1;

.field public final synthetic j:Lkotlin/jvm/functions/Function0;

.field public final synthetic k:Lkotlin/jvm/functions/Function0;

.field public final synthetic l:Lkotlin/jvm/functions/Function0;

.field public final synthetic m:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

.field public final synthetic n:I


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li9;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;

    iput-object p2, p0, Li9;->c:Ljava/lang/String;

    iput-object p3, p0, Li9;->d:Lkotlinx/coroutines/CoroutineScope;

    iput-object p4, p0, Li9;->e:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Li9;->f:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Li9;->g:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Li9;->h:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Li9;->i:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Li9;->j:Lkotlin/jvm/functions/Function0;

    iput-object p10, p0, Li9;->k:Lkotlin/jvm/functions/Function0;

    iput-object p11, p0, Li9;->l:Lkotlin/jvm/functions/Function0;

    iput-object p12, p0, Li9;->m:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iput p14, p0, Li9;->n:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v13

    iget v1, v0, Li9;->n:I

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v14

    iget-object v1, v0, Li9;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;

    move-object v2, v1

    iget-object v1, v0, Li9;->c:Ljava/lang/String;

    move-object v3, v2

    iget-object v2, v0, Li9;->d:Lkotlinx/coroutines/CoroutineScope;

    move-object v4, v3

    iget-object v3, v0, Li9;->e:Lkotlin/jvm/functions/Function1;

    move-object v5, v4

    iget-object v4, v0, Li9;->f:Lkotlin/jvm/functions/Function1;

    move-object v6, v5

    iget-object v5, v0, Li9;->g:Lkotlin/jvm/functions/Function1;

    move-object v7, v6

    iget-object v6, v0, Li9;->h:Lkotlin/jvm/functions/Function1;

    move-object v8, v7

    iget-object v7, v0, Li9;->i:Lkotlin/jvm/functions/Function1;

    move-object v9, v8

    iget-object v8, v0, Li9;->j:Lkotlin/jvm/functions/Function0;

    move-object v10, v9

    iget-object v9, v0, Li9;->k:Lkotlin/jvm/functions/Function0;

    move-object v11, v10

    iget-object v10, v0, Li9;->l:Lkotlin/jvm/functions/Function0;

    iget-object v0, v0, Li9;->m:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-object v15, v11

    move-object v11, v0

    move-object v0, v15

    invoke-static/range {v0 .. v14}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/AssessmentFormComponentKt;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
