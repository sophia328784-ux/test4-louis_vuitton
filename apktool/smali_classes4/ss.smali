.class public final synthetic Lss;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lss;->b:I

    iput-object p1, p0, Lss;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lss;->b:I

    const-string v1, "distantRepairRouter"

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object p0, p0, Lss;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v0, p0, Landroidx/compose/ui/window/DialogWindowProvider;

    if-eqz v0, :cond_0

    move-object v5, p0

    check-cast v5, Landroidx/compose/ui/window/DialogWindowProvider;

    :cond_0
    if-eqz v5, :cond_1

    invoke-interface {v5}, Landroidx/compose/ui/window/DialogWindowProvider;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, v4}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {p0}, Landroidx/compose/runtime/FloatState;->a()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lcom/vuitton/android/designkit/ui/theme/atoms/DropdownState;

    iget-boolean v0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/DropdownState;->b:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/DropdownState;->c:Landroidx/compose/runtime/MutableState;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast p0, Lcom/vuitton/android/presentation/LVApplication;

    sget-object v0, Lcom/vuitton/android/presentation/LVApplication;->t:Lcom/vuitton/android/presentation/LVApplication$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/LVApplication;->p:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;->j()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "environmentProvider"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v5

    :pswitch_3
    check-cast p0, Lcom/vuitton/android/data/database/room/LVAppDatabase_Impl;

    sget v0, Lcom/vuitton/android/data/database/room/LVAppDatabase_Impl;->s:I

    new-instance v0, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl;

    invoke-direct {v0, p0}, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    return-object v0

    :pswitch_4
    check-cast p0, Lkotlin/jvm/internal/KTypeParameterBase;

    iget-object p0, p0, Lkotlin/jvm/internal/KTypeParameterBase;->b:Ljava/lang/Object;

    instance-of v0, p0, Lkotlin/jvm/internal/KotlinGenericDeclaration;

    if-eqz v0, :cond_4

    check-cast p0, Lkotlin/jvm/internal/KotlinGenericDeclaration;

    goto :goto_0

    :cond_4
    move-object p0, v5

    :goto_0
    if-eqz p0, :cond_5

    invoke-interface {p0}, Lkotlin/jvm/internal/KotlinGenericDeclaration;->findJavaDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v5

    :cond_5
    return-object v5

    :pswitch_5
    check-cast p0, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    return-object p0

    :pswitch_6
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {p0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/animation/core/SuspendAnimationKt;->i(Lkotlin/coroutines/CoroutineContext;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity;

    sget-object v0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity;->s:Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity;->H()Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModel;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel$TryAgainClicked;->a:Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel$TryAgainClicked;

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModel;->gc(Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity;->H()Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModel;

    move-result-object p0

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModel;->M()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_8
    check-cast p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/CarouselArticleSectionUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/CarouselArticleSectionUiModel;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p0, Lcoil3/ImageLoader$Builder;

    new-instance v0, Lcoil3/memory/MemoryCache$Builder;

    invoke-direct {v0}, Lcoil3/memory/MemoryCache$Builder;-><init>()V

    iget-object p0, p0, Lcoil3/ImageLoader$Builder;->a:Landroid/content/Context;

    const-wide v1, 0x3fc999999999999aL    # 0.2

    :try_start_0
    const-class v3, Landroid/app/ActivityManager;

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Landroid/app/ActivityManager;

    invoke-virtual {v3}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_6

    const-wide v1, 0x3fc3333333333333L    # 0.15

    :catch_0
    :cond_6
    const-wide/16 v3, 0x0

    cmpg-double v3, v3, v1

    if-gtz v3, :cond_8

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, v1, v3

    if-gtz v3, :cond_8

    new-instance v3, Lvc0;

    invoke-direct {v3, v1, v2, p0}, Lvc0;-><init>(DLandroid/content/Context;)V

    iput-object v3, v0, Lcoil3/memory/MemoryCache$Builder;->a:Lvc0;

    new-instance p0, Lcoil3/memory/RealWeakMemoryCache;

    invoke-direct {p0}, Lcoil3/memory/RealWeakMemoryCache;-><init>()V

    iget-object v0, v0, Lcoil3/memory/MemoryCache$Builder;->a:Lvc0;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lvc0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    new-instance v2, Lcoil3/memory/RealStrongMemoryCache;

    invoke-direct {v2, v0, v1, p0}, Lcoil3/memory/RealStrongMemoryCache;-><init>(JLcoil3/memory/WeakMemoryCache;)V

    new-instance v5, Lcoil3/memory/RealMemoryCache;

    invoke-direct {v5, v2, p0}, Lcoil3/memory/RealMemoryCache;-><init>(Lcoil3/memory/StrongMemoryCache;Lcoil3/memory/WeakMemoryCache;)V

    goto :goto_1

    :cond_7
    const-string p0, "maxSizeBytesFactory == null"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const-string p0, "percent must be in the range [0.0, 1.0]."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    :goto_1
    return-object v5

    :pswitch_a
    check-cast p0, Lokhttp3/internal/http2/Http2Connection;

    sget-object v0, Lokhttp3/internal/http2/Http2Connection;->C:Lokhttp3/internal/http2/Http2Connection$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->z:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, v3, v4, v4}, Lokhttp3/internal/http2/Http2Writer;->j(IIZ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, v1, v1, v0}, Lokhttp3/internal/http2/Http2Connection;->c(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_b
    check-cast p0, Lcom/sightcall/livetranslation/history/HistoryCoordinator;

    invoke-static {p0}, Lcom/sightcall/livetranslation/history/HistoryInteractorImpl;->e(Lcom/sightcall/livetranslation/history/HistoryCoordinator;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p0, Landroidx/camera/core/featuregroup/GroupableFeature;

    sget v0, Landroidx/camera/core/featuregroup/GroupableFeature;->b:I

    invoke-virtual {p0}, Landroidx/camera/core/featuregroup/GroupableFeature;->a()Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    move-result-object p0

    sget-object v0, Landroidx/camera/core/featuregroup/GroupableFeature$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    if-eq p0, v2, :cond_b

    if-eq p0, v3, :cond_c

    const/4 v2, 0x3

    if-eq p0, v2, :cond_a

    const/4 v0, 0x4

    if-ne p0, v0, :cond_9

    goto :goto_3

    :cond_9
    invoke-static {}, Lv40;->g()V

    goto :goto_4

    :cond_a
    move v2, v3

    goto :goto_3

    :cond_b
    move v2, v4

    :cond_c
    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_4
    return-object v5

    :pswitch_d
    check-cast p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->h:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_d

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_d
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_e
    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl;->d:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    return-object p0

    :pswitch_f
    check-cast p0, Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;

    iget-object v0, p0, Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;->g:Lcom/dynatrace/agent/userinteraction/model/SequenceState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v0, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending;

    if-eqz v1, :cond_e

    move-object v5, v0

    check-cast v5, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending;

    :cond_e
    if-nez v5, :cond_f

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_5

    :cond_f
    sget-object v0, Lcom/dynatrace/agent/userinteraction/model/SequenceState$Idle;->a:Lcom/dynatrace/agent/userinteraction/model/SequenceState$Idle;

    iput-object v0, p0, Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;->g:Lcom/dynatrace/agent/userinteraction/model/SequenceState;

    invoke-virtual {p0, v5}, Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;->b(Lcom/dynatrace/agent/userinteraction/model/SequenceState$Pending;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_5
    return-object p0

    :pswitch_10
    check-cast p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->Ia()V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->D9()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_11
    check-cast p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    sget-object v0, Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt;->a:Ljava/util/List;

    if-eqz p0, :cond_10

    goto :goto_6

    :cond_10
    move v2, v4

    :goto_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p0

    return-object p0

    :pswitch_12
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity;->H(Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity;)Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategoryType;

    move-result-object p0

    return-object p0

    :pswitch_13
    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/activities/ExclusivePLPActivity;

    sget-object v0, Lcom/vuitton/android/presentation/screen/plp/activities/ExclusivePLPActivity;->p:Lcom/vuitton/android/presentation/screen/plp/activities/ExclusivePLPActivity$Companion;

    sget-object v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;->v:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity$Companion;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_14
    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/EmailValidationRules;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/EmailValidationRules;->b:Ljava/lang/String;

    if-eqz v0, :cond_12

    invoke-static {v0}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_7

    :cond_11
    move-object v0, v5

    :goto_7
    if-eqz v0, :cond_12

    new-instance p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :cond_12
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/EmailValidationRules;->a:Z

    if-eqz p0, :cond_13

    new-instance p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v0, 0x7f140e25

    invoke-direct {p0, v0, v5, v3, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_8

    :cond_13
    sget-object p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Empty;->b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Empty;

    :goto_8
    return-object p0

    :pswitch_15
    check-cast p0, Lcom/google/accompanist/drawablepainter/DrawablePainter;

    new-instance v0, Lcom/google/accompanist/drawablepainter/DrawablePainter$callback$2$1;

    invoke-direct {v0, p0}, Lcom/google/accompanist/drawablepainter/DrawablePainter$callback$2$1;-><init>(Lcom/google/accompanist/drawablepainter/DrawablePainter;)V

    return-object v0

    :pswitch_16
    check-cast p0, Landroidx/compose/ui/platform/SoftwareKeyboardController;

    if-eqz p0, :cond_14

    invoke-interface {p0}, Landroidx/compose/ui/platform/SoftwareKeyboardController;->b()V

    :cond_14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_17
    check-cast p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentFragment;

    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentFragment;->M:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentFragment$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentFragment;->G:Lcom/vuitton/android/presentation/screen/distantrepairs/DistantRepairRouter;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/DistantRepairRouter;->a(Landroidx/fragment/app/FragmentActivity;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_15
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v5

    :pswitch_18
    check-cast p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentBffFragment;

    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentBffFragment;->N:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentBffFragment$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentBffFragment;->G:Lcom/vuitton/android/presentation/screen/distantrepairs/DistantRepairRouter;

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/DistantRepairRouter;->a(Landroidx/fragment/app/FragmentActivity;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_16
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v5

    :pswitch_19
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/disposition/DispositionListBottomSheet;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/disposition/DispositionListBottomSheet;->V(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/disposition/DispositionListBottomSheet;)Lcom/linkplay/core/status/LPPlayChannel;

    move-result-object p0

    return-object p0

    :pswitch_1a
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;->V(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedBottomSheet;)Lcom/lightup/sdk/device/enums/LightupDeviceType;

    move-result-object p0

    return-object p0

    :pswitch_1b
    check-cast p0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;

    sget-object v0, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->a:Landroidx/compose/ui/window/PopupProperties;

    invoke-interface {p0}, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;->close()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1c
    check-cast p0, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;

    iget-object p0, p0, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->c:Landroidx/camera/core/impl/CameraInfoInternal;

    const/16 v0, 0x22

    invoke-interface {p0, v0}, Landroidx/camera/core/impl/CameraInfoInternal;->k(I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
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
