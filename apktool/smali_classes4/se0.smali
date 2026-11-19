.class public final synthetic Lse0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

.field public final synthetic d:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(ILcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput p1, p0, Lse0;->b:I

    iput-object p3, p0, Lse0;->c:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    iput-object p2, p0, Lse0;->d:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iput-object p5, p0, Lse0;->e:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lse0;->f:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    iget v1, v0, Lse0;->b:I

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    iget-object v3, v0, Lse0;->e:Lkotlin/jvm/functions/Function1;

    iget-object v4, v0, Lse0;->d:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    packed-switch v1, :pswitch_data_0

    move-object/from16 v13, p1

    check-cast v13, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScope;

    move-object/from16 v9, p2

    check-cast v9, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-object/from16 v14, p3

    check-cast v14, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p4

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v15, v0, Lse0;->c:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    iget-boolean v5, v15, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;->a:Z

    if-eqz v5, :cond_4

    const v5, 0x1923400d

    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->L(I)V

    new-instance v5, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v6, "PLPScreen_J1OVMuw$lambda$5$36$1"

    invoke-direct {v5, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const-string v6, "plp_contact_us_button"

    invoke-static {v5, v6}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-interface {v14, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_0

    if-ne v7, v2, :cond_1

    :cond_0
    new-instance v7, Lt8;

    const/16 v6, 0xc

    invoke-direct {v7, v4, v6}, Lt8;-><init>(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;I)V

    invoke-interface {v14, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    move-object/from16 v16, v7

    check-cast v16, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_2

    if-ne v6, v2, :cond_3

    :cond_2
    new-instance v6, Ltf0;

    const/4 v2, 0x5

    invoke-direct {v6, v3, v2}, Ltf0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v14, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    move-object/from16 v17, v6

    check-cast v17, Lkotlin/jvm/functions/Function0;

    const/16 v21, 0x0

    const/16 v22, 0x30

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v20, v14

    move-object v14, v5

    invoke-static/range {v14 .. v22}, Lcom/vuitton/android/presentation/contact/compose/ContactUsIconKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLjava/lang/String;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v14, v20

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_0

    :cond_4
    const v2, 0x192bcc94

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->F()V

    :goto_0
    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/common/AccessibilityExtKt;->a(Landroidx/compose/runtime/Composer;)Z

    move-result v2

    if-eqz v2, :cond_5

    const v2, 0x192cc9aa

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v2

    iget v6, v2, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->m:I

    const v2, 0x7f140364

    invoke-static {v14, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v7

    shl-int/lit8 v2, v1, 0x9

    const v3, 0xe000

    and-int/2addr v2, v3

    shl-int/lit8 v1, v1, 0x18

    const/high16 v3, 0xe000000

    and-int/2addr v1, v3

    or-int v15, v2, v1

    const/16 v16, 0xe1

    const/4 v5, 0x0

    iget-object v8, v0, Lse0;->f:Lkotlin/jvm/functions/Function0;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v5 .. v16}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScope$ComposeDefaultImpls;->a(Landroidx/compose/ui/Modifier;ILjava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/FloatingTopBarStyle;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScope;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_1

    :cond_5
    const v0, 0x193290b4

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->F()V

    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScope;

    move-object/from16 v5, p2

    check-cast v5, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-object/from16 v12, p3

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v6, p4

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v7, v0, Lse0;->c:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    iget-boolean v1, v7, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;->a:Z

    if-eqz v1, :cond_a

    const v1, -0x7c824303

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_6

    if-ne v5, v2, :cond_7

    :cond_6
    new-instance v5, Lt8;

    const/16 v1, 0xb

    invoke-direct {v5, v4, v1}, Lt8;-><init>(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;I)V

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    move-object v8, v5

    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_8

    if-ne v4, v2, :cond_9

    :cond_8
    new-instance v4, Lu8;

    const/16 v1, 0x1d

    invoke-direct {v4, v3, v1}, Lu8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    move-object v9, v4

    check-cast v9, Lkotlin/jvm/functions/Function0;

    const/4 v13, 0x0

    const/16 v14, 0x31

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v14}, Lcom/vuitton/android/presentation/contact/compose/ContactUsIconKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLjava/lang/String;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_2

    :cond_a
    const v1, -0x7c7d7b3d

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->F()V

    :goto_2
    const/4 v10, 0x0

    const/4 v11, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, v0, Lse0;->f:Lkotlin/jvm/functions/Function0;

    move-object v9, v12

    invoke-static/range {v6 .. v11}, Lcom/vuitton/android/presentation/screen/account/editavatar/components/TopBarAvatarKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
