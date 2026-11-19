.class public final synthetic Lls0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    iput p5, p0, Lls0;->b:I

    iput-object p1, p0, Lls0;->c:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lls0;->d:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iput-object p3, p0, Lls0;->e:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lls0;->f:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget v0, p0, Lls0;->b:I

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v2, 0x0

    const/16 v3, 0x10

    const/4 v4, 0x1

    iget-object v5, p0, Lls0;->f:Landroidx/compose/runtime/MutableState;

    iget-object v6, p0, Lls0;->d:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    check-cast p1, Landroidx/compose/ui/Modifier;

    move-object v8, p2

    check-cast v8, Landroidx/compose/runtime/Composer;

    packed-switch v0, :pswitch_data_0

    move-object/from16 v0, p3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz p1, :cond_0

    const-string v7, "RepairListComposable$lambda$5"

    invoke-static {p1, v7}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 p1, v0, 0x11

    if-eq p1, v3, :cond_1

    move v2, v4

    :cond_1
    and-int/lit8 p1, v0, 0x1

    invoke-interface {v8, p1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez p1, :cond_2

    if-ne v0, v1, :cond_3

    :cond_2
    new-instance v0, Lt8;

    const/16 p1, 0x13

    invoke-direct {v0, v6, p1}, Lt8;-><init>(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    move-object v10, v0

    check-cast v10, Lkotlin/jvm/functions/Function0;

    const/4 v7, 0x0

    iget-object v11, p0, Lls0;->e:Lkotlin/jvm/functions/Function0;

    iget-object v12, p0, Lls0;->c:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v7 .. v12}, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListComposableKt;->c(ILandroidx/compose/runtime/Composer;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_4
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->D()V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object/from16 v0, p3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz p1, :cond_5

    const-string v7, "RepairListBffComposable$lambda$5"

    invoke-static {p1, v7}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 p1, v0, 0x11

    if-eq p1, v3, :cond_6

    move v2, v4

    :cond_6
    and-int/lit8 p1, v0, 0x1

    invoke-interface {v8, p1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez p1, :cond_7

    if-ne v0, v1, :cond_8

    :cond_7
    new-instance v0, Lt8;

    const/16 p1, 0x12

    invoke-direct {v0, v6, p1}, Lt8;-><init>(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;I)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    move-object v10, v0

    check-cast v10, Lkotlin/jvm/functions/Function0;

    const/4 v7, 0x0

    iget-object v11, p0, Lls0;->e:Lkotlin/jvm/functions/Function0;

    iget-object v12, p0, Lls0;->c:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v7 .. v12}, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListComposableKt;->c(ILandroidx/compose/runtime/Composer;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    goto :goto_1

    :cond_9
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
