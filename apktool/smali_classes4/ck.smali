.class public final synthetic Lck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/text/input/EditCommand;Landroidx/compose/ui/text/input/EditProcessor;)V
    .locals 0

    const/16 p2, 0x12

    iput p2, p0, Lck;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lck;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 10
    iput p2, p0, Lck;->b:I

    iput-object p1, p0, Lck;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lck;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object p0, p0, Lck;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl;

    check-cast p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl;->f:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;

    new-instance v2, Lss;

    const/16 v3, 0xe

    invoke-direct {v2, p0, v3}, Lss;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1, p1}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules;->a(Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/customvalidation/FieldValidationRule;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    check-cast p1, Landroidx/compose/ui/text/font/TypefaceRequest;

    iget-object v2, p1, Landroidx/compose/ui/text/font/TypefaceRequest;->b:Landroidx/compose/ui/text/font/FontWeight;

    iget v3, p1, Landroidx/compose/ui/text/font/TypefaceRequest;->c:I

    iget v4, p1, Landroidx/compose/ui/text/font/TypefaceRequest;->d:I

    iget-object v5, p1, Landroidx/compose/ui/text/font/TypefaceRequest;->e:Ljava/lang/Object;

    new-instance v0, Landroidx/compose/ui/text/font/TypefaceRequest;

    const/4 v6, 0x0

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/font/TypefaceRequest;-><init>(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;IILjava/lang/Object;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->b(Landroidx/compose/ui/text/font/TypefaceRequest;)Landroidx/compose/ui/text/font/TypefaceResult;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/compose/runtime/collection/MutableVector;

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    sget p1, Landroidx/compose/foundation/layout/FlowLayoutKt;->a:I

    iget-object p1, p0, Landroidx/compose/runtime/collection/MutableVector;->b:[Ljava/lang/Object;

    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->d:I

    :goto_0
    if-ge v2, p0, :cond_0

    aget-object v0, p1, v2

    check-cast v0, Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->k()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast p0, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;

    check-cast p1, Landroid/text/Editable;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->Q:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->u:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    check-cast p0, Lcom/google/firebase/sessions/SessionDataSerializer;

    check-cast p1, Landroidx/datastore/core/CorruptionException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/google/firebase/sessions/SessionData;

    iget-object p0, p0, Lcom/google/firebase/sessions/SessionDataSerializer;->a:Lcom/google/firebase/sessions/SessionGenerator;

    invoke-virtual {p0, v1}, Lcom/google/firebase/sessions/SessionGenerator;->a(Lcom/google/firebase/sessions/SessionDetails;)Lcom/google/firebase/sessions/SessionDetails;

    move-result-object v3

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/google/firebase/sessions/SessionData;-><init>(Lcom/google/firebase/sessions/SessionDetails;Lcom/google/firebase/sessions/Time;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :pswitch_4
    check-cast p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    check-cast p1, Landroid/location/Location;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/common/Coordinates;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vuitton/foundation/model/domain/model/common/Coordinates;-><init>(DD)V

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->H:Lcom/vuitton/foundation/model/domain/model/common/Coordinates;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->Ia()V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->D9()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity;

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity;->s:Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity;->I()Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel;

    move-result-object p0

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel$FaqCategoryClickEvent;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel$FaqCategoryClickEvent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel;->d:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/activities/ExclusivePLPActivity;

    check-cast p1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/plp/activities/ExclusivePLPActivity;->p:Lcom/vuitton/android/presentation/screen/plp/activities/ExclusivePLPActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$PageFromExclusive;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$PageFromExclusive;-><init>(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;)V

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_7
    check-cast p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;

    check-cast p1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;

    invoke-static {p0, p1}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->a(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p0, Lcom/vuitton/android/presentation/utils/EmulatorDetector;

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/vuitton/android/presentation/utils/EmulatorDetector;->a:Lcom/vuitton/android/presentation/utils/EmulatorDetector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/vuitton/android/presentation/utils/EmulatorDetector;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/EmailValidationRules;

    check-cast p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/EmailValidationRules;->b:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/EmailValidationRules;->a:Z

    if-nez p0, :cond_3

    move v2, v3

    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p0, Landroidx/compose/ui/text/input/EditCommand;

    check-cast p1, Landroidx/compose/ui/text/input/EditCommand;

    if-ne p0, p1, :cond_4

    const-string p0, " > "

    goto :goto_1

    :cond_4
    const-string p0, "   "

    :goto_1
    instance-of v0, p1, Landroidx/compose/ui/text/input/CommitTextCommand;

    const/16 v1, 0x29

    const-string v2, ", newCursorPosition="

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "CommitTextCommand(text.length="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/ui/text/input/CommitTextCommand;

    iget-object v3, p1, Landroidx/compose/ui/text/input/CommitTextCommand;->a:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v3, v3, Landroidx/compose/ui/text/AnnotatedString;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroidx/compose/ui/text/input/CommitTextCommand;->b:I

    :goto_2
    invoke-static {v0, p1, v1}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    :cond_5
    instance-of v0, p1, Landroidx/compose/ui/text/input/SetComposingTextCommand;

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "SetComposingTextCommand(text.length="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/ui/text/input/SetComposingTextCommand;

    iget-object v3, p1, Landroidx/compose/ui/text/input/SetComposingTextCommand;->a:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v3, v3, Landroidx/compose/ui/text/AnnotatedString;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroidx/compose/ui/text/input/SetComposingTextCommand;->b:I

    goto :goto_2

    :cond_6
    instance-of v0, p1, Landroidx/compose/ui/text/input/SetComposingRegionCommand;

    if-eqz v0, :cond_7

    check-cast p1, Landroidx/compose/ui/text/input/SetComposingRegionCommand;

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/SetComposingRegionCommand;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_7
    instance-of v0, p1, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;

    if-eqz v0, :cond_8

    check-cast p1, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_8
    instance-of v0, p1, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;

    if-eqz v0, :cond_9

    check-cast p1, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_9
    instance-of v0, p1, Landroidx/compose/ui/text/input/SetSelectionCommand;

    if-eqz v0, :cond_a

    check-cast p1, Landroidx/compose/ui/text/input/SetSelectionCommand;

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/SetSelectionCommand;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_a
    instance-of v0, p1, Landroidx/compose/ui/text/input/FinishComposingTextCommand;

    if-eqz v0, :cond_b

    const-string p1, "FinishComposingTextCommand()"

    goto :goto_3

    :cond_b
    instance-of v0, p1, Landroidx/compose/ui/text/input/BackspaceCommand;

    if-eqz v0, :cond_c

    const-string p1, "BackspaceCommand()"

    goto :goto_3

    :cond_c
    instance-of v0, p1, Landroidx/compose/ui/text/input/MoveCursorCommand;

    if-eqz v0, :cond_d

    check-cast p1, Landroidx/compose/ui/text/input/MoveCursorCommand;

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/MoveCursorCommand;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_d
    instance-of v0, p1, Landroidx/compose/ui/text/input/DeleteAllCommand;

    if-eqz v0, :cond_e

    const-string p1, "DeleteAllCommand()"

    goto :goto_3

    :cond_e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    sget-object v0, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/KClass;->B()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_f

    const-string p1, "{anonymous EditCommand}"

    :cond_f
    const-string v0, "Unknown EditCommand: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p0, [Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    check-cast p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    sget v0, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->d:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-static {v0, p0}, Lkotlin/collections/ArraysKt;->f(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    move-object v1, p1

    :cond_10
    return-object v1

    :pswitch_c
    check-cast p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    check-cast p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    sget v0, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->d:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-ne v0, v1, :cond_11

    goto :goto_4

    :cond_11
    move-object p0, p1

    :goto_4
    return-object p0

    :pswitch_d
    check-cast p0, Lre;

    check-cast p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    sget v0, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->d:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lre;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-ne v0, p1, :cond_12

    move-object v1, p0

    goto :goto_5

    :cond_12
    const-string p0, "Section type mismatch during swap!"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    :goto_5
    return-object v1

    :pswitch_e
    check-cast p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModel;

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p1, v2}, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModel;->i2(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_f
    check-cast p0, Lcoil3/disk/DiskLruCache;

    check-cast p1, Ljava/io/IOException;

    iput-boolean v3, p0, Lcoil3/disk/DiskLruCache;->o:Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_10
    check-cast p0, Lokhttp3/internal/cache/DiskLruCache;

    check-cast p1, Ljava/io/IOException;

    sget-object v0, Lokhttp3/internal/cache/DiskLruCache;->w:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lokhttp3/internal/_UtilJvmKt;->a:Ljava/util/TimeZone;

    iput-boolean v3, p0, Lokhttp3/internal/cache/DiskLruCache;->n:Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_11
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/DiscoverConnectivityView;

    check-cast p1, Landroid/view/View;

    sget v0, Lcom/vuitton/android/presentation/screen/connectivity/DiscoverConnectivityView;->d:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/DiscoverConnectivityView;->b:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_13

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_12
    check-cast p0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->l:Landroidx/compose/material3/TopAppBarScrollBehavior;

    invoke-interface {p0}, Landroidx/compose/material3/TopAppBarScrollBehavior;->getState()Landroidx/compose/material3/TopAppBarState;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/material3/TopAppBarState;->b()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroidx/compose/material3/TopAppBarState;->c(F)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_13
    check-cast p0, Lkotlin/Pair;

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    sget v0, Landroidx/compose/material3/DatePickerKt;->a:F

    iget-object p0, p0, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->i(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_14
    check-cast p0, Lcom/canhub/cropper/CropImageActivity;

    check-cast p1, Landroidx/activity/OnBackPressedCallback;

    sget v0, Lcom/canhub/cropper/CropImageActivity;->p:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->x()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_15
    check-cast p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;

    check-cast p1, Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;->l4()V

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;->x9()V

    new-instance p0, Lcom/vuitton/android/presentation/screen/feed/components/subcomponents/ContactabilitySectionKt$ContactabilitySection$lambda$0$0$$inlined$onPauseOrDispose$1;

    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/screen/feed/components/subcomponents/ContactabilitySectionKt$ContactabilitySection$lambda$0$0$$inlined$onPauseOrDispose$1;-><init>(Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope;)V

    return-object p0

    :pswitch_16
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/PairWatchV2Ui;

    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityView;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/PairWatchV2Ui;->b:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityView;->D(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityView;->I()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_17
    check-cast p0, Landroidx/compose/runtime/ViewTreeHostDefaultKey;

    check-cast p1, Landroidx/compose/runtime/CompositionLocalAccessorScope;

    sget-object v0, Landroidx/compose/runtime/HostDefaultProviderKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-interface {p1, v0}, Landroidx/compose/runtime/CompositionLocalAccessorScope;->b(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/HostDefaultProvider;

    invoke-interface {p1, p0}, Landroidx/compose/runtime/HostDefaultProvider;->a(Landroidx/compose/runtime/ViewTreeHostDefaultKey;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_18
    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoItem;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoItem;->c:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_19
    check-cast p0, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    check-cast p1, Landroidx/compose/ui/node/TraversableNode;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroidx/compose/material3/internal/ParentSemanticsNode;

    iput-boolean v3, p1, Landroidx/compose/material3/internal/ParentSemanticsNode;->q:Z

    iget-object v0, p1, Landroidx/compose/material3/internal/ParentSemanticsNode;->p:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->b(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_1a
    check-cast p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$NfcScan;

    check-cast p1, Landroidx/navigation/NavOptionsBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$NfcScan;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$NfcScan;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$NfcScan;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Landroidx/navigation/NavOptionsBuilder;->g:Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$NfcScan;

    const/4 p0, -0x1

    iput p0, p1, Landroidx/navigation/NavOptionsBuilder;->d:I

    iput-boolean v2, p1, Landroidx/navigation/NavOptionsBuilder;->e:Z

    new-instance p0, Landroidx/navigation/PopUpToBuilder;

    invoke-direct {p0}, Landroidx/navigation/PopUpToBuilder;-><init>()V

    iput-boolean v3, p0, Landroidx/navigation/PopUpToBuilder;->a:Z

    iput-boolean v3, p1, Landroidx/navigation/NavOptionsBuilder;->e:Z

    iget-boolean p0, p0, Landroidx/navigation/PopUpToBuilder;->b:Z

    iput-boolean p0, p1, Landroidx/navigation/NavOptionsBuilder;->f:Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1b
    check-cast p0, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;->l:Lkotlin/text/Regex;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_15

    goto :goto_6

    :cond_15
    move-object v1, p1

    :goto_6
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;->h:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;->i:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;->k:Landroidx/compose/runtime/MutableState;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;->g:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_16

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1c
    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPCatalogViewModelImpl;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$DispatchFilterSelectedEvent;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$DispatchFilterSelectedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPCatalogViewModelImpl;->O0(Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

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
