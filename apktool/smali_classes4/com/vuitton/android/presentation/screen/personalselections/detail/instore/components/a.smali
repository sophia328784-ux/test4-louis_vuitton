.class public final synthetic Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/components/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

.field public final synthetic c:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

.field public final synthetic d:Lkotlin/jvm/functions/Function3;

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(IILcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/components/a;->b:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/components/a;->c:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/components/a;->d:Lkotlin/jvm/functions/Function3;

    iput p1, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/components/a;->e:I

    iput p2, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/components/a;->f:I

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/components/a;->g:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/2addr v0, v3

    invoke-interface {v6, v0, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v0, 0x7f1411bf

    invoke-static {v6, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v2, :cond_1

    new-instance v1, Lul0;

    const/16 v3, 0x11

    invoke-direct {v1, v3}, Lul0;-><init>(I)V

    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v1, Lkotlin/jvm/functions/Function0;

    iget-object v9, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/components/a;->c:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_2

    if-ne v4, v2, :cond_3

    :cond_2
    new-instance v7, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/components/PersonalSelectionsInStoreComposableKt$PersonalSelectionsInStoreComposable$3$2$1;

    const-string v12, "show()V"

    const/4 v13, 0x0

    const/4 v8, 0x0

    const-class v10, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    const-string v11, "show"

    invoke-direct/range {v7 .. v13}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v4, v7

    :cond_3
    check-cast v4, Lkotlin/reflect/KFunction;

    move-object v3, v4

    check-cast v3, Lkotlin/jvm/functions/Function0;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/components/a;->d:Lkotlin/jvm/functions/Function3;

    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    iget v7, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/components/a;->e:I

    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v8

    or-int/2addr v5, v8

    iget v8, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/components/a;->f:I

    invoke-interface {v6, v8}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v9

    or-int/2addr v5, v9

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v5, :cond_4

    if-ne v9, v2, :cond_5

    :cond_4
    new-instance v9, Ltj;

    const/16 v2, 0x8

    invoke-direct {v9, v4, v7, v8, v2}, Ltj;-><init>(Lkotlin/jvm/functions/Function3;III)V

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    move-object v4, v9

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/16 v7, 0x180

    move-object v2, v1

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/components/a;->b:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/components/a;->g:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/components/PersonalSelectionsInStoreComposableKt;->a(Ljava/lang/String;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_6
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
