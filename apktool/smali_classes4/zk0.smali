.class public final synthetic Lzk0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;

.field public final synthetic d:Lkotlin/jvm/functions/Function2;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    iput p5, p0, Lzk0;->b:I

    iput-object p1, p0, Lzk0;->c:Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;

    iput-object p2, p0, Lzk0;->d:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Lzk0;->e:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lzk0;->f:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget v0, p0, Lzk0;->b:I

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v2, 0x0

    const/16 v3, 0x10

    const/4 v4, 0x1

    iget-object v5, p0, Lzk0;->d:Lkotlin/jvm/functions/Function2;

    iget-object v6, p0, Lzk0;->c:Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;

    packed-switch v0, :pswitch_data_0

    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/lazy/LazyItemScope;

    move-object/from16 v12, p2

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v7, p3

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v0, v7, 0x11

    if-eq v0, v3, :cond_0

    move v2, v4

    :cond_0
    and-int/lit8 v0, v7, 0x1

    invoke-interface {v12, v0, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v8, v6, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->k:Ljava/util/List;

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_1

    if-ne v2, v1, :cond_2

    :cond_1
    new-instance v2, Ll3;

    const/4 v0, 0x7

    invoke-direct {v2, v0, v5}, Ll3;-><init>(ILkotlin/jvm/functions/Function2;)V

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    move-object v9, v2

    check-cast v9, Lkotlin/jvm/functions/Function1;

    const/4 v13, 0x0

    const/4 v7, 0x0

    iget-object v10, p0, Lzk0;->e:Lkotlin/jvm/functions/Function1;

    iget-object v11, p0, Lzk0;->f:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v7 .. v13}, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPDispatchFilterComposableKt;->b(Landroidx/compose/ui/Modifier;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_0

    :cond_3
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->D()V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/lazy/LazyItemScope;

    move-object/from16 v12, p2

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v7, p3

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v0, v7, 0x11

    if-eq v0, v3, :cond_4

    move v2, v4

    :cond_4
    and-int/lit8 v0, v7, 0x1

    invoke-interface {v12, v0, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v8, v6, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->k:Ljava/util/List;

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_5

    if-ne v2, v1, :cond_6

    :cond_5
    new-instance v2, Ll3;

    const/4 v0, 0x6

    invoke-direct {v2, v0, v5}, Ll3;-><init>(ILkotlin/jvm/functions/Function2;)V

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    move-object v9, v2

    check-cast v9, Lkotlin/jvm/functions/Function1;

    const/4 v13, 0x0

    const/4 v7, 0x0

    iget-object v10, p0, Lzk0;->e:Lkotlin/jvm/functions/Function1;

    iget-object v11, p0, Lzk0;->f:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v7 .. v13}, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPDispatchFilterComposableKt;->b(Landroidx/compose/ui/Modifier;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_7
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
