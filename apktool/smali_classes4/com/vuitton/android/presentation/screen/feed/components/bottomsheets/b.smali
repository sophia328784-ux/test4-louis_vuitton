.class public final synthetic Lcom/vuitton/android/presentation/screen/feed/components/bottomsheets/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;

.field public final synthetic c:Lkotlin/jvm/functions/Function0;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/components/bottomsheets/b;->b:Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/feed/components/bottomsheets/b;->c:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/feed/components/bottomsheets/b;->d:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v3, v2, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v4, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    and-int/2addr v2, v5

    invoke-interface {v1, v2, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v4, :cond_1

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v5, v4, :cond_2

    :cond_1
    new-instance v5, Lcom/vuitton/android/presentation/screen/feed/components/bottomsheets/PermissionBottomSheetContentKt$PermissionBottomSheetContent$1$1$1;

    invoke-direct {v5, v2, v6}, Lcom/vuitton/android/presentation/screen/feed/components/bottomsheets/PermissionBottomSheetContentKt$PermissionBottomSheetContent$1$1$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v3, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-string v3, "PermissionBottomSheetContent$lambda$0"

    const-string v4, "feedBottomSheet_permission_view"

    invoke-static {v3, v4}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/feed/components/bottomsheets/b;->b:Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->a:Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;

    iget-object v5, v4, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;->a:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    invoke-static {v5, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, v4, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;->b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    invoke-static {v7, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v4, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;->d:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    invoke-static {v8, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;->c:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    if-eqz v4, :cond_3

    invoke-static {v4, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    :cond_3
    move-object/from16 v16, v6

    const/16 v21, 0x0

    const v22, 0x5f75a

    move-object/from16 v19, v1

    const/4 v1, 0x0

    move-object v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v9, v2

    move-object v2, v5

    move-object v5, v7

    move-object v7, v8

    const/4 v8, 0x0

    move-object v10, v9

    const/4 v9, 0x0

    move-object v11, v10

    const/4 v10, 0x0

    move-object v12, v11

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/feed/components/bottomsheets/b;->c:Lkotlin/jvm/functions/Function0;

    move-object v13, v12

    const/4 v12, 0x0

    move-object v14, v13

    const/4 v13, 0x0

    move-object v15, v14

    const/4 v14, 0x0

    move-object/from16 v17, v15

    const/4 v15, 0x0

    move-object/from16 v18, v17

    const/16 v17, 0x0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/feed/components/bottomsheets/b;->d:Lkotlin/jvm/functions/Function0;

    const/16 v20, 0x0

    move-object/from16 v23, v18

    move-object/from16 v18, v0

    move-object/from16 v0, v23

    invoke-static/range {v0 .. v22}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZLcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;III)V

    goto :goto_1

    :cond_4
    move-object/from16 v19, v1

    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
