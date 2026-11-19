.class public final synthetic Lme0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/authentication/common/components/NativeAuthenticationLayoutContext;

.field public final synthetic d:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic e:Landroidx/compose/ui/focus/FocusManager;

.field public final synthetic f:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

.field public final synthetic g:Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterBottomSheetScreen;

.field public final synthetic h:Z

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Landroidx/compose/material3/SnackbarHostState;

.field public final synthetic k:Lkotlin/jvm/functions/Function0;

.field public final synthetic l:Lkotlin/jvm/functions/Function0;

.field public final synthetic m:Lkotlin/jvm/functions/Function0;

.field public final synthetic n:Lkotlin/jvm/functions/Function0;

.field public final synthetic o:Lkotlin/jvm/functions/Function0;

.field public final synthetic p:Z

.field public final synthetic q:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic r:I

.field public final synthetic s:I

.field public final synthetic t:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/authentication/common/components/NativeAuthenticationLayoutContext;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/focus/FocusManager;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterBottomSheetScreen;ZLjava/lang/String;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme0;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lme0;->c:Lcom/vuitton/android/presentation/screen/authentication/common/components/NativeAuthenticationLayoutContext;

    iput-object p3, p0, Lme0;->d:Landroidx/compose/foundation/pager/PagerState;

    iput-object p4, p0, Lme0;->e:Landroidx/compose/ui/focus/FocusManager;

    iput-object p5, p0, Lme0;->f:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iput-object p6, p0, Lme0;->g:Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterBottomSheetScreen;

    iput-boolean p7, p0, Lme0;->h:Z

    iput-object p8, p0, Lme0;->i:Ljava/lang/String;

    iput-object p9, p0, Lme0;->j:Landroidx/compose/material3/SnackbarHostState;

    iput-object p10, p0, Lme0;->k:Lkotlin/jvm/functions/Function0;

    iput-object p11, p0, Lme0;->l:Lkotlin/jvm/functions/Function0;

    iput-object p12, p0, Lme0;->m:Lkotlin/jvm/functions/Function0;

    iput-object p13, p0, Lme0;->n:Lkotlin/jvm/functions/Function0;

    iput-object p14, p0, Lme0;->o:Lkotlin/jvm/functions/Function0;

    iput-boolean p15, p0, Lme0;->p:Z

    move-object/from16 p1, p16

    iput-object p1, p0, Lme0;->q:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move/from16 p1, p17

    iput p1, p0, Lme0;->r:I

    move/from16 p1, p18

    iput p1, p0, Lme0;->s:I

    move/from16 p1, p19

    iput p1, p0, Lme0;->t:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v16, p1

    check-cast v16, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lme0;->r:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v17

    iget v1, v0, Lme0;->s:I

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v18

    iget-object v1, v0, Lme0;->b:Landroidx/compose/ui/Modifier;

    move-object v2, v1

    iget-object v1, v0, Lme0;->c:Lcom/vuitton/android/presentation/screen/authentication/common/components/NativeAuthenticationLayoutContext;

    move-object v3, v2

    iget-object v2, v0, Lme0;->d:Landroidx/compose/foundation/pager/PagerState;

    move-object v4, v3

    iget-object v3, v0, Lme0;->e:Landroidx/compose/ui/focus/FocusManager;

    move-object v5, v4

    iget-object v4, v0, Lme0;->f:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-object v6, v5

    iget-object v5, v0, Lme0;->g:Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterBottomSheetScreen;

    move-object v7, v6

    iget-boolean v6, v0, Lme0;->h:Z

    move-object v8, v7

    iget-object v7, v0, Lme0;->i:Ljava/lang/String;

    move-object v9, v8

    iget-object v8, v0, Lme0;->j:Landroidx/compose/material3/SnackbarHostState;

    move-object v10, v9

    iget-object v9, v0, Lme0;->k:Lkotlin/jvm/functions/Function0;

    move-object v11, v10

    iget-object v10, v0, Lme0;->l:Lkotlin/jvm/functions/Function0;

    move-object v12, v11

    iget-object v11, v0, Lme0;->m:Lkotlin/jvm/functions/Function0;

    move-object v13, v12

    iget-object v12, v0, Lme0;->n:Lkotlin/jvm/functions/Function0;

    move-object v14, v13

    iget-object v13, v0, Lme0;->o:Lkotlin/jvm/functions/Function0;

    move-object v15, v14

    iget-boolean v14, v0, Lme0;->p:Z

    move-object/from16 v19, v15

    iget-object v15, v0, Lme0;->q:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iget v0, v0, Lme0;->t:I

    move-object/from16 v20, v19

    move/from16 v19, v0

    move-object/from16 v0, v20

    invoke-static/range {v0 .. v19}, Lcom/vuitton/android/presentation/screen/authentication/common/components/NativeAuthenticationLayoutKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/authentication/common/components/NativeAuthenticationLayoutContext;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/focus/FocusManager;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterBottomSheetScreen;ZLjava/lang/String;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
