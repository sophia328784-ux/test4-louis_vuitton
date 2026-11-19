.class public final synthetic Log;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Z

.field public final synthetic e:Lkotlin/Function;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;I)V
    .locals 0

    const/4 p8, 0x1

    iput p8, p0, Log;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Log;->c:Ljava/lang/Object;

    iput-object p2, p0, Log;->f:Ljava/lang/Object;

    iput-object p3, p0, Log;->g:Ljava/lang/Object;

    iput-object p4, p0, Log;->h:Ljava/lang/Object;

    iput-object p5, p0, Log;->i:Ljava/lang/Object;

    iput-boolean p6, p0, Log;->d:Z

    iput-object p7, p0, Log;->e:Lkotlin/Function;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookUiModel;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;I)V
    .locals 0

    .line 21
    const/4 p8, 0x0

    iput p8, p0, Log;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Log;->c:Ljava/lang/Object;

    iput-object p2, p0, Log;->f:Ljava/lang/Object;

    iput-boolean p3, p0, Log;->d:Z

    iput-object p4, p0, Log;->g:Ljava/lang/Object;

    iput-object p5, p0, Log;->e:Lkotlin/Function;

    iput-object p6, p0, Log;->i:Ljava/lang/Object;

    iput-object p7, p0, Log;->h:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V
    .locals 0

    .line 22
    iput p9, p0, Log;->b:I

    iput-object p1, p0, Log;->c:Ljava/lang/Object;

    iput-object p2, p0, Log;->f:Ljava/lang/Object;

    iput-object p3, p0, Log;->g:Ljava/lang/Object;

    iput-boolean p4, p0, Log;->d:Z

    iput-object p5, p0, Log;->h:Ljava/lang/Object;

    iput-object p6, p0, Log;->e:Lkotlin/Function;

    iput-object p7, p0, Log;->i:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Log;->b:I

    const/4 v2, 0x1

    iget-object v3, v0, Log;->i:Ljava/lang/Object;

    iget-object v4, v0, Log;->e:Lkotlin/Function;

    iget-object v5, v0, Log;->h:Ljava/lang/Object;

    iget-object v6, v0, Log;->g:Ljava/lang/Object;

    iget-object v7, v0, Log;->f:Ljava/lang/Object;

    iget-object v8, v0, Log;->c:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/Modifier;

    move-object v10, v7

    check-cast v10, Lcom/vuitton/android/presentation/screen/search/SearchViewModel;

    move-object v11, v6

    check-cast v11, Ljava/lang/String;

    move-object v13, v5

    check-cast v13, Ljava/lang/String;

    move-object v14, v4

    check-cast v14, Lkotlin/jvm/functions/Function1;

    move-object v15, v3

    check-cast v15, Lkotlin/jvm/functions/Function1;

    move-object/from16 v16, p1

    check-cast v16, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x7

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v17

    iget-boolean v12, v0, Log;->d:Z

    invoke-static/range {v9 .. v17}, Lcom/vuitton/android/presentation/screen/search/components/StoreModeSearchScreenComposableKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/search/SearchViewModel;Ljava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    move-object v1, v8

    check-cast v1, Ljava/lang/String;

    check-cast v7, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionAssetUiModel;

    check-cast v6, Ljava/util/List;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    move-object/from16 v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    move-object/from16 v9, p2

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v9

    move-object v2, v7

    move-object v7, v3

    move-object v3, v6

    move-object v6, v4

    iget-boolean v4, v0, Log;->d:Z

    invoke-static/range {v1 .. v9}, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/components/PersonalSelectionsCurationAdvisorLookScreenKt;->a(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionAssetUiModel;Ljava/util/List;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    move-object v1, v8

    check-cast v1, Landroidx/compose/ui/Modifier;

    check-cast v7, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;

    check-cast v6, Ljava/lang/String;

    check-cast v5, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    move-object/from16 v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    move-object/from16 v9, p2

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v9

    move-object v2, v7

    move-object v7, v4

    move-object v4, v5

    move-object v5, v3

    move-object v3, v6

    iget-boolean v6, v0, Log;->d:Z

    invoke-static/range {v1 .. v9}, Lcom/vuitton/android/presentation/compose/components/LVTextButtonKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_2
    move-object v1, v8

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object v2, v7

    check-cast v2, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookUiModel;

    check-cast v6, Lkotlin/jvm/functions/Function2;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    move-object v7, v5

    check-cast v7, Lkotlin/jvm/functions/Function2;

    move-object/from16 v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    move-object/from16 v5, p2

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v5, 0x30001

    invoke-static {v5}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v9

    iget-boolean v0, v0, Log;->d:Z

    move-object v5, v4

    move-object v4, v6

    move-object v6, v3

    move v3, v0

    invoke-static/range {v1 .. v9}, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryCardKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookUiModel;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
