.class public final synthetic Lt61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;

.field public final synthetic e:Z

.field public final synthetic f:Lkotlin/jvm/functions/Function0;

.field public final synthetic g:Lkotlin/jvm/functions/Function0;

.field public final synthetic h:Lkotlin/jvm/functions/Function0;

.field public final synthetic i:Lkotlin/jvm/functions/Function0;

.field public final synthetic j:Lkotlin/jvm/functions/Function0;

.field public final synthetic k:Lkotlin/jvm/functions/Function0;

.field public final synthetic l:Landroidx/compose/material3/SnackbarHostState;

.field public final synthetic m:Lkotlin/jvm/functions/Function0;

.field public final synthetic n:I

.field public final synthetic o:I

.field public final synthetic p:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt61;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lt61;->c:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;

    iput-object p3, p0, Lt61;->d:Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;

    iput-boolean p4, p0, Lt61;->e:Z

    iput-object p5, p0, Lt61;->f:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lt61;->g:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lt61;->h:Lkotlin/jvm/functions/Function0;

    iput-object p8, p0, Lt61;->i:Lkotlin/jvm/functions/Function0;

    iput-object p9, p0, Lt61;->j:Lkotlin/jvm/functions/Function0;

    iput-object p10, p0, Lt61;->k:Lkotlin/jvm/functions/Function0;

    iput-object p11, p0, Lt61;->l:Landroidx/compose/material3/SnackbarHostState;

    iput-object p12, p0, Lt61;->m:Lkotlin/jvm/functions/Function0;

    iput p13, p0, Lt61;->n:I

    iput p14, p0, Lt61;->o:I

    iput p15, p0, Lt61;->p:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lt61;->n:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v13

    iget v1, v0, Lt61;->o:I

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v14

    iget-object v1, v0, Lt61;->b:Landroidx/compose/ui/Modifier;

    move-object v2, v1

    iget-object v1, v0, Lt61;->c:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;

    move-object v3, v2

    iget-object v2, v0, Lt61;->d:Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;

    move-object v4, v3

    iget-boolean v3, v0, Lt61;->e:Z

    move-object v5, v4

    iget-object v4, v0, Lt61;->f:Lkotlin/jvm/functions/Function0;

    move-object v6, v5

    iget-object v5, v0, Lt61;->g:Lkotlin/jvm/functions/Function0;

    move-object v7, v6

    iget-object v6, v0, Lt61;->h:Lkotlin/jvm/functions/Function0;

    move-object v8, v7

    iget-object v7, v0, Lt61;->i:Lkotlin/jvm/functions/Function0;

    move-object v9, v8

    iget-object v8, v0, Lt61;->j:Lkotlin/jvm/functions/Function0;

    move-object v10, v9

    iget-object v9, v0, Lt61;->k:Lkotlin/jvm/functions/Function0;

    move-object v11, v10

    iget-object v10, v0, Lt61;->l:Landroidx/compose/material3/SnackbarHostState;

    move-object v15, v11

    iget-object v11, v0, Lt61;->m:Lkotlin/jvm/functions/Function0;

    iget v0, v0, Lt61;->p:I

    move-object/from16 v16, v15

    move v15, v0

    move-object/from16 v0, v16

    invoke-static/range {v0 .. v15}, Lcom/vuitton/android/presentation/screen/authentication/welcome/components/WelcomeScreenKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
