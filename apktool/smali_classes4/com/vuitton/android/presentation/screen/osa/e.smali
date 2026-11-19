.class public final synthetic Lcom/vuitton/android/presentation/screen/osa/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:Landroidx/navigation3/runtime/NavBackStack;

.field public final synthetic g:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;Lkotlin/jvm/functions/Function0;Landroidx/navigation3/runtime/NavBackStack;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/osa/e;->b:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/osa/e;->c:Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/osa/e;->d:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/osa/e;->e:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/osa/e;->f:Landroidx/navigation3/runtime/NavBackStack;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/osa/e;->g:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/OsaRoutes$List;

    move-object/from16 v6, p2

    check-cast v6, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v0, v1, 0x11

    const/16 v2, 0x10

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/2addr v1, v3

    invoke-interface {v6, v1, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v6}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_a

    invoke-static {v2, v6}, Landroidx/hilt/lifecycle/viewmodel/compose/HiltViewModelKt;->a(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;)Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

    move-result-object v4

    instance-of v1, v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v1, :cond_1

    move-object v1, v2

    check-cast v1, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v1}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v1

    :goto_1
    move-object v5, v1

    goto :goto_2

    :cond_1
    sget-object v1, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->c:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_1

    :goto_2
    const-class v1, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;

    sget-object v3, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v3, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->a(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModel;

    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    iget-object v10, p0, Lcom/vuitton/android/presentation/screen/osa/e;->b:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;

    invoke-interface {v6, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    iget-object v9, p0, Lcom/vuitton/android/presentation/screen/osa/e;->c:Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    iget-object v11, p0, Lcom/vuitton/android/presentation/screen/osa/e;->d:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;

    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v3, :cond_2

    if-ne v4, v5, :cond_3

    :cond_2
    new-instance v4, Lcom/vuitton/android/presentation/screen/osa/OsaNavDisplayKt$OsaNavDisplay$2$4$1$1;

    invoke-direct {v4, v10, v9, v11, v0}, Lcom/vuitton/android/presentation/screen/osa/OsaNavDisplayKt$OsaNavDisplay$2$4$1$1;-><init>(Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v2, v4}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v12, p0, Lcom/vuitton/android/presentation/screen/osa/e;->f:Landroidx/navigation3/runtime/NavBackStack;

    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_4

    if-ne v2, v5, :cond_5

    :cond_4
    new-instance v2, Lx0;

    const/16 v0, 0xb

    invoke-direct {v2, v12, v0}, Lx0;-><init>(Landroidx/navigation3/runtime/NavBackStack;I)V

    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    move-object v3, v2

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/osa/e;->g:Lkotlin/jvm/functions/Function2;

    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_6

    if-ne v4, v5, :cond_7

    :cond_6
    new-instance v4, Lwd0;

    const/16 v0, 0xd

    invoke-direct {v4, v1, v2, v0}, Lwd0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-interface {v6, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_8

    if-ne v2, v5, :cond_9

    :cond_8
    new-instance v7, Ld1;

    const/16 v13, 0xe

    move-object v8, v1

    invoke-direct/range {v7 .. v13}, Ld1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v2, v7

    :cond_9
    move-object v5, v2

    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/4 v7, 0x0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/osa/e;->e:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v1 .. v7}, Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListComposableKt;->a(Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_3

    :cond_a
    const-string p0, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v0

    :cond_b
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->D()V

    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
