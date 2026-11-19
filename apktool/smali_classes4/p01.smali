.class public final synthetic Lp01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/TextLinkScope;Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/ui/platform/UriHandler;)V
    .locals 0

    const/16 p1, 0xd

    iput p1, p0, Lp01;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lp01;->c:Ljava/lang/Object;

    iput-object p3, p0, Lp01;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 12
    iput p3, p0, Lp01;->b:I

    iput-object p1, p0, Lp01;->c:Ljava/lang/Object;

    iput-object p2, p0, Lp01;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 12

    iget v0, p0, Lp01;->b:I

    const-string v1, " on "

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lp01;->d:Ljava/lang/Object;

    iget-object p0, p0, Lp01;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroid/webkit/WebResourceResponse;

    check-cast v5, Landroid/webkit/WebResourceRequest;

    sget v0, Lcom/vuitton/android/presentation/screen/authentication/base/WebViewAuthClient;->f:I

    invoke-virtual {p0}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result p0

    invoke-interface {v5}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/authentication/base/WebViewAuthUtilsKt;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HTTP "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroid/webkit/WebResourceError;

    check-cast v5, Landroid/webkit/WebResourceRequest;

    sget v0, Lcom/vuitton/android/presentation/screen/authentication/base/WebViewAuthClient;->f:I

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v4

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_1

    :cond_1
    move-object p0, v4

    :goto_1
    if-eqz v5, :cond_2

    invoke-interface {v5}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_2
    invoke-static {v4}, Lcom/vuitton/android/presentation/screen/authentication/base/WebViewAuthUtilsKt;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v5, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyLegalConsentUiModel;

    invoke-interface {p0, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast p0, Lcom/dynatrace/agent/useraction/UserActionTimer;

    check-cast v5, Li51;

    iput-object v4, p0, Lcom/dynatrace/agent/useraction/UserActionTimer;->c:Lkotlinx/coroutines/Job;

    invoke-virtual {v5}, Li51;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    check-cast p0, Lcom/dynatrace/agent/useraction/UserActionTimer;

    check-cast v5, Li51;

    const-string v0, "max duration timer fired"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dynatrace/agent/useraction/UserActionTimer;->d:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_3

    invoke-interface {v0, v4}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_3
    iput-object v4, p0, Lcom/dynatrace/agent/useraction/UserActionTimer;->d:Lkotlinx/coroutines/Job;

    invoke-virtual {v5}, Li51;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    check-cast p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;

    check-cast v5, Lcom/dynatrace/agent/useraction/ActiveUserAction;

    iget-object v0, p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->h:Lcom/dynatrace/agent/useraction/ActiveUserAction;

    if-eqz v0, :cond_6

    if-eq v0, v5, :cond_4

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "end delay fired: retiring UA (instanceId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/dynatrace/agent/useraction/ActiveUserAction;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/dynatrace/agent/useraction/ActiveUserAction$CompleteReason;->COMPLETED:Lcom/dynatrace/agent/useraction/ActiveUserAction$CompleteReason;

    iget-object v1, p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->b:Lcom/dynatrace/agent/common/time/TimeProvider;

    invoke-interface {v1}, Lcom/dynatrace/agent/common/time/TimeProvider;->a()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->h(Lcom/dynatrace/agent/useraction/ActiveUserAction$CompleteReason;JLjava/lang/String;)V

    iget-object p0, p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->a:Lcom/dynatrace/agent/useraction/UserActionTimer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "cancelling max duration timer"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dynatrace/agent/useraction/UserActionTimer;->e:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_5

    invoke-interface {v0, v4}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_5
    iput-object v4, p0, Lcom/dynatrace/agent/useraction/UserActionTimer;->e:Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_4

    :cond_6
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "end delay fired for stale UA (instanceId="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_7

    iget-object v1, v5, Lcom/dynatrace/agent/useraction/ActiveUserAction;->a:Ljava/lang/String;

    goto :goto_3

    :cond_7
    move-object v1, v4

    :goto_3
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "); active is now "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_8

    iget-object v4, v0, Lcom/dynatrace/agent/useraction/ActiveUserAction;->a:Ljava/lang/String;

    :cond_8
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ignoring"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_4
    return-object p0

    :pswitch_5
    check-cast p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;

    check-cast v5, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

    check-cast v5, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselMUiModel;

    iget-object v0, v5, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselMUiModel;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnSwipeCarouselEvent;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnSwipeCarouselEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v5, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->a:Ljava/lang/String;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_7
    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v5, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;

    invoke-interface {p0, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_8
    check-cast p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;

    check-cast v5, Landroidx/compose/runtime/MutableState;

    sget-object v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$ChangeThemeButtonClickedEvent;->a:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$ChangeThemeButtonClickedEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;->w9(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel;)V

    sget-object p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeAnimationState$OverlayOpen;->a:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeAnimationState$OverlayOpen;

    invoke-interface {v5, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_9
    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v5, Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;

    sget v0, Lcom/vuitton/android/presentation/screen/thankyou/components/ThankYouScreenKt;->a:F

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;->r:Ljava/lang/String;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_a
    check-cast p0, Landroidx/compose/ui/text/AnnotatedString$Range;

    check-cast v5, Landroidx/compose/ui/platform/UriHandler;

    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/text/LinkAnnotation;

    instance-of v0, p0, Landroidx/compose/ui/text/LinkAnnotation$Url;

    if-eqz v0, :cond_a

    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/text/LinkAnnotation$Url;

    iget-object v0, v0, Landroidx/compose/ui/text/LinkAnnotation$Url;->c:Landroidx/compose/ui/text/LinkInteractionListener;

    if-eqz v0, :cond_9

    invoke-interface {v0, p0}, Landroidx/compose/ui/text/LinkInteractionListener;->a(Landroidx/compose/ui/text/LinkAnnotation;)V

    goto :goto_5

    :cond_9
    :try_start_0
    check-cast p0, Landroidx/compose/ui/text/LinkAnnotation$Url;

    iget-object p0, p0, Landroidx/compose/ui/text/LinkAnnotation$Url;->a:Ljava/lang/String;

    invoke-interface {v5, p0}, Landroidx/compose/ui/platform/UriHandler;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :cond_a
    instance-of v0, p0, Landroidx/compose/ui/text/LinkAnnotation$Clickable;

    if-eqz v0, :cond_b

    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/text/LinkAnnotation$Clickable;

    iget-object v0, v0, Landroidx/compose/ui/text/LinkAnnotation$Clickable;->c:Landroidx/compose/ui/text/LinkInteractionListener;

    if-eqz v0, :cond_b

    invoke-interface {v0, p0}, Landroidx/compose/ui/text/LinkInteractionListener;->a(Landroidx/compose/ui/text/LinkAnnotation;)V

    :catch_0
    :cond_b
    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_b
    check-cast p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    check-cast v5, Landroidx/compose/runtime/MutableState;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/IntSize;

    iget-wide v0, v0, Landroidx/compose/ui/unit/IntSize;->a:J

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->j()Landroidx/compose/ui/geometry/Offset;

    move-result-object v5

    if-eqz v5, :cond_17

    iget-wide v5, v5, Landroidx/compose/ui/geometry/Offset;->a:J

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->n()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v7

    if-eqz v7, :cond_16

    iget-object v7, v7, Landroidx/compose/ui/text/AnnotatedString;->c:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_c

    goto/16 :goto_b

    :cond_c
    iget-object v7, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->s:Landroidx/compose/runtime/MutableState;

    check-cast v7, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v7}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/foundation/text/Handle;

    const/4 v8, -0x1

    if-nez v7, :cond_d

    move v7, v8

    goto :goto_6

    :cond_d
    sget-object v9, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$WhenMappings;->a:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v9, v7

    :goto_6
    if-eq v7, v8, :cond_15

    const-wide v8, 0xffffffffL

    const/4 v10, 0x2

    const/16 v11, 0x20

    if-eq v7, v3, :cond_f

    if-eq v7, v10, :cond_f

    const/4 v3, 0x3

    if-ne v7, v3, :cond_e

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->o()Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v3

    iget-wide v3, v3, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    sget-object v7, Landroidx/compose/ui/text/TextRange;->b:Landroidx/compose/ui/text/TextRange$Companion;

    and-long/2addr v3, v8

    :goto_7
    long-to-int v3, v3

    goto :goto_8

    :cond_e
    invoke-static {}, Lv40;->g()V

    goto/16 :goto_d

    :cond_f
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->o()Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v3

    iget-wide v3, v3, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    sget-object v7, Landroidx/compose/ui/text/TextRange;->b:Landroidx/compose/ui/text/TextRange$Companion;

    shr-long/2addr v3, v11

    goto :goto_7

    :goto_8
    iget-object v4, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->d:Landroidx/compose/foundation/text/LegacyTextFieldState;

    if-eqz v4, :cond_14

    invoke-virtual {v4}, Landroidx/compose/foundation/text/LegacyTextFieldState;->d()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    move-result-object v4

    if-nez v4, :cond_10

    goto/16 :goto_a

    :cond_10
    iget-object v7, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->d:Landroidx/compose/foundation/text/LegacyTextFieldState;

    if-eqz v7, :cond_13

    iget-object v7, v7, Landroidx/compose/foundation/text/LegacyTextFieldState;->a:Landroidx/compose/foundation/text/TextDelegate;

    if-eqz v7, :cond_13

    iget-object v7, v7, Landroidx/compose/foundation/text/TextDelegate;->a:Landroidx/compose/ui/text/AnnotatedString;

    if-nez v7, :cond_11

    goto :goto_9

    :cond_11
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->b:Landroidx/compose/ui/text/input/OffsetMapping;

    invoke-interface {p0, v3}, Landroidx/compose/ui/text/input/OffsetMapping;->b(I)I

    move-result p0

    iget-object v3, v7, Landroidx/compose/ui/text/AnnotatedString;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {p0, v2, v3}, Lkotlin/ranges/RangesKt;->d(III)I

    move-result p0

    invoke-virtual {v4, v5, v6}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->d(J)J

    move-result-wide v2

    shr-long/2addr v2, v11

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    iget-object v3, v4, Landroidx/compose/foundation/text/TextLayoutResultProxy;->a:Landroidx/compose/ui/text/TextLayoutResult;

    iget-object v4, v3, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    invoke-virtual {v4, p0}, Landroidx/compose/ui/text/MultiParagraph;->d(I)I

    move-result p0

    invoke-virtual {v3, p0}, Landroidx/compose/ui/text/TextLayoutResult;->f(I)F

    move-result v5

    invoke-virtual {v3, p0}, Landroidx/compose/ui/text/TextLayoutResult;->g(I)F

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v6, v3}, Lkotlin/ranges/RangesKt;->c(FFF)F

    move-result v3

    sget-object v5, Landroidx/compose/ui/unit/IntSize;->b:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v5, 0x0

    invoke-static {v0, v1, v5, v6}, Landroidx/compose/ui/unit/IntSize;->b(JJ)Z

    move-result v5

    if-nez v5, :cond_12

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    shr-long/2addr v0, v11

    long-to-int v0, v0

    div-int/2addr v0, v10

    int-to-float v0, v0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_12

    sget-object p0, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Landroidx/compose/ui/geometry/Offset;->d:J

    goto :goto_c

    :cond_12
    invoke-virtual {v4, p0}, Landroidx/compose/ui/text/MultiParagraph;->f(I)F

    move-result v0

    invoke-virtual {v4, p0}, Landroidx/compose/ui/text/MultiParagraph;->b(I)F

    move-result p0

    sub-float/2addr p0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    add-float/2addr p0, v0

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v2, p0

    shl-long/2addr v0, v11

    and-long/2addr v2, v8

    or-long/2addr v0, v2

    goto :goto_c

    :cond_13
    :goto_9
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Landroidx/compose/ui/geometry/Offset;->d:J

    goto :goto_c

    :cond_14
    :goto_a
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Landroidx/compose/ui/geometry/Offset;->d:J

    goto :goto_c

    :cond_15
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Landroidx/compose/ui/geometry/Offset;->d:J

    goto :goto_c

    :cond_16
    :goto_b
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Landroidx/compose/ui/geometry/Offset;->d:J

    goto :goto_c

    :cond_17
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Landroidx/compose/ui/geometry/Offset;->d:J

    :goto_c
    new-instance v4, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v4, v0, v1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    :goto_d
    return-object v4

    :pswitch_c
    check-cast p0, Landroidx/compose/material3/SwipeToDismissBoxValue;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    sget v0, Landroidx/compose/material3/SwipeToDismissBoxKt;->a:F

    new-instance v0, Landroidx/compose/material3/SwipeToDismissBoxState;

    invoke-direct {v0, p0, v5}, Landroidx/compose/material3/SwipeToDismissBoxState;-><init>(Landroidx/compose/material3/SwipeToDismissBoxValue;Lkotlin/jvm/functions/Function1;)V

    return-object v0

    :pswitch_d
    check-cast p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;

    check-cast v5, Ljava/util/List;

    iget-object p0, p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->m:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    invoke-static {p0, v5}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->a(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;Ljava/util/List;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v5, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;

    invoke-interface {p0, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_f
    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v5, Lcom/vuitton/android/presentation/screen/search/models/SearchMatchUiModel;

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/search/models/SearchMatchUiModel;->a:Ljava/lang/String;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_10
    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v5, Lcom/vuitton/android/presentation/screen/story/models/StoryCtaUiModel;

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/story/models/StoryCtaUiModel;->b:Ljava/lang/String;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_11
    check-cast p0, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;

    check-cast v5, Landroidx/compose/runtime/MutableState;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->h:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v5, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_12
    check-cast p0, Lcom/vuitton/android/presentation/screen/story/StoryActivity;

    check-cast v5, Landroidx/compose/runtime/MutableState;

    sget-object v0, Lcom/vuitton/android/presentation/screen/story/StoryActivity;->t:Lcom/vuitton/android/presentation/screen/story/StoryActivity$Companion;

    const/16 v0, 0x65d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;->a:Z

    if-eqz v1, :cond_18

    move-object v4, v0

    :cond_18
    invoke-virtual {p0, v4}, Lcom/vuitton/android/presentation/screen/story/StoryActivity;->H(Ljava/lang/Integer;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_13
    check-cast p0, Landroidx/compose/runtime/MutableState;

    check-cast v5, Landroidx/compose/runtime/State;

    sget v0, Lcom/vuitton/android/presentation/screen/storemode/components/StoreModeWelcomeComposableKt;->a:F

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_19

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/unit/Dp;

    iget p0, p0, Landroidx/compose/ui/unit/Dp;->b:F

    const/high16 v0, 0x42dc0000    # 110.0f

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_19

    move v2, v3

    :cond_19
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_14
    check-cast p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->g:Z

    if-eqz p0, :cond_1a

    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1a
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_15
    check-cast p0, Lkotlin/jvm/functions/Function2;

    check-cast v5, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;

    sget v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/StaggeredGridItemKt;->a:F

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->a:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_16
    check-cast p0, Ljava/util/List;

    check-cast v5, Landroidx/compose/runtime/MutableState;

    sget v0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt;->a:F

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_e
    if-ge v2, p0, :cond_1b

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1b
    invoke-interface {v5, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_17
    check-cast p0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightActivity;

    check-cast v5, Landroid/view/View;

    sget-object v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightActivity;->r:Lcom/vuitton/android/presentation/screen/spotlight/SpotlightActivity$Companion;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1c

    const v1, 0x7f06002f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_1c
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightActivity$exitWithFade$1;

    invoke-direct {v1, p0}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightActivity$exitWithFade$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightActivity;->H()Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModel;

    move-result-object p0

    sget-object v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnScreenClosedEvent;->a:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnScreenClosedEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModel;->X9(Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
