.class public final synthetic Lf30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    iput p5, p0, Lf30;->b:I

    iput-object p1, p0, Lf30;->c:Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;

    iput-object p2, p0, Lf30;->d:Landroid/content/Context;

    iput-object p3, p0, Lf30;->e:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lf30;->f:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    move-object/from16 v0, p0

    iget v1, v0, Lf30;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x10

    const/4 v5, 0x1

    iget-object v6, v0, Lf30;->d:Landroid/content/Context;

    iget-object v7, v0, Lf30;->c:Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/layout/ColumnScope;

    move-object/from16 v8, p2

    check-cast v8, Landroidx/compose/runtime/Composer;

    move-object/from16 v9, p3

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v1, v9, 0x11

    if-eq v1, v4, :cond_0

    move v3, v5

    :cond_0
    and-int/lit8 v1, v9, 0x1

    invoke-interface {v8, v1, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, v7, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->a:Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;

    sget-object v3, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$None;->f:Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$None;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const v3, -0x578df282

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->L(I)V

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;->a:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    invoke-static {v3, v6}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;->b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    invoke-static {v3, v6}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;->d:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    invoke-static {v3, v6}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;->c:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    if-eqz v1, :cond_1

    invoke-static {v1, v6}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    move-object/from16 v24, v2

    const/16 v29, 0x0

    const v30, 0x5f75b

    move-object/from16 v27, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget-object v1, v0, Lf30;->e:Lkotlin/jvm/functions/Function0;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    iget-object v0, v0, Lf30;->f:Lkotlin/jvm/functions/Function0;

    const/16 v28, 0x0

    move-object/from16 v26, v0

    move-object/from16 v19, v1

    invoke-static/range {v8 .. v30}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZLcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v0, v27

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_0

    :cond_2
    move-object v0, v8

    const v1, -0x57847295

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_0

    :cond_3
    move-object v0, v8

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->D()V

    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/layout/ColumnScope;

    move-object/from16 v8, p2

    check-cast v8, Landroidx/compose/runtime/Composer;

    move-object/from16 v9, p3

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sget v10, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleContentKt;->a:F

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v1, v9, 0x11

    if-eq v1, v4, :cond_4

    move v3, v5

    :cond_4
    and-int/lit8 v1, v9, 0x1

    invoke-interface {v8, v1, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, v7, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->a:Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;

    sget-object v3, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$None;->f:Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet$None;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const v3, 0x5f47d1db

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->L(I)V

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;->a:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    invoke-static {v3, v6}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;->b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    invoke-static {v3, v6}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;->d:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    invoke-static {v3, v6}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;->c:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    if-eqz v1, :cond_5

    invoke-static {v1, v6}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    :cond_5
    move-object/from16 v24, v2

    const/16 v29, 0x0

    const v30, 0x5f75b

    move-object/from16 v27, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget-object v1, v0, Lf30;->e:Lkotlin/jvm/functions/Function0;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    iget-object v0, v0, Lf30;->f:Lkotlin/jvm/functions/Function0;

    const/16 v28, 0x0

    move-object/from16 v26, v0

    move-object/from16 v19, v1

    invoke-static/range {v8 .. v30}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZLcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v0, v27

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_1

    :cond_6
    move-object v0, v8

    const v1, 0x5f50d8b0

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_1

    :cond_7
    move-object v0, v8

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
