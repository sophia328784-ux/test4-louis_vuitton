.class public final synthetic Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/a;->b:Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/a;->b:Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsActivity;

    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsActivity;->p:Landroidx/lifecycle/ViewModelLazy;

    move-object/from16 v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v3, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsActivity;->q:Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsActivity$Companion;

    and-int/lit8 v3, v1, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v4, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    and-int/2addr v1, v5

    invoke-interface {v7, v1, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewModel;

    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewModel;

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v0, :cond_1

    if-ne v1, v3, :cond_2

    :cond_1
    new-instance v9, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsActivity$onCreate$1$1$1$1;

    const-string v14, "onCancellationReasonSelected(Lcom/vuitton/android/presentation/screen/repairs/models/CancellationReasonUiModel;)V"

    const/4 v15, 0x0

    const/4 v10, 0x1

    const-class v12, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewModel;

    const-string v13, "onCancellationReasonSelected"

    invoke-direct/range {v9 .. v15}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v1, v9

    :cond_2
    check-cast v1, Lkotlin/reflect/KFunction;

    move-object v9, v1

    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_4

    if-ne v1, v3, :cond_3

    goto :goto_1

    :cond_3
    move-object v10, v3

    goto :goto_2

    :cond_4
    :goto_1
    new-instance v0, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsActivity$onCreate$1$1$2$1;

    const-string v5, "onBackPressed()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    move-object v4, v3

    const-class v3, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsActivity;

    move-object v10, v4

    const-string v4, "onBackPressed"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_2
    check-cast v1, Lkotlin/reflect/KFunction;

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_5

    if-ne v1, v10, :cond_6

    :cond_5
    new-instance v1, Lw1;

    const/16 v0, 0xf

    invoke-direct {v1, v2, v0}, Lw1;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function0;

    move-object v3, v8

    const/4 v8, 0x0

    move-object v4, v9

    invoke-static/range {v3 .. v8}, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/components/CancellationReasonsComposableKt;->a(Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_3

    :cond_7
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->D()V

    :goto_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
