.class public abstract Lcom/vuitton/android/presentation/screen/booking/form/components/module/BookingModuleChoiceChipsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 13

    move-object/from16 v4, p3

    const-string v0, "BookingModuleChoiceChips"

    if-eqz p0, :cond_0

    invoke-static {p0, v0}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    :cond_0
    move-object v1, p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x30186635

    move-object/from16 v2, p4

    invoke-interface {v2, p0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    :goto_0
    or-int p0, p5, p0

    invoke-virtual {v9, p1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_1

    :cond_2
    const/16 v2, 0x10

    :goto_1
    or-int/2addr p0, v2

    invoke-virtual {v9, p2}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x100

    goto :goto_2

    :cond_3
    const/16 v2, 0x80

    :goto_2
    or-int/2addr p0, v2

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x800

    goto :goto_3

    :cond_4
    const/16 v2, 0x400

    :goto_3
    or-int/2addr p0, v2

    and-int/lit16 v2, p0, 0x493

    const/16 v5, 0x492

    const/4 v12, 0x0

    const/4 v6, 0x1

    if-eq v2, v5, :cond_5

    move v2, v6

    goto :goto_4

    :cond_5
    move v2, v12

    :goto_4
    and-int/2addr p0, v6

    invoke-virtual {v9, p0, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/high16 p0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_6

    const v2, -0x189ed857

    invoke-static {v9, v2, v0, p0}, Lo60;->c(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object p0

    const/4 v0, 0x6

    invoke-static {p0, v9, v0, v12}, Lcom/vuitton/android/presentation/screen/booking/form/components/module/BookingModuleGridKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_5

    :cond_6
    const v0, -0x189d1183

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    iget-object v5, p1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;->b:Ljava/util/List;

    invoke-static {v1, p0}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v6

    new-instance p0, Lf1;

    const/16 v0, 0x8

    invoke-direct {p0, p1, v4, v0}, Lf1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const v0, -0x3eda7c50

    invoke-static {v0, p0, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v8

    const/16 v10, 0xd80

    const/4 v11, 0x0

    const/4 v7, 0x3

    invoke-static/range {v5 .. v11}, Lcom/vuitton/android/presentation/screen/booking/form/components/module/BookingModuleGridKt;->a(Ljava/util/List;Landroidx/compose/ui/Modifier;ILkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_5

    :cond_7
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_5
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    if-eqz p0, :cond_8

    new-instance v0, Lvf;

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lvf;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;ZLkotlin/jvm/functions/Function1;II)V

    iput-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_8
    return-void
.end method
