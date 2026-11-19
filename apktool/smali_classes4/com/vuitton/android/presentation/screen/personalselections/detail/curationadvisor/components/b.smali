.class public final synthetic Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/components/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:Lkotlin/jvm/functions/Function0;

.field public final synthetic c:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

.field public final synthetic d:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

.field public final synthetic e:Lkotlin/jvm/functions/Function3;

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(IILcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/components/b;->b:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/components/b;->c:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/components/b;->d:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/components/b;->e:Lkotlin/jvm/functions/Function3;

    iput p1, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/components/b;->f:I

    iput p2, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/components/b;->g:I

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    check-cast v9, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScope;

    move-object/from16 v5, p2

    check-cast v5, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-object/from16 v10, p3

    check-cast v10, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p4

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->t:I

    const v3, 0x7f14036a

    invoke-static {v10, v3}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v3

    shl-int/lit8 v4, v1, 0x9

    const v6, 0xe000

    and-int/2addr v4, v6

    shl-int/lit8 v1, v1, 0x18

    const/high16 v6, 0xe000000

    and-int/2addr v1, v6

    or-int v11, v4, v1

    const/16 v12, 0xe1

    const/4 v1, 0x0

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/components/b;->b:Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v12}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScope$ComposeDefaultImpls;->a(Landroidx/compose/ui/Modifier;ILjava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/FloatingTopBarStyle;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScope;Landroidx/compose/runtime/Composer;II)V

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/components/b;->c:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    iget-boolean v1, v11, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;->a:Z

    if-eqz v1, :cond_4

    const v1, 0x4d184391    # 1.59660304E8f

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/components/b;->d:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v1, :cond_0

    if-ne v2, v9, :cond_1

    :cond_0
    new-instance v2, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/components/PersonalSelectionsCurationAdvisorScreenKt$PersonalSelectionsCurationAdvisorScreen$2$1$1$1;

    const-string v7, "show()V"

    const/4 v8, 0x0

    const/4 v3, 0x0

    const-class v5, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    const-string v6, "show"

    invoke-direct/range {v2 .. v8}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v2, Lkotlin/reflect/KFunction;

    move-object v12, v2

    check-cast v12, Lkotlin/jvm/functions/Function0;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/components/b;->e:Lkotlin/jvm/functions/Function3;

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    iget v3, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/components/b;->f:I

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v4

    or-int/2addr v2, v4

    iget v0, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/components/b;->g:I

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v4

    or-int/2addr v2, v4

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_2

    if-ne v4, v9, :cond_3

    :cond_2
    new-instance v4, La20;

    const/4 v2, 0x2

    invoke-direct {v4, v3, v0, v2, v1}, La20;-><init>(IIILjava/lang/Object;)V

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    move-object v13, v4

    check-cast v13, Lkotlin/jvm/functions/Function0;

    const/high16 v17, 0x30000

    const/16 v18, 0x11

    move-object/from16 v16, v10

    const/4 v10, 0x0

    const/4 v14, 0x0

    const-string v15, "personalSelectionsDetail_contactUs_button"

    invoke-static/range {v10 .. v18}, Lcom/vuitton/android/presentation/contact/compose/ContactUsIconKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLjava/lang/String;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v10, v16

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_0

    :cond_4
    const v0, 0x4d1ed912    # 1.66564128E8f

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->F()V

    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
