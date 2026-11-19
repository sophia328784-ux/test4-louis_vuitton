.class public final synthetic Ld00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;

.field public final synthetic c:Z

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Z

.field public final synthetic f:Z

.field public final synthetic g:Lkotlin/jvm/functions/Function2;

.field public final synthetic h:Lkotlin/jvm/functions/Function0;

.field public final synthetic i:Z

.field public final synthetic j:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

.field public final synthetic k:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;ZLkotlin/jvm/functions/Function1;ZZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld00;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;

    iput-boolean p2, p0, Ld00;->c:Z

    iput-object p3, p0, Ld00;->d:Lkotlin/jvm/functions/Function1;

    iput-boolean p4, p0, Ld00;->e:Z

    iput-boolean p5, p0, Ld00;->f:Z

    iput-object p6, p0, Ld00;->g:Lkotlin/jvm/functions/Function2;

    iput-object p7, p0, Ld00;->h:Lkotlin/jvm/functions/Function0;

    iput-boolean p8, p0, Ld00;->i:Z

    iput-object p9, p0, Ld00;->j:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iput-object p10, p0, Ld00;->k:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedVisibilityScope;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, v0, Ld00;->k:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    const v1, 0x58494fec

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    iget-object v1, v0, Ld00;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;->g:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    const-string v7, "Collection contains no element matching the predicate."

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    iget-object v8, v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v9, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_TYPE3:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-ne v8, v9, :cond_0

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    iget-object v9, v8, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v10, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_COUNTRY3:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-ne v9, v10, :cond_1

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    iget-object v9, v4, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v10, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER3:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-ne v9, v10, :cond_2

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;->g()Z

    move-result v3

    const/4 v6, 0x1

    xor-int/2addr v3, v6

    iget-object v7, v0, Ld00;->d:Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v9, :cond_3

    if-ne v10, v11, :cond_4

    :cond_3
    new-instance v10, Lu8;

    const/16 v9, 0x1a

    invoke-direct {v10, v7, v9}, Lu8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v2, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    move-object v7, v10

    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_5

    if-ne v10, v11, :cond_6

    :cond_5
    new-instance v10, Lg00;

    invoke-direct {v10, v1, v6}, Lg00;-><init>(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;I)V

    invoke-interface {v2, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v10, Lkotlin/jvm/functions/Function0;

    const/16 v18, 0x0

    const/16 v19, 0x2000

    iget-boolean v6, v0, Ld00;->c:Z

    iget-boolean v9, v0, Ld00;->e:Z

    move-object/from16 v16, v2

    move-object v2, v5

    move v5, v3

    move-object v3, v8

    move-object v8, v10

    iget-boolean v10, v0, Ld00;->f:Z

    iget-object v11, v0, Ld00;->g:Lkotlin/jvm/functions/Function2;

    iget-object v12, v0, Ld00;->h:Lkotlin/jvm/functions/Function0;

    iget-boolean v13, v0, Ld00;->i:Z

    iget-object v14, v0, Ld00;->j:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    const/4 v15, 0x0

    const/16 v17, 0x0

    invoke-static/range {v2 .. v19}, Lcom/vuitton/android/presentation/screen/dynamicform/components/fields/FormFieldPhoneKt;->b(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v2, v16

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_0

    :cond_7
    invoke-static {v7}, Lzy0;->c(Ljava/lang/String;)V

    return-object v6

    :cond_8
    invoke-static {v7}, Lzy0;->c(Ljava/lang/String;)V

    return-object v6

    :cond_9
    invoke-static {v7}, Lzy0;->c(Ljava/lang/String;)V

    return-object v6

    :cond_a
    const v0, 0x585aec5d

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->F()V

    :goto_0
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
