.class public final synthetic Lzr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Z)V
    .locals 0

    .line 17
    iput p2, p0, Lzr;->b:I

    iput-object p3, p0, Lzr;->f:Ljava/lang/Object;

    iput-object p4, p0, Lzr;->g:Ljava/lang/Object;

    iput-boolean p6, p0, Lzr;->c:Z

    iput-object p5, p0, Lzr;->d:Ljava/lang/Object;

    iput p1, p0, Lzr;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/layout/BoxScope;ZLcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;Lkotlin/jvm/functions/Function0;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lzr;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzr;->f:Ljava/lang/Object;

    iput-boolean p2, p0, Lzr;->c:Z

    iput-object p3, p0, Lzr;->g:Ljava/lang/Object;

    iput-object p4, p0, Lzr;->d:Ljava/lang/Object;

    iput p5, p0, Lzr;->e:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/story/models/StorySlideUiModel;ZLkotlin/jvm/functions/Function1;I)V
    .locals 1

    .line 18
    const/4 v0, 0x6

    iput v0, p0, Lzr;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzr;->f:Ljava/lang/Object;

    iput-object p2, p0, Lzr;->d:Ljava/lang/Object;

    iput-boolean p3, p0, Lzr;->c:Z

    iput-object p4, p0, Lzr;->g:Ljava/lang/Object;

    iput p5, p0, Lzr;->e:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextViewModel;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V
    .locals 1

    .line 19
    const/4 v0, 0x3

    iput v0, p0, Lzr;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzr;->f:Ljava/lang/Object;

    iput-boolean p2, p0, Lzr;->c:Z

    iput-object p3, p0, Lzr;->d:Ljava/lang/Object;

    iput-object p4, p0, Lzr;->g:Ljava/lang/Object;

    iput p5, p0, Lzr;->e:I

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;ZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 1

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lzr;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzr;->d:Ljava/lang/Object;

    iput-boolean p2, p0, Lzr;->c:Z

    iput-object p3, p0, Lzr;->f:Ljava/lang/Object;

    iput-object p4, p0, Lzr;->g:Ljava/lang/Object;

    iput p5, p0, Lzr;->e:I

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/vuitton/android/presentation/model/common/AssetUiModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V
    .locals 1

    .line 21
    const/4 v0, 0x5

    iput v0, p0, Lzr;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lzr;->c:Z

    iput-object p2, p0, Lzr;->f:Ljava/lang/Object;

    iput-object p3, p0, Lzr;->g:Ljava/lang/Object;

    iput-object p4, p0, Lzr;->d:Ljava/lang/Object;

    iput p5, p0, Lzr;->e:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget v0, p0, Lzr;->b:I

    iget v1, p0, Lzr;->e:I

    iget-object v2, p0, Lzr;->d:Ljava/lang/Object;

    iget-object v3, p0, Lzr;->g:Ljava/lang/Object;

    iget-object v4, p0, Lzr;->f:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    move-object v5, v4

    check-cast v5, Landroidx/compose/ui/Modifier;

    move-object v6, v3

    check-cast v6, Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;

    move-object v8, v2

    check-cast v8, Lkotlin/jvm/functions/Function0;

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p1, v1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v10

    iget-boolean v7, p0, Lzr;->c:Z

    invoke-static/range {v5 .. v10}, Lcom/vuitton/android/presentation/screen/thankyou/components/ThankYouScreenKt;->j(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v0, v4

    check-cast v0, Landroidx/compose/ui/Modifier;

    check-cast v2, Lcom/vuitton/android/presentation/screen/story/models/StorySlideUiModel;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p1, v1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v5

    move-object v1, v2

    iget-boolean v2, p0, Lzr;->c:Z

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/story/components/StoryFooterKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/story/models/StorySlideUiModel;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast v4, Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    check-cast v3, Ljava/lang/String;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p2, v1, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v5

    iget-boolean v0, p0, Lzr;->c:Z

    move-object v1, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v4

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/StaggeredGridItemKt;->a(ZLcom/vuitton/android/presentation/model/common/AssetUiModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    move-object v0, v4

    check-cast v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;

    check-cast v3, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p1, v1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v5

    move-object v1, v3

    move-object v3, v2

    iget-boolean v2, p0, Lzr;->c:Z

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/ListeningQueueTrackItemKt;->c(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    move-object v0, v4

    check-cast v0, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextViewModel;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p1, v1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v5

    iget-boolean v1, p0, Lzr;->c:Z

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/options/legaltext/components/LegalTextComposableKt;->a(Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextViewModel;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    move-object v0, v4

    check-cast v0, Landroidx/compose/ui/Modifier;

    check-cast v3, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p1, v1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v5

    move-object v1, v3

    move-object v3, v2

    iget-boolean v2, p0, Lzr;->c:Z

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/feed/components/card/FeedNotifyIconButtonsKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    move-object v0, v4

    check-cast v0, Landroidx/compose/foundation/layout/BoxScope;

    check-cast v3, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    or-int/lit8 p1, v1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v5

    iget-boolean v1, p0, Lzr;->c:Z

    move-object v11, v3

    move-object v3, v2

    move-object v2, v11

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/feed/components/card/FeedLiveCardContentKt;->a(Landroidx/compose/foundation/layout/BoxScope;ZLcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    move-object v0, v2

    check-cast v0, Lkotlin/jvm/functions/Function0;

    move-object v2, v4

    check-cast v2, Landroidx/compose/ui/Modifier;

    check-cast v3, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p1, v1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v5

    iget-boolean v1, p0, Lzr;->c:Z

    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/DatePickerKt;->o(Lkotlin/jvm/functions/Function0;ZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

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
