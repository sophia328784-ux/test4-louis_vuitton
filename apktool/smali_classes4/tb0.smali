.class public final synthetic Ltb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Ltb0;->b:I

    iput-object p1, p0, Ltb0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Ltb0;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    iget-object p0, p0, Ltb0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-static {p0, p1}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;->d(Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;Landroidx/constraintlayout/widget/ConstraintSet;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lkotlinx/serialization/descriptors/SerialDescriptor;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->h(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->i()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModel;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p1, Landroidx/activity/result/ActivityResult;->b:I

    if-ne p1, v4, :cond_0

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModel;->F8()V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModel;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p1, Landroidx/activity/result/ActivityResult;->b:I

    if-ne p1, v4, :cond_1

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModel;->h7()V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    check-cast p0, Lcom/vuitton/android/presentation/utils/PermissionUtils$PermissionListener;

    check-cast p1, Lcom/google/android/gms/location/LocationSettingsResponse;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/utils/PermissionUtils$PermissionListener;->onSuccess()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    check-cast p0, Landroidx/compose/foundation/layout/PaddingValues;

    check-cast p1, Landroidx/compose/ui/platform/InspectorInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroidx/compose/ui/platform/InspectorInfo;->b:Landroidx/compose/ui/platform/ValueElementSequence;

    const-string v0, "paddingValues"

    invoke-virtual {p1, p0, v0}, Landroidx/compose/ui/platform/ValueElementSequence;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    check-cast p0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModel;

    check-cast p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModel;->q0()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModel;->Z(Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;)V

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPSkusViewModelImpl;

    check-cast p1, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPSkusViewModelImpl;->O0(Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_7
    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$HalfEdito;

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/semantics/Role;->b:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->o(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$HalfEdito;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$HalfEdito;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$HalfEdito;->d:Ljava/lang/String;

    filled-new-array {v0, v1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    const/16 v5, 0x3e

    const-string v1, ". "

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->i(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_8
    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPCategoryViewModel;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$ScreenshotTakenEvent;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$ScreenshotTakenEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;->O0(Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_9
    check-cast p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;

    check-cast p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->g:Lcom/vuitton/android/presentation/screen/account/addresseditor/validation/PhoneValidationRules;

    new-instance v1, Lx60;

    const/16 v2, 0x16

    invoke-direct {v1, p0, v2}, Lx60;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1, p1, v3}, Lcom/vuitton/android/presentation/screen/account/addresseditor/validation/PhoneValidationRules;->a(Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/customvalidation/FieldValidationRule;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p0, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    sget-object v0, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;->u:Lcom/vuitton/android/presentation/screen/osa/OsaActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p1, Landroidx/activity/result/ActivityResult;->b:I

    if-ne p1, v4, :cond_5

    sget-object p1, Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToMyExperiencesPage;->a:Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToMyExperiencesPage;

    invoke-static {p1, p0}, Lcom/vuitton/android/presentation/screen/osa/OsaDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/osa/OsaDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_b
    check-cast p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p1, Landroidx/activity/result/ActivityResult;->b:I

    if-ne p1, v4, :cond_6

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;->M()V

    :cond_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_c
    check-cast p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModel;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$IconsConfirmClickEvent;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel$IconsConfirmClickEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModel;->D4(Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_d
    check-cast p0, Lkotlinx/serialization/internal/ObjectSerializer;

    check-cast p1, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lkotlinx/serialization/internal/ObjectSerializer;->b:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, p1, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->b:Ljava/util/List;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_e
    check-cast p0, Landroidx/navigationevent/compose/NavigationEventState;

    check-cast p1, Landroidx/navigationevent/NavigationEventTransitionState;

    iget-object p0, p0, Landroidx/navigationevent/compose/NavigationEventState;->a:Landroidx/compose/runtime/MutableState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_f
    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterFragment;

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterFragment;->G:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterFragment;->F:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f010037

    const v3, 0x7f01003a

    invoke-virtual {v0, v1, v3, v1, v3}, Landroidx/fragment/app/FragmentTransaction;->n(IIII)V

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginFragment;->A:Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginFragment$Companion;

    sget-object v3, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginRouteName;->FORGET_PASSWORD:Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginRouteName;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v3}, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginFragment$Companion;->a(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginRouteName;)Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginFragment;

    move-result-object p1

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginFragment;->B:Ljava/lang/String;

    const v3, 0x7f0a0204

    invoke-virtual {v0, v3, p1, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->i(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/extensions/FragmentTransactionExtKt;->a(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->e()I

    :cond_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_8
    const-string p0, "authenticationActivityRouter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v3

    :pswitch_10
    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;

    check-cast p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;->L4(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_11
    check-cast p0, Landroidx/navigation/NavHostController;

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginFragment;->A:Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginRoute$ForgetPassword;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginRoute$ForgetPassword;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x6

    invoke-static {p0, v0, v3, p1}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_12
    check-cast p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;->fa(Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_13
    check-cast p0, Lcom/vuitton/android/presentation/screen/account/myicons/MyIconsActivity;

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/vuitton/android/presentation/screen/account/myicons/MyIconsActivity;->q:Lcom/vuitton/android/presentation/screen/account/myicons/MyIconsActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/myicons/MyIconsActivity;->p:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;

    new-instance v0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$IconsConfirmEvent;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$IconsConfirmEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;->W(Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_14
    check-cast p0, Lcom/vuitton/android/presentation/screen/booking/MyBookingsRoutes$Modify;

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$Factory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/MyBookingsRoutes$Modify;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/booking/MyBookingsRoutes$Modify;->b:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$Factory;->a(Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$Factory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;

    move-result-object p0

    return-object p0

    :pswitch_15
    check-cast p0, Lcom/vuitton/android/presentation/screen/booking/MyBookingsRoutes$Pass;

    check-cast p1, Lcom/vuitton/android/presentation/screen/booking/pass/BookingPassViewModelImpl$Factory;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/MyBookingsRoutes$Pass;->a:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/vuitton/android/presentation/screen/booking/pass/BookingPassViewModelImpl$Factory;->a(Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/booking/pass/BookingPassViewModelImpl;

    move-result-object p0

    return-object p0

    :pswitch_16
    check-cast p0, Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;

    check-cast p1, Landroid/net/Uri;

    invoke-static {p0, p1}, Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;->p(Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;Landroid/net/Uri;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_17
    check-cast p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;

    check-cast p1, Landroid/net/Uri;

    invoke-static {p0, p1}, Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;->p(Lcom/sightcall/mediacapture/presenter/MediaCaptureFragment;Landroid/net/Uri;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_18
    check-cast p0, Lkotlin/text/MatcherMatchResult$groups$1;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/text/MatcherMatchResult$groups$1;->h(I)Lkotlin/text/MatchGroup;

    move-result-object p0

    return-object p0

    :pswitch_19
    check-cast p0, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->R1()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1a
    check-cast p0, Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;

    iget-object v0, p0, Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;->c:Landroidx/arch/core/util/Function;

    invoke-interface {v0, p1}, Landroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1b
    check-cast p0, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;

    check-cast p1, Landroidx/navigation/NavOptionsBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/navigation/NavGraph;->i:Landroidx/navigation/NavGraph$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainNavigationState;->a:Landroidx/navigation/NavHostController;

    iget-object p0, p0, Landroidx/navigation/NavController;->b:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->j()Landroidx/navigation/NavGraph;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lag0;

    const/16 v3, 0xb

    invoke-direct {v0, v3}, Lag0;-><init>(I)V

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->n(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->q(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/navigation/NavDestination;

    iget-object p0, p0, Landroidx/navigation/NavDestination;->c:Landroidx/navigation/internal/NavDestinationImpl;

    iget p0, p0, Landroidx/navigation/internal/NavDestinationImpl;->e:I

    iput p0, p1, Landroidx/navigation/NavOptionsBuilder;->d:I

    iput-boolean v1, p1, Landroidx/navigation/NavOptionsBuilder;->e:Z

    new-instance p0, Landroidx/navigation/PopUpToBuilder;

    invoke-direct {p0}, Landroidx/navigation/PopUpToBuilder;-><init>()V

    iput-boolean v2, p0, Landroidx/navigation/PopUpToBuilder;->b:Z

    iget-boolean p0, p0, Landroidx/navigation/PopUpToBuilder;->a:Z

    iput-boolean p0, p1, Landroidx/navigation/NavOptionsBuilder;->e:Z

    iput-boolean v2, p1, Landroidx/navigation/NavOptionsBuilder;->f:Z

    iput-boolean v2, p1, Landroidx/navigation/NavOptionsBuilder;->b:Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1c
    check-cast p0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;

    check-cast p1, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/main/components/MainActivityComposableKt$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v2, :cond_d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_c

    const/4 v0, 0x3

    if-eq p1, v0, :cond_b

    const/4 v0, 0x4

    if-eq p1, v0, :cond_a

    const/4 v0, 0x5

    if-ne p1, v0, :cond_9

    sget-object p1, Lcom/vuitton/android/presentation/screen/main/models/BottomBarTrackingUiModel$OnCartHitEvent;->a:Lcom/vuitton/android/presentation/screen/main/models/BottomBarTrackingUiModel$OnCartHitEvent;

    goto :goto_1

    :cond_9
    invoke-static {}, Lv40;->g()V

    goto :goto_2

    :cond_a
    sget-object p1, Lcom/vuitton/android/presentation/screen/main/models/BottomBarTrackingUiModel$OnWishlistHitEvent;->a:Lcom/vuitton/android/presentation/screen/main/models/BottomBarTrackingUiModel$OnWishlistHitEvent;

    goto :goto_1

    :cond_b
    sget-object p1, Lcom/vuitton/android/presentation/screen/main/models/BottomBarTrackingUiModel$OnServicesHitEvent;->a:Lcom/vuitton/android/presentation/screen/main/models/BottomBarTrackingUiModel$OnServicesHitEvent;

    goto :goto_1

    :cond_c
    sget-object p1, Lcom/vuitton/android/presentation/screen/main/models/BottomBarTrackingUiModel$OnCatalogHitEvent;->a:Lcom/vuitton/android/presentation/screen/main/models/BottomBarTrackingUiModel$OnCatalogHitEvent;

    goto :goto_1

    :cond_d
    sget-object p1, Lcom/vuitton/android/presentation/screen/main/models/BottomBarTrackingUiModel$OnExploreHitEvent;->a:Lcom/vuitton/android/presentation/screen/main/models/BottomBarTrackingUiModel$OnExploreHitEvent;

    :goto_1
    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;->p2(Lcom/vuitton/android/presentation/screen/main/models/BottomBarTrackingUiModel;)V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_2
    return-object v3

    nop

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
