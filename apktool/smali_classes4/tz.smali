.class public final synthetic Ltz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordViewState;

.field public final synthetic c:Z

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Landroidx/compose/ui/platform/SoftwareKeyboardController;

.field public final synthetic g:Lkotlin/jvm/functions/Function0;

.field public final synthetic h:Lkotlin/jvm/functions/Function0;

.field public final synthetic i:Lkotlin/jvm/functions/Function1;

.field public final synthetic j:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic k:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic l:Z

.field public final synthetic m:Lkotlin/jvm/functions/Function2;

.field public final synthetic n:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordViewState;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/platform/SoftwareKeyboardController;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltz;->b:Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordViewState;

    iput-boolean p2, p0, Ltz;->c:Z

    iput-object p3, p0, Ltz;->d:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Ltz;->e:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Ltz;->f:Landroidx/compose/ui/platform/SoftwareKeyboardController;

    iput-object p6, p0, Ltz;->g:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Ltz;->h:Lkotlin/jvm/functions/Function0;

    iput-object p8, p0, Ltz;->i:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Ltz;->j:Landroidx/compose/foundation/pager/PagerState;

    iput-object p10, p0, Ltz;->k:Lkotlinx/coroutines/CoroutineScope;

    iput-boolean p11, p0, Ltz;->l:Z

    iput-object p12, p0, Ltz;->m:Lkotlin/jvm/functions/Function2;

    iput-object p13, p0, Ltz;->n:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    move-object v7, p3

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 p3, p2, 0x6

    const/4 p4, 0x2

    if-nez p3, :cond_1

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x4

    goto :goto_0

    :cond_0
    move p3, p4

    :goto_0
    or-int/2addr p3, p2

    goto :goto_1

    :cond_1
    move p3, p2

    :goto_1
    and-int/lit8 p2, p2, 0x30

    if-nez p2, :cond_3

    invoke-interface {v7, p1}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result p2

    if-eqz p2, :cond_2

    const/16 p2, 0x20

    goto :goto_2

    :cond_2
    const/16 p2, 0x10

    :goto_2
    or-int/2addr p3, p2

    :cond_3
    and-int/lit16 p2, p3, 0x93

    const/16 v1, 0x92

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p2, v1, :cond_4

    move p2, v3

    goto :goto_3

    :cond_4
    move p2, v2

    :goto_3
    and-int/lit8 v1, p3, 0x1

    invoke-interface {v7, v1, p2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_10

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, p0, Ltz;->b:Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordViewState;

    iget-object v6, p0, Ltz;->e:Lkotlin/jvm/functions/Function1;

    iget-object p2, p0, Ltz;->f:Landroidx/compose/ui/platform/SoftwareKeyboardController;

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz p1, :cond_d

    if-eq p1, v3, :cond_8

    if-eq p1, p4, :cond_5

    const p0, -0x25aa0b2f

    invoke-interface {v7, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->F()V

    goto/16 :goto_4

    :cond_5
    const p1, -0x223f8e4f

    invoke-interface {v7, p1}, Landroidx/compose/runtime/Composer;->L(I)V

    move p1, v3

    iget-boolean v3, v1, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordViewState;->c:Z

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p4

    invoke-interface {v7, p2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr p4, v2

    iget-object v2, p0, Ltz;->n:Lkotlin/jvm/functions/Function0;

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr p4, v5

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez p4, :cond_6

    if-ne v5, v4, :cond_7

    :cond_6
    new-instance v5, Lvz;

    invoke-direct {v5, v6, p2, v2, p1}, Lvz;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/platform/SoftwareKeyboardController;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v5, Lkotlin/jvm/functions/Function0;

    and-int/lit8 v8, p3, 0xe

    iget-boolean v2, p0, Ltz;->l:Z

    iget-object v4, p0, Ltz;->m:Lkotlin/jvm/functions/Function2;

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordResetKt;->a(Landroidx/compose/foundation/layout/ColumnScope;Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordViewState;ZZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->F()V

    goto/16 :goto_4

    :cond_8
    const p1, -0x25c13563

    invoke-interface {v7, p1}, Landroidx/compose/runtime/Composer;->L(I)V

    move-object p1, v1

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordViewState;->b:Ljava/lang/String;

    move p4, v2

    iget-boolean v2, p1, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordViewState;->c:Z

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordViewState;->e:Ljava/lang/String;

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p1

    iget-object v5, p0, Ltz;->h:Lkotlin/jvm/functions/Function0;

    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr p1, v8

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez p1, :cond_9

    if-ne v8, v4, :cond_a

    :cond_9
    new-instance v8, Lwz;

    invoke-direct {v8, v6, v5, p4}, Lwz;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v7, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v8, Lkotlin/jvm/functions/Function0;

    iget-object p1, p0, Ltz;->j:Landroidx/compose/foundation/pager/PagerState;

    invoke-interface {v7, p1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p4

    iget-object v5, p0, Ltz;->k:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr p4, v9

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr p4, v9

    invoke-interface {v7, p2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr p4, v9

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez p4, :cond_b

    if-ne v9, v4, :cond_c

    :cond_b
    new-instance v9, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/b;

    invoke-direct {v9, p1, v5, v6, p2}, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/b;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/platform/SoftwareKeyboardController;)V

    invoke-interface {v7, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_c
    check-cast v9, Lkotlin/jvm/functions/Function0;

    move-object v4, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v9

    and-int/lit8 v9, p3, 0xe

    iget-object v5, p0, Ltz;->i:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordResetCodeKt;->a(Landroidx/compose/foundation/layout/ColumnScope;Ljava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    move-object v7, v8

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_4

    :cond_d
    move-object p1, v1

    move p4, v2

    const v1, -0x22405004

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordViewState;->a:Ljava/lang/String;

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordViewState;->c:Z

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {v7, p2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr p1, v2

    iget-object v2, p0, Ltz;->g:Lkotlin/jvm/functions/Function0;

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr p1, v5

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez p1, :cond_e

    if-ne v5, v4, :cond_f

    :cond_e
    new-instance v5, Lvz;

    invoke-direct {v5, v6, p2, v2, p4}, Lvz;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/platform/SoftwareKeyboardController;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v5, Lkotlin/jvm/functions/Function0;

    and-int/lit8 v8, p3, 0xe

    iget-boolean v2, p0, Ltz;->c:Z

    iget-object v4, p0, Ltz;->d:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/components/ForgetPasswordEmailKt;->a(Landroidx/compose/foundation/layout/ColumnScope;Ljava/lang/String;ZZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_4

    :cond_10
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->D()V

    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
