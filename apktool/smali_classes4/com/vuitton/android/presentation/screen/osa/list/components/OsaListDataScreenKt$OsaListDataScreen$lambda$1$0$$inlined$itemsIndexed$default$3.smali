.class public final Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListDataScreenKt$OsaListDataScreen$lambda$1$0$$inlined$itemsIndexed$default$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function4<",
        "Landroidx/compose/foundation/lazy/LazyItemScope;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Lkotlin/jvm/functions/Function2;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListDataScreenKt$OsaListDataScreen$lambda$1$0$$inlined$itemsIndexed$default$3;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListDataScreenKt$OsaListDataScreen$lambda$1$0$$inlined$itemsIndexed$default$3;->c:Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListDataScreenKt$OsaListDataScreen$lambda$1$0$$inlined$itemsIndexed$default$3;->d:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListDataScreenKt$OsaListDataScreen$lambda$1$0$$inlined$itemsIndexed$default$3;->e:Lkotlin/jvm/functions/Function2;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListDataScreenKt$OsaListDataScreen$lambda$1$0$$inlined$itemsIndexed$default$3;->f:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListDataScreenKt$OsaListDataScreen$lambda$1$0$$inlined$itemsIndexed$default$3;->g:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScope;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    move-object/from16 v13, p3

    check-cast v13, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p4

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    and-int/lit8 v4, v3, 0x6

    if-nez v4, :cond_1

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v3

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    and-int/lit8 v3, v3, 0x30

    const/16 v4, 0x20

    if-nez v3, :cond_3

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v1, v3

    :cond_3
    and-int/lit16 v3, v1, 0x93

    const/16 v5, 0x92

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v3, v5, :cond_4

    move v3, v7

    goto :goto_3

    :cond_4
    move v3, v6

    :goto_3
    and-int/lit8 v5, v1, 0x1

    invoke-interface {v13, v5, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_a

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListDataScreenKt$OsaListDataScreen$lambda$1$0$$inlined$itemsIndexed$default$3;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;

    const v3, 0x2664ef6

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->L(I)V

    and-int/lit8 v3, v1, 0x70

    xor-int/lit8 v3, v3, 0x30

    if-le v3, v4, :cond_5

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_5
    and-int/lit8 v1, v1, 0x30

    if-ne v1, v4, :cond_6

    goto :goto_4

    :cond_6
    move v7, v6

    :cond_7
    :goto_4
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v7, :cond_8

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v3, :cond_9

    :cond_8
    new-instance v1, Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListDataScreenKt$OsaListDataScreen$2$1$2$1$1;

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListDataScreenKt$OsaListDataScreen$2$1$2$1$1;-><init>(I)V

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v1, Lkotlin/jvm/functions/Function1;

    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v2, v6, v1}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const-string v2, "osa_ongoingAppointment_view"

    invoke-static {v1, v2}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListDataScreenKt$OsaListDataScreen$lambda$1$0$$inlined$itemsIndexed$default$3;->c:Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-boolean v7, v1, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->g:Z

    iget-boolean v8, v1, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->h:Z

    const/16 v14, 0xc00

    const/4 v15, 0x0

    const/4 v6, 0x1

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListDataScreenKt$OsaListDataScreen$lambda$1$0$$inlined$itemsIndexed$default$3;->d:Lkotlin/jvm/functions/Function0;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListDataScreenKt$OsaListDataScreen$lambda$1$0$$inlined$itemsIndexed$default$3;->e:Lkotlin/jvm/functions/Function2;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListDataScreenKt$OsaListDataScreen$lambda$1$0$$inlined$itemsIndexed$default$3;->f:Lkotlin/jvm/functions/Function1;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListDataScreenKt$OsaListDataScreen$lambda$1$0$$inlined$itemsIndexed$default$3;->g:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v3 .. v15}, Lcom/vuitton/android/presentation/screen/osa/list/components/OsaListDataScreenKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;ZZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_5

    :cond_a
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->D()V

    :goto_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
