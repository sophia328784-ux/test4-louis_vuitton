.class public final synthetic Lrj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;

.field public final synthetic f:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;Lkotlin/jvm/functions/Function2;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lrj0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrj0;->d:Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;

    iput-object p2, p0, Lrj0;->c:Ljava/lang/String;

    iput-object p3, p0, Lrj0;->e:Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;

    iput-object p4, p0, Lrj0;->f:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;Lkotlin/jvm/functions/Function2;)V
    .locals 1

    .line 15
    const/4 v0, 0x1

    iput v0, p0, Lrj0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrj0;->c:Ljava/lang/String;

    iput-object p2, p0, Lrj0;->d:Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;

    iput-object p3, p0, Lrj0;->e:Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;

    iput-object p4, p0, Lrj0;->f:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lrj0;->b:I

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    iget-object v3, v0, Lrj0;->f:Lkotlin/jvm/functions/Function2;

    iget-object v4, v0, Lrj0;->e:Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;

    iget-object v5, v0, Lrj0;->d:Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;

    iget-object v0, v0, Lrj0;->c:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedVisibilityScope;

    move-object/from16 v8, p2

    check-cast v8, Landroidx/compose/runtime/Composer;

    move-object/from16 v9, p3

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const-string v1, "StoreAppointmentItem$lambda$0$3"

    const-string v9, "osa_appointmentInStore_radio"

    invoke-static {v1, v9}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const v9, 0x7f140f1f

    invoke-static {v8, v9}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v5, Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;->b:Ljava/lang/String;

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;->IN_STORE:Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;

    if-ne v4, v0, :cond_0

    move v12, v6

    goto :goto_0

    :cond_0
    move v12, v7

    :goto_0
    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_1

    if-ne v4, v2, :cond_2

    :cond_1
    new-instance v4, Lsj0;

    invoke-direct {v4, v3, v5, v7}, Lsj0;-><init>(Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;I)V

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    move-object v13, v4

    check-cast v13, Lkotlin/jvm/functions/Function1;

    const/high16 v17, 0xc00000

    const/16 v18, 0x4c

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const-string v15, "osa_appointmentInStore_text"

    move-object/from16 v16, v8

    move-object v8, v1

    invoke-static/range {v8 .. v18}, Lcom/vuitton/android/designkit/components/components/LVRadioButtonBlockKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedVisibilityScope;

    move-object/from16 v8, p2

    check-cast v8, Landroidx/compose/runtime/Composer;

    move-object/from16 v9, p3

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const-string v1, "StoreAppointmentItem$lambda$0$4"

    const-string v9, "osa_appointmentVirtual_radio"

    invoke-static {v1, v9}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const v9, 0x7f140f20

    invoke-static {v8, v9}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v5, Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;->i:Ljava/util/List;

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    xor-int/lit8 v11, v10, 0x1

    iget-object v10, v5, Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;->b:Ljava/lang/String;

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;->DISTANT:Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;

    if-ne v4, v0, :cond_3

    move v12, v6

    goto :goto_1

    :cond_3
    move v12, v7

    :goto_1
    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_4

    if-ne v4, v2, :cond_5

    :cond_4
    new-instance v4, Lsj0;

    invoke-direct {v4, v3, v5, v6}, Lsj0;-><init>(Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;I)V

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    move-object v13, v4

    check-cast v13, Lkotlin/jvm/functions/Function1;

    const/high16 v17, 0xc00000

    const/16 v18, 0x44

    const/4 v10, 0x0

    const/4 v14, 0x0

    const-string v15, "osa_appointmentVirtual_text"

    move-object/from16 v16, v8

    move-object v8, v1

    invoke-static/range {v8 .. v18}, Lcom/vuitton/android/designkit/components/components/LVRadioButtonBlockKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
