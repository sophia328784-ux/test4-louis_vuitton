.class public final synthetic Luz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:Lkotlin/jvm/functions/Function0;

.field public final synthetic g:Lkotlin/jvm/functions/Function0;

.field public final synthetic h:Lkotlin/jvm/functions/Function0;

.field public final synthetic i:Lkotlin/jvm/functions/Function1;

.field public final synthetic j:Lkotlin/jvm/functions/Function2;

.field public final synthetic k:Lkotlin/jvm/functions/Function1;

.field public final synthetic l:Lkotlin/jvm/functions/Function0;

.field public final synthetic m:Lkotlin/jvm/functions/Function1;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Luz;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luz;->n:Ljava/lang/Object;

    iput-object p2, p0, Luz;->o:Ljava/lang/Object;

    iput-object p3, p0, Luz;->p:Ljava/lang/Object;

    iput-boolean p4, p0, Luz;->c:Z

    iput-boolean p5, p0, Luz;->d:Z

    iput-object p6, p0, Luz;->e:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Luz;->f:Lkotlin/jvm/functions/Function0;

    iput-object p8, p0, Luz;->g:Lkotlin/jvm/functions/Function0;

    iput-object p9, p0, Luz;->h:Lkotlin/jvm/functions/Function0;

    iput-object p10, p0, Luz;->i:Lkotlin/jvm/functions/Function1;

    iput-object p11, p0, Luz;->j:Lkotlin/jvm/functions/Function2;

    iput-object p12, p0, Luz;->k:Lkotlin/jvm/functions/Function1;

    iput-object p13, p0, Luz;->l:Lkotlin/jvm/functions/Function0;

    iput-object p14, p0, Luz;->m:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordViewState;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/material3/SnackbarHostState;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V
    .locals 1

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Luz;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luz;->n:Ljava/lang/Object;

    iput-object p2, p0, Luz;->o:Ljava/lang/Object;

    iput-object p3, p0, Luz;->p:Ljava/lang/Object;

    iput-boolean p4, p0, Luz;->c:Z

    iput-object p5, p0, Luz;->i:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Luz;->e:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Luz;->f:Lkotlin/jvm/functions/Function0;

    iput-object p8, p0, Luz;->k:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Luz;->j:Lkotlin/jvm/functions/Function2;

    iput-boolean p10, p0, Luz;->d:Z

    iput-object p11, p0, Luz;->g:Lkotlin/jvm/functions/Function0;

    iput-object p12, p0, Luz;->h:Lkotlin/jvm/functions/Function0;

    iput-object p13, p0, Luz;->l:Lkotlin/jvm/functions/Function0;

    iput-object p14, p0, Luz;->m:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    iget v1, v0, Luz;->b:I

    iget-object v2, v0, Luz;->p:Ljava/lang/Object;

    iget-object v3, v0, Luz;->o:Ljava/lang/Object;

    iget-object v4, v0, Luz;->n:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    move-object v5, v4

    check-cast v5, Landroidx/compose/ui/Modifier;

    move-object v6, v3

    check-cast v6, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

    move-object v7, v2

    check-cast v7, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;

    move-object/from16 v19, p1

    check-cast v19, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x30000001

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v20

    iget-boolean v8, v0, Luz;->c:Z

    iget-boolean v9, v0, Luz;->d:Z

    iget-object v10, v0, Luz;->e:Lkotlin/jvm/functions/Function0;

    iget-object v11, v0, Luz;->f:Lkotlin/jvm/functions/Function0;

    iget-object v12, v0, Luz;->g:Lkotlin/jvm/functions/Function0;

    iget-object v13, v0, Luz;->h:Lkotlin/jvm/functions/Function0;

    iget-object v14, v0, Luz;->i:Lkotlin/jvm/functions/Function1;

    iget-object v15, v0, Luz;->j:Lkotlin/jvm/functions/Function2;

    iget-object v1, v0, Luz;->k:Lkotlin/jvm/functions/Function1;

    iget-object v2, v0, Luz;->l:Lkotlin/jvm/functions/Function0;

    iget-object v0, v0, Luz;->m:Lkotlin/jvm/functions/Function1;

    move-object/from16 v18, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    invoke-static/range {v5 .. v20}, Lcom/vuitton/android/presentation/screen/main/components/MainNavBarKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/main/MainNavigationState;Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    move-object v1, v4

    check-cast v1, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordViewState;

    check-cast v3, Landroidx/compose/foundation/pager/PagerState;

    check-cast v2, Landroidx/compose/material3/SnackbarHostState;

    move-object/from16 v15, p1

    check-cast v15, Landroidx/compose/runtime/Composer;

    move-object/from16 v4, p2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x181

    invoke-static {v4}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v16

    iget-boolean v4, v0, Luz;->c:Z

    iget-object v5, v0, Luz;->i:Lkotlin/jvm/functions/Function1;

    iget-object v6, v0, Luz;->e:Lkotlin/jvm/functions/Function0;

    iget-object v7, v0, Luz;->f:Lkotlin/jvm/functions/Function0;

    iget-object v8, v0, Luz;->k:Lkotlin/jvm/functions/Function1;

    iget-object v9, v0, Luz;->j:Lkotlin/jvm/functions/Function2;

    iget-boolean v10, v0, Luz;->d:Z

    iget-object v11, v0, Luz;->g:Lkotlin/jvm/functions/Function0;

    iget-object v12, v0, Luz;->h:Lkotlin/jvm/functions/Function0;

    iget-object v13, v0, Luz;->l:Lkotlin/jvm/functions/Function0;

    iget-object v14, v0, Luz;->m:Lkotlin/jvm/functions/Function1;

    move-object/from16 v21, v3

    move-object v3, v2

    move-object/from16 v2, v21

    invoke-static/range {v1 .. v16}, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordScreenKt;->a(Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordViewState;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/material3/SnackbarHostState;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
