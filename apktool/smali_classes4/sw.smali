.class public final synthetic Lsw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lsw;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lsw;->d:I

    iput-object p3, p0, Lsw;->c:Ljava/lang/Object;

    iput-object p6, p0, Lsw;->g:Ljava/lang/Object;

    iput-object p4, p0, Lsw;->f:Ljava/lang/Object;

    iput-object p5, p0, Lsw;->h:Ljava/lang/Object;

    iput p2, p0, Lsw;->e:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;II)V
    .locals 1

    .line 19
    const/4 v0, 0x4

    iput v0, p0, Lsw;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsw;->c:Ljava/lang/Object;

    iput-object p2, p0, Lsw;->f:Ljava/lang/Object;

    iput-object p3, p0, Lsw;->h:Ljava/lang/Object;

    iput-object p4, p0, Lsw;->g:Ljava/lang/Object;

    iput p5, p0, Lsw;->d:I

    iput p6, p0, Lsw;->e:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function0;I)V
    .locals 1

    .line 20
    const/4 v0, 0x5

    iput v0, p0, Lsw;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsw;->c:Ljava/lang/Object;

    iput-object p2, p0, Lsw;->f:Ljava/lang/Object;

    iput-object p3, p0, Lsw;->h:Ljava/lang/Object;

    iput p4, p0, Lsw;->d:I

    iput-object p5, p0, Lsw;->g:Ljava/lang/Object;

    iput p6, p0, Lsw;->e:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;IILandroidx/compose/runtime/MutableState;)V
    .locals 1

    .line 21
    const/4 v0, 0x7

    iput v0, p0, Lsw;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsw;->c:Ljava/lang/Object;

    iput-object p2, p0, Lsw;->f:Ljava/lang/Object;

    iput-object p3, p0, Lsw;->g:Ljava/lang/Object;

    iput p4, p0, Lsw;->d:I

    iput p5, p0, Lsw;->e:I

    iput-object p6, p0, Lsw;->h:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;III)V
    .locals 0

    .line 22
    iput p7, p0, Lsw;->b:I

    iput-object p1, p0, Lsw;->c:Ljava/lang/Object;

    iput-object p2, p0, Lsw;->f:Ljava/lang/Object;

    iput-object p3, p0, Lsw;->g:Ljava/lang/Object;

    iput-object p4, p0, Lsw;->h:Ljava/lang/Object;

    iput p5, p0, Lsw;->d:I

    iput p6, p0, Lsw;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lsw;->b:I

    iget v2, v0, Lsw;->e:I

    iget v3, v0, Lsw;->d:I

    iget-object v4, v0, Lsw;->h:Ljava/lang/Object;

    iget-object v5, v0, Lsw;->g:Ljava/lang/Object;

    iget-object v6, v0, Lsw;->f:Ljava/lang/Object;

    iget-object v7, v0, Lsw;->c:Ljava/lang/Object;

    const/4 v8, 0x1

    packed-switch v1, :pswitch_data_0

    move-object v10, v7

    check-cast v10, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-object v11, v6

    check-cast v11, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    check-cast v5, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

    check-cast v4, Landroidx/compose/runtime/State;

    move-object/from16 v14, p1

    check-cast v14, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    and-int/lit8 v1, v0, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eq v1, v6, :cond_0

    move v1, v8

    goto :goto_0

    :cond_0
    move v1, v7

    :goto_0
    and-int/2addr v0, v8

    invoke-interface {v14, v0, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/webview/WebViewUiModel;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/webview/WebViewUiModel;->a:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v0, :cond_1

    if-ne v1, v4, :cond_2

    :cond_1
    new-instance v1, Lmd0;

    invoke-direct {v1, v3, v2, v8, v5}, Lmd0;-><init>(IIILjava/lang/Object;)V

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    move-object v12, v1

    check-cast v12, Lkotlin/jvm/functions/Function1;

    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_3

    if-ne v1, v4, :cond_4

    :cond_3
    new-instance v1, Lcom/vuitton/android/presentation/screen/webview/b;

    invoke-direct {v1, v5, v7}, Lcom/vuitton/android/presentation/screen/webview/b;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    move-object v13, v1

    check-cast v13, Lkotlin/jvm/functions/Function0;

    sget v0, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v1, v0, 0x3

    shl-int/lit8 v0, v0, 0x6

    or-int v15, v1, v0

    invoke-static/range {v9 .. v15}, Lcom/vuitton/android/presentation/contact/compose/ContactUsBottomSheetKt;->a(Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_5
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    move-object v1, v7

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object v2, v6

    check-cast v2, Ljava/lang/String;

    check-cast v5, Ljava/util/List;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    move v9, v3

    move-object v3, v5

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v6, p2

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v6, v9, 0x1

    invoke-static {v6}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    iget v7, v0, Lsw;->e:I

    invoke-static/range {v1 .. v7}, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/SelectableItemsCardKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    move-object v1, v7

    check-cast v1, Landroidx/compose/ui/Modifier;

    check-cast v6, Ljava/lang/String;

    move-object v3, v4

    check-cast v3, Ljava/lang/String;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    move v9, v2

    move-object v2, v6

    move-object/from16 v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    move-object/from16 v4, p2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v4, v9, 0x1

    invoke-static {v4}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v7

    iget v4, v0, Lsw;->d:I

    invoke-static/range {v1 .. v7}, Lcom/vuitton/android/presentation/screen/reinsurance/components/ReinsuranceListKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_2
    move v9, v3

    move-object v1, v7

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object v2, v6

    check-cast v2, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;

    move-object v3, v4

    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object v4, v5

    check-cast v4, Lkotlin/jvm/functions/Function0;

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v6, p2

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v6, v9, 0x1

    invoke-static {v6}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    iget v7, v0, Lsw;->e:I

    invoke-static/range {v1 .. v7}, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationPreferencesKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_3
    move v9, v2

    check-cast v7, Ljava/lang/String;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    check-cast v6, Ljava/lang/String;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v3, p1

    check-cast v3, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v1, v9, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v2

    iget v1, v0, Lsw;->d:I

    move-object/from16 v16, v6

    move-object v6, v4

    move-object v4, v7

    move-object v7, v5

    move-object/from16 v5, v16

    invoke-static/range {v1 .. v7}, Lcom/vuitton/android/presentation/screen/account/myinformation/components/MyInformationScreenKt;->a(IILandroidx/compose/runtime/Composer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_4
    move v9, v3

    move-object v1, v7

    check-cast v1, Landroidx/compose/material3/ColorScheme;

    move-object v2, v6

    check-cast v2, Landroidx/compose/material3/Shapes;

    move-object v3, v5

    check-cast v3, Landroidx/compose/material3/Typography;

    check-cast v4, Lkotlin/jvm/functions/Function2;

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v6, p2

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v6, v9, 0x1

    invoke-static {v6}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    iget v7, v0, Lsw;->e:I

    invoke-static/range {v1 .. v7}, Landroidx/compose/material3/MaterialThemeKt;->b(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/Shapes;Landroidx/compose/material3/Typography;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_5
    move v9, v3

    move-object v1, v7

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object v2, v6

    check-cast v2, Ljava/lang/String;

    move-object v3, v5

    check-cast v3, Ljava/lang/String;

    check-cast v4, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v6, p2

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v6, v9, 0x1

    invoke-static {v6}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    iget v7, v0, Lsw;->e:I

    invoke-static/range {v1 .. v7}, Lcom/vuitton/android/presentation/screen/feed/components/subcomponents/FeedWelcomeKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_6
    move v9, v3

    move-object v1, v7

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object v2, v6

    check-cast v2, Lcom/vuitton/android/presentation/compose/components/FabStyle;

    move-object v3, v5

    check-cast v3, Lkotlin/jvm/functions/Function0;

    check-cast v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v6, p2

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v6, v9, 0x1

    invoke-static {v6}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    iget v7, v0, Lsw;->e:I

    invoke-static/range {v1 .. v7}, Lcom/vuitton/android/presentation/compose/components/FabNoElevationKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/compose/components/FabStyle;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
