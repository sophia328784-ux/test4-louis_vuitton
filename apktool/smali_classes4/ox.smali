.class public final synthetic Lox;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/lazy/LazyListState;

.field public final synthetic c:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;

.field public final synthetic e:Z

.field public final synthetic f:Z

.field public final synthetic g:Lcom/vuitton/android/presentation/model/common/A11ySettings;

.field public final synthetic h:Lkotlin/jvm/functions/Function1;

.field public final synthetic i:Lkotlin/jvm/functions/Function0;

.field public final synthetic j:Lkotlin/jvm/functions/Function1;

.field public final synthetic k:Lkotlin/jvm/functions/Function1;

.field public final synthetic l:Lkotlin/jvm/functions/Function1;

.field public final synthetic m:Lkotlin/jvm/functions/Function1;

.field public final synthetic n:Lkotlin/jvm/functions/Function2;

.field public final synthetic o:Lkotlin/jvm/functions/Function2;

.field public final synthetic p:Lkotlin/jvm/functions/Function1;

.field public final synthetic q:I

.field public final synthetic r:I

.field public final synthetic s:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;ZZLcom/vuitton/android/presentation/model/common/A11ySettings;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lox;->b:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p2, p0, Lox;->c:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iput-object p3, p0, Lox;->d:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;

    iput-boolean p4, p0, Lox;->e:Z

    iput-boolean p5, p0, Lox;->f:Z

    iput-object p6, p0, Lox;->g:Lcom/vuitton/android/presentation/model/common/A11ySettings;

    iput-object p7, p0, Lox;->h:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Lox;->i:Lkotlin/jvm/functions/Function0;

    iput-object p9, p0, Lox;->j:Lkotlin/jvm/functions/Function1;

    iput-object p10, p0, Lox;->k:Lkotlin/jvm/functions/Function1;

    iput-object p11, p0, Lox;->l:Lkotlin/jvm/functions/Function1;

    iput-object p12, p0, Lox;->m:Lkotlin/jvm/functions/Function1;

    iput-object p13, p0, Lox;->n:Lkotlin/jvm/functions/Function2;

    iput-object p14, p0, Lox;->o:Lkotlin/jvm/functions/Function2;

    iput-object p15, p0, Lox;->p:Lkotlin/jvm/functions/Function1;

    move/from16 p1, p16

    iput p1, p0, Lox;->q:I

    move/from16 p1, p17

    iput p1, p0, Lox;->r:I

    move/from16 p1, p18

    iput p1, p0, Lox;->s:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    check-cast v15, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lox;->q:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v16

    iget v1, v0, Lox;->r:I

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v17

    iget-object v1, v0, Lox;->b:Landroidx/compose/foundation/lazy/LazyListState;

    move-object v2, v1

    iget-object v1, v0, Lox;->c:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-object v3, v2

    iget-object v2, v0, Lox;->d:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;

    move-object v4, v3

    iget-boolean v3, v0, Lox;->e:Z

    move-object v5, v4

    iget-boolean v4, v0, Lox;->f:Z

    move-object v6, v5

    iget-object v5, v0, Lox;->g:Lcom/vuitton/android/presentation/model/common/A11ySettings;

    move-object v7, v6

    iget-object v6, v0, Lox;->h:Lkotlin/jvm/functions/Function1;

    move-object v8, v7

    iget-object v7, v0, Lox;->i:Lkotlin/jvm/functions/Function0;

    move-object v9, v8

    iget-object v8, v0, Lox;->j:Lkotlin/jvm/functions/Function1;

    move-object v10, v9

    iget-object v9, v0, Lox;->k:Lkotlin/jvm/functions/Function1;

    move-object v11, v10

    iget-object v10, v0, Lox;->l:Lkotlin/jvm/functions/Function1;

    move-object v12, v11

    iget-object v11, v0, Lox;->m:Lkotlin/jvm/functions/Function1;

    move-object v13, v12

    iget-object v12, v0, Lox;->n:Lkotlin/jvm/functions/Function2;

    move-object v14, v13

    iget-object v13, v0, Lox;->o:Lkotlin/jvm/functions/Function2;

    move-object/from16 v18, v14

    iget-object v14, v0, Lox;->p:Lkotlin/jvm/functions/Function1;

    iget v0, v0, Lox;->s:I

    move-object/from16 v19, v18

    move/from16 v18, v0

    move-object/from16 v0, v19

    invoke-static/range {v0 .. v18}, Lcom/vuitton/android/presentation/screen/feed/components/FeedDiscoverSuccessScreenKt;->a(Landroidx/compose/foundation/lazy/LazyListState;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;ZZLcom/vuitton/android/presentation/model/common/A11ySettings;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
