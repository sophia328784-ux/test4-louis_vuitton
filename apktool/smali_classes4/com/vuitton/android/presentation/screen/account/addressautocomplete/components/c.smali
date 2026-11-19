.class public final synthetic Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;

.field public final synthetic c:Landroidx/compose/runtime/MutableState;

.field public final synthetic d:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/c;->b:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/c;->c:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/c;->d:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/foundation/layout/PaddingValues;

    move-object/from16 v4, p2

    check-cast v4, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v3, v1, 0x6

    const/4 v7, 0x2

    if-nez v3, :cond_1

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    move v3, v7

    :goto_0
    or-int/2addr v1, v3

    :cond_1
    and-int/lit8 v3, v1, 0x13

    const/16 v5, 0x12

    if-eq v3, v5, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    and-int/lit8 v5, v1, 0x1

    invoke-interface {v4, v5, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_d

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    move v3, v1

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v5, "AddressEditorComposable$lambda$8"

    invoke-direct {v1, v5}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    shl-int/lit8 v3, v3, 0x6

    and-int/lit16 v3, v3, 0x380

    or-int/lit16 v5, v3, 0x6006

    const/4 v6, 0x5

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/dynamicform/components/DynamicFormToolBox;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;FLandroidx/compose/runtime/Composer;II)Landroidx/compose/ui/Modifier;

    move-result-object v3

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/c;->c:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;

    iget-object v5, v2, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/c;->b:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;

    invoke-interface {v4, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v2, :cond_3

    if-ne v6, v15, :cond_4

    :cond_3
    new-instance v8, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressEditorComposableKt$AddressEditorComposable$7$1$1;

    const-string v13, "onFieldUpdated(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;)V"

    const/4 v14, 0x0

    const/4 v9, 0x2

    const-class v11, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;

    const-string v12, "onFieldUpdated"

    invoke-direct/range {v8 .. v14}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v4, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v6, v8

    :cond_4
    check-cast v6, Lkotlin/reflect/KFunction;

    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-interface {v4, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v2, :cond_5

    if-ne v8, v15, :cond_6

    :cond_5
    new-instance v8, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressEditorComposableKt$AddressEditorComposable$7$2$1;

    const-string v13, "onFieldClicked(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)V"

    const/4 v14, 0x0

    const/4 v9, 0x1

    const-class v11, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;

    const-string v12, "onFieldClicked"

    invoke-direct/range {v8 .. v14}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v4, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v8, Lkotlin/reflect/KFunction;

    move-object v2, v8

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v4, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v8, v9

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_7

    if-ne v9, v15, :cond_8

    :cond_7
    new-instance v9, Ll0;

    const/4 v8, 0x5

    invoke-direct {v9, v10, v1, v8}, Ll0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    move-object v1, v9

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v4, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_9

    if-ne v9, v15, :cond_a

    :cond_9
    new-instance v8, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressEditorComposableKt$AddressEditorComposable$7$4$1;

    const-string v13, "onPhoneAdditionRequested(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/phone/PhoneType;)V"

    const/4 v14, 0x0

    const/4 v9, 0x1

    const-class v11, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;

    const-string v12, "onPhoneAdditionRequested"

    invoke-direct/range {v8 .. v14}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v4, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v9, v8

    :cond_a
    check-cast v9, Lkotlin/reflect/KFunction;

    move-object/from16 v16, v9

    check-cast v16, Lkotlin/jvm/functions/Function1;

    invoke-interface {v4, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_b

    if-ne v9, v15, :cond_c

    :cond_b
    new-instance v8, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressEditorComposableKt$AddressEditorComposable$7$5$1;

    const-string v13, "onPhoneDeletionRequested(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/phone/PhoneType;)V"

    const/4 v14, 0x0

    const/4 v9, 0x1

    const-class v11, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;

    const-string v12, "onPhoneDeletionRequested"

    invoke-direct/range {v8 .. v14}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v4, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v9, v8

    :cond_c
    check-cast v9, Lkotlin/reflect/KFunction;

    move-object v12, v9

    check-cast v12, Lkotlin/jvm/functions/Function1;

    new-instance v8, Lf1;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/c;->d:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    invoke-direct {v8, v0, v10, v7}, Lf1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const v0, -0x202542b7

    invoke-static {v0, v8, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v20

    const/high16 v24, 0xc00000

    const v25, 0x5fc1a

    move-object/from16 v22, v4

    const/4 v4, 0x0

    move-object v8, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v11, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object v10, v1

    move-object v9, v2

    invoke-static/range {v3 .. v25}, Lcom/vuitton/android/presentation/screen/dynamicform/components/DynamicFormComposableKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;ZFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZZZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;ZLandroidx/compose/runtime/Composer;III)V

    goto :goto_2

    :cond_d
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
