.class public final Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u00a1\u0001\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010(\u001a\u00020\'\u00a2\u0006\u0004\u0008)\u0010*\u00a8\u0006+"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;",
        "Landroidx/lifecycle/SavedStateHandle;",
        "savedStateHandle",
        "Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;",
        "addressFormSupervisor",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/domain/monitoring/Monitor;",
        "monitor",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "Lcom/vuitton/android/presentation/screen/account/addresseditor/error/AddressErrorMessageMapper;",
        "addressErrorMessageMapper",
        "Lcom/vuitton/android/presentation/screen/account/addresseditor/validation/PhoneValidationRules;",
        "phoneValidationRules",
        "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;",
        "getProfileUseCase",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;",
        "getAddressCivilitiesMappingUseCase",
        "Lcom/vuitton/android/domain/usecase/account/address/EditAddressUseCase;",
        "editAddressUseCase",
        "Lcom/vuitton/android/domain/usecase/account/address/AddAddressUseCase;",
        "addAddressUseCase",
        "Lcom/vuitton/android/domain/usecase/account/address/DeleteAddressUseCase;",
        "deleteAddressUseCase",
        "Lcom/vuitton/android/domain/usecase/forms/GetMainAddressFormUseCase;",
        "getMainAddressFormUseCase",
        "Lcom/vuitton/android/domain/usecase/forms/GetSecondaryAddressFormUseCase;",
        "getSecondaryAddressFormUseCase",
        "Lcom/vuitton/android/domain/usecase/account/address/GetCNCityListUseCase;",
        "getCNCityListUseCase",
        "Lcom/vuitton/android/domain/usecase/account/address/GetCNCountyListUseCase;",
        "getCNCountyListUseCase",
        "Lcom/vuitton/android/domain/usecase/account/address/GetPostalCodeAutocompleteUseCase;",
        "getPostalCodeAutocompleteUseCase",
        "Lcom/vuitton/android/presentation/notification/NotificationBuilder;",
        "notificationBuilder",
        "<init>",
        "(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/presentation/screen/account/addresseditor/error/AddressErrorMessageMapper;Lcom/vuitton/android/presentation/screen/account/addresseditor/validation/PhoneValidationRules;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;Lcom/vuitton/android/domain/usecase/account/address/EditAddressUseCase;Lcom/vuitton/android/domain/usecase/account/address/AddAddressUseCase;Lcom/vuitton/android/domain/usecase/account/address/DeleteAddressUseCase;Lcom/vuitton/android/domain/usecase/forms/GetMainAddressFormUseCase;Lcom/vuitton/android/domain/usecase/forms/GetSecondaryAddressFormUseCase;Lcom/vuitton/android/domain/usecase/account/address/GetCNCityListUseCase;Lcom/vuitton/android/domain/usecase/account/address/GetCNCountyListUseCase;Lcom/vuitton/android/domain/usecase/account/address/GetPostalCodeAutocompleteUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;)V",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final A:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final B:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final C:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final D:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final E:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final F:Ljava/util/LinkedHashMap;

.field public final G:Lkotlinx/coroutines/flow/StateFlow;

.field public final a:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

.field public final b:Lcom/vuitton/foundation/logger/Logger;

.field public final c:Lcom/vuitton/android/domain/monitoring/Monitor;

.field public final d:Lcom/vuitton/android/presentation/screen/account/addresseditor/error/AddressErrorMessageMapper;

.field public final e:Lcom/vuitton/android/presentation/screen/account/addresseditor/validation/PhoneValidationRules;

.field public final f:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

.field public final g:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

.field public final h:Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;

.field public final i:Lcom/vuitton/android/domain/usecase/account/address/EditAddressUseCase;

.field public final j:Lcom/vuitton/android/domain/usecase/account/address/AddAddressUseCase;

.field public final k:Lcom/vuitton/android/domain/usecase/account/address/DeleteAddressUseCase;

.field public final l:Lcom/vuitton/android/domain/usecase/forms/GetMainAddressFormUseCase;

.field public final m:Lcom/vuitton/android/domain/usecase/forms/GetSecondaryAddressFormUseCase;

.field public final n:Lcom/vuitton/android/domain/usecase/account/address/GetCNCityListUseCase;

.field public final o:Lcom/vuitton/android/domain/usecase/account/address/GetCNCountyListUseCase;

.field public final p:Lcom/vuitton/android/domain/usecase/account/address/GetPostalCodeAutocompleteUseCase;

.field public final q:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

.field public final r:Z

.field public final s:Ljava/lang/String;

.field public final t:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public u:Ljava/util/List;

.field public final v:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final w:Lkotlinx/coroutines/flow/Flow;

.field public final x:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final y:Lkotlinx/coroutines/flow/Flow;

.field public final z:Lkotlinx/coroutines/flow/MutableStateFlow;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/presentation/screen/account/addresseditor/error/AddressErrorMessageMapper;Lcom/vuitton/android/presentation/screen/account/addresseditor/validation/PhoneValidationRules;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;Lcom/vuitton/android/domain/usecase/account/address/EditAddressUseCase;Lcom/vuitton/android/domain/usecase/account/address/AddAddressUseCase;Lcom/vuitton/android/domain/usecase/account/address/DeleteAddressUseCase;Lcom/vuitton/android/domain/usecase/forms/GetMainAddressFormUseCase;Lcom/vuitton/android/domain/usecase/forms/GetSecondaryAddressFormUseCase;Lcom/vuitton/android/domain/usecase/account/address/GetCNCityListUseCase;Lcom/vuitton/android/domain/usecase/account/address/GetCNCountyListUseCase;Lcom/vuitton/android/domain/usecase/account/address/GetPostalCodeAutocompleteUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;)V
    .locals 19
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p15 .. p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p18 .. p18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p19 .. p19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0}, Landroidx/lifecycle/ViewModel;-><init>()V

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->a:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    move-object/from16 v3, p4

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->c:Lcom/vuitton/android/domain/monitoring/Monitor;

    move-object/from16 v3, p6

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->d:Lcom/vuitton/android/presentation/screen/account/addresseditor/error/AddressErrorMessageMapper;

    move-object/from16 v3, p7

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->e:Lcom/vuitton/android/presentation/screen/account/addresseditor/validation/PhoneValidationRules;

    move-object/from16 v3, p8

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    move-object/from16 v3, p9

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->g:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-object/from16 v3, p10

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->h:Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;

    move-object/from16 v3, p11

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/account/address/EditAddressUseCase;

    move-object/from16 v3, p12

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/account/address/AddAddressUseCase;

    move-object/from16 v3, p13

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/account/address/DeleteAddressUseCase;

    move-object/from16 v3, p14

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->l:Lcom/vuitton/android/domain/usecase/forms/GetMainAddressFormUseCase;

    move-object/from16 v3, p15

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->m:Lcom/vuitton/android/domain/usecase/forms/GetSecondaryAddressFormUseCase;

    move-object/from16 v3, p16

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->n:Lcom/vuitton/android/domain/usecase/account/address/GetCNCityListUseCase;

    move-object/from16 v3, p17

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->o:Lcom/vuitton/android/domain/usecase/account/address/GetCNCountyListUseCase;

    move-object/from16 v3, p18

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->p:Lcom/vuitton/android/domain/usecase/account/address/GetPostalCodeAutocompleteUseCase;

    move-object/from16 v3, p19

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->q:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    const-string v3, "IS_MAIN_ADDRESS"

    invoke-virtual {v1, v3}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iput-boolean v3, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->r:Z

    const-string v5, "ADDRESS_ID"

    invoke-virtual {v1, v5}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v5

    :goto_1
    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->s:Ljava/lang/String;

    move-object/from16 v6, p5

    iget-object v6, v6, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v6}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->t:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v6, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->u:Ljava/util/List;

    const/4 v6, 0x7

    invoke-static {v4, v6, v5}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->v:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v7}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->w:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v4, v6, v5}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->x:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v6}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->y:Lkotlinx/coroutines/flow/Flow;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v6}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->A:Lkotlinx/coroutines/flow/MutableStateFlow;

    if-nez v1, :cond_3

    if-eqz v3, :cond_2

    sget-object v1, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;->ADD_MAIN_ADDRESS:Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;->ADD_SECONDARY_ADDRESS:Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    sget-object v1, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;->EDIT_MAIN_ADDRESS:Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;

    goto :goto_2

    :cond_4
    sget-object v1, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;->EDIT_SECONDARY_ADDRESS:Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;

    :goto_2
    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->B:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v5}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->C:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v5}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->D:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v5}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v8

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->E:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->F:Ljava/util/LinkedHashMap;

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v9

    const/4 v10, 0x5

    new-array v10, v10, [Lkotlinx/coroutines/flow/Flow;

    aput-object v7, v10, v4

    const/4 v4, 0x1

    aput-object v6, v10, v4

    const/4 v6, 0x2

    aput-object v1, v10, v6

    const/4 v7, 0x3

    aput-object v9, v10, v7

    const/4 v9, 0x4

    aput-object v3, v10, v9

    new-instance v3, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$special$$inlined$combine$1;

    invoke-direct {v3, v10}, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v10

    sget-object v11, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    new-instance v12, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    const/16 v13, 0x17

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 p5, v2

    move-object/from16 p1, v12

    move/from16 p7, v13

    move-object/from16 p8, v14

    move/from16 p2, v15

    move/from16 p3, v16

    move-object/from16 p4, v17

    move-object/from16 p6, v18

    invoke-direct/range {p1 .. p8}, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;-><init>(ZZLcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorAutocompleteSetup;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, p1

    invoke-static {v3, v10, v11, v2}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->G:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;

    sget-object v2, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$WhenMappings;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    if-eq v1, v4, :cond_7

    if-eq v1, v6, :cond_7

    if-eq v1, v7, :cond_6

    if-ne v1, v9, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {}, Lv40;->g()V

    throw v5

    :cond_6
    :goto_3
    const-string v1, "Edit"

    goto :goto_4

    :cond_7
    const-string v1, "Add"

    :goto_4
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->p5()Lcom/vuitton/android/domain/monitoring/MonitorAction;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    const-string v3, "addressFormOpenContext"

    invoke-virtual {v2, v1, v3}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->b()Lkotlin/Unit;

    const-string v1, "loadDynamicAddressFormJob"

    invoke-virtual {v8, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/Job;

    if-eqz v2, :cond_8

    invoke-interface {v2}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v2

    if-ne v2, v4, :cond_8

    return-void

    :cond_8
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;

    invoke-direct {v3, v0, v5}, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;-><init>(Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v5, v5, v3, v7}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v0

    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final yc(Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->a:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->F:Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->t:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-static {v2}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->c(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$WhenMappings;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p1, v2, :cond_3

    const/4 v5, 0x4

    if-eq p1, v5, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->COUNTY:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v5, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-interface {v0, p1, v5}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->d(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/util/List;)V

    invoke-static {p2}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "refreshCNCountyFieldJob"

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v0

    if-ne v0, v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v4, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$refreshCNCountyField$1;

    invoke-direct {v4, p0, p2, v3}, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$refreshCNCountyField$1;-><init>(Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v3, v3, v4, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    sget-object p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->CITY:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v5, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-interface {v0, p1, v5}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->d(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/util/List;)V

    sget-object p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->COUNTY:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-interface {v0, p1, v5}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->d(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/util/List;)V

    invoke-static {p2}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const-string p1, "refreshCNCityListJob"

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v0

    if-ne v0, v4, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v4, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$refreshCNCityList$1;

    invoke-direct {v4, p0, p2, v3}, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$refreshCNCityList$1;-><init>(Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v3, v3, v4, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_0
    return-void
.end method


# virtual methods
.method public final Ac()Lcom/vuitton/foundation/model/domain/model/profile/Address;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->s:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->C:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->i:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/profile/Address;

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/profile/Address;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    :cond_1
    check-cast v0, Lcom/vuitton/foundation/model/domain/model/profile/Address;

    :cond_2
    return-object v0
.end method

.method public final G6()V
    .locals 41

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->B:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;->ADD_MAIN_ADDRESS:Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;->ADD_SECONDARY_ADDRESS:Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v4

    :goto_1
    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->a:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->C:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->t:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-static {v6}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->c(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result v6

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->u:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->DESCRIPTION:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    iget-boolean v12, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->r:Z

    const-string v9, ""

    if-eqz v6, :cond_2

    if-eqz v12, :cond_2

    const-string v6, "\u5e38\u7528\u5730\u5740"

    goto :goto_2

    :cond_2
    move-object v6, v9

    :goto_2
    invoke-static {v2, v8, v6}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->f(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v6, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->CIVILITY:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    const/4 v8, 0x0

    if-eqz v5, :cond_3

    iget-object v10, v5, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->h:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v10, v8

    :goto_3
    if-nez v10, :cond_4

    move-object v10, v9

    :cond_4
    invoke-static {v2, v6, v10}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->f(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    check-cast v7, Ljava/lang/Iterable;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v13, v10

    check-cast v13, Lcom/vuitton/foundation/model/domain/model/forms/Civility;

    iget-object v13, v13, Lcom/vuitton/foundation/model/domain/model/forms/Civility;->a:Ljava/lang/String;

    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    goto :goto_4

    :cond_6
    move-object v10, v8

    :goto_4
    check-cast v10, Lcom/vuitton/foundation/model/domain/model/forms/Civility;

    if-eqz v10, :cond_7

    iget-object v7, v10, Lcom/vuitton/foundation/model/domain/model/forms/Civility;->b:Ljava/lang/String;

    if-eqz v7, :cond_7

    move-object v13, v7

    goto :goto_5

    :cond_7
    move-object v13, v6

    :goto_5
    sget-object v6, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->FIRSTNAME1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-eqz v5, :cond_8

    iget-object v7, v5, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->c:Ljava/lang/String;

    goto :goto_6

    :cond_8
    move-object v7, v8

    :goto_6
    if-nez v7, :cond_9

    move-object v7, v9

    :cond_9
    invoke-static {v2, v6, v7}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->f(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v6, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->LASTNAME1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-eqz v5, :cond_a

    iget-object v7, v5, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->e:Ljava/lang/String;

    goto :goto_7

    :cond_a
    move-object v7, v8

    :goto_7
    if-nez v7, :cond_b

    move-object v7, v9

    :cond_b
    invoke-static {v2, v6, v7}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->f(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    sget-object v6, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->FIRSTNAME2:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-eqz v5, :cond_c

    iget-object v7, v5, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->d:Ljava/lang/String;

    goto :goto_8

    :cond_c
    move-object v7, v8

    :goto_8
    if-nez v7, :cond_d

    move-object v7, v9

    :cond_d
    invoke-static {v2, v6, v7}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->f(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    sget-object v6, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->LASTNAME2:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-eqz v5, :cond_e

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->f:Ljava/lang/String;

    goto :goto_9

    :cond_e
    move-object v5, v8

    :goto_9
    if-nez v5, :cond_f

    goto :goto_a

    :cond_f
    move-object v9, v5

    :goto_a
    invoke-static {v2, v6, v9}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->f(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    sget-object v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->ADDRESS1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v2, v5, v4}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v18

    sget-object v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->ADDRESS2:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v2, v5, v4}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v19

    sget-object v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->ADDRESS3:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v2, v5, v4}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v20

    sget-object v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->STREET_NUMBER:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v2, v5, v4}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v21

    sget-object v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->STREET:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v2, v5, v4}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v22

    sget-object v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->COUNTY:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v2, v5, v4}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v23

    sget-object v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->CITY:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v2, v5, v4}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v24

    sget-object v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->POSTAL_CODE:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v2, v5, v4}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v25

    sget-object v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->STATE:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v2, v5, v4}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v26

    invoke-virtual {v2, v5, v3}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v27

    sget-object v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->COUNTRY:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v2, v3, v4}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v28

    sget-object v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v2, v3, v4}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v29

    sget-object v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_COUNTRY1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v2, v3, v4}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v30

    sget-object v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_TYPE1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v2, v3, v4}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v31

    sget-object v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER2:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v2, v3, v4}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v32

    sget-object v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_COUNTRY2:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v2, v3, v4}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v33

    sget-object v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_TYPE2:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v2, v3, v4}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v34

    sget-object v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER3:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v2, v3, v4}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v35

    sget-object v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_COUNTRY3:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v2, v3, v4}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v36

    sget-object v3, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_TYPE3:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v2, v3, v4}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v37

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/account/address/AddressRequestBody;

    const/16 v38, 0x0

    const/16 v39, 0x0

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->s:Ljava/lang/String;

    invoke-direct/range {v9 .. v39}, Lcom/vuitton/foundation/model/domain/model/account/address/AddressRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-nez v1, :cond_10

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->s:Ljava/lang/String;

    if-nez v2, :cond_10

    return-void

    :cond_10
    if-eqz v1, :cond_11

    const-string v2, "addAddressJob"

    goto :goto_b

    :cond_11
    const-string v2, "editAddressJob"

    :goto_b
    new-instance v3, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$upsertAddress$1;

    invoke-direct {v3, v1, v0, v9, v8}, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$upsertAddress$1;-><init>(ZLcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;Lcom/vuitton/foundation/model/domain/model/account/address/AddressRequestBody;Lkotlin/coroutines/Continuation;)V

    if-eqz v1, :cond_12

    const-string v1, "Error while creating an address"

    goto :goto_c

    :cond_12
    const-string v1, "Error while editing an address"

    :goto_c
    sget-object v4, Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Action$SaveAddress;->a:Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Action$SaveAddress;

    const-string v5, "Save"

    move-object/from16 v40, v3

    move-object v3, v1

    move-object v1, v2

    move-object/from16 v2, v40

    invoke-virtual/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->zc(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Action;Ljava/lang/String;)V

    return-void
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->G:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final a0(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/phone/PhoneType;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->a:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a0(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/phone/PhoneType;)V

    return-void
.end method

.method public final b()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->y:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final e0(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/phone/PhoneType;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->a:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->e0(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/phone/PhoneType;)V

    return-void
.end method

.method public final f(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$onFieldUpdated$1;

    const-string v5, "prefillFieldWithApi(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/String;)V"

    const/4 v6, 0x0

    const/4 v1, 0x2

    const-class v3, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;

    const-string v4, "prefillFieldWithApi"

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p0, v2, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->a:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {p0, p1, p2, v0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->j(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v2}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p0

    new-instance p2, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$onFieldUpdated$2;

    const/4 v0, 0x0

    invoke-direct {p2, v2, p1, v0}, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$onFieldUpdated$2;-><init>(Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    invoke-static {p0, v0, v0, p2, p1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final i0(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->D:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->v:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object p1, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorNavigation$ToAddressAutocomplete;->a:Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorNavigation$ToAddressAutocomplete;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlinx/coroutines/channels/ChannelResult;->b:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    :cond_0
    return-void
.end method

.method public final l5()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->w:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final n0()V
    .locals 2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->p5()Lcom/vuitton/android/domain/monitoring/MonitorAction;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    const-string v0, "Dismiss"

    const-string v1, "addressFormExitContext"

    invoke-virtual {p0, v0, v1}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->b()Lkotlin/Unit;

    return-void
.end method

.method public final p5()Lcom/vuitton/android/domain/monitoring/MonitorAction;
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->t:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v1, Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Action$OpenAddEditAddress;->a:Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Action$OpenAddEditAddress;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->c:Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-interface {p0, v0, v1}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object p0

    return-object p0
.end method

.method public final w8(Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AutocompleteAddressResultUiModel;Z)V
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->D:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->E:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    :cond_0
    move-object v7, v0

    iget-object v8, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->a:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    if-eqz v7, :cond_1

    iget-object v9, p1, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AutocompleteAddressResultUiModel;->a:Ljava/lang/String;

    new-instance v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$updateFieldsWithAutocompleteAddressResult$1$1$1;

    const-string v5, "prefillFieldWithApi(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/String;)V"

    const/4 v6, 0x0

    const/4 v1, 0x2

    const-class v3, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;

    const-string v4, "prefillFieldWithApi"

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v8, v7, v9, v0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->j(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_1
    if-eqz p2, :cond_5

    sget-object v7, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->STATE:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AutocompleteAddressResultUiModel;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AutocompleteAddressResultUiModel;->c:Ljava/lang/String;

    const-string v9, ""

    if-nez v1, :cond_2

    move-object v1, v9

    :cond_2
    new-instance v10, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;

    invoke-direct {v10, v1, v0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$updateFieldsWithAutocompleteAddressResult$1$2;

    const-string v5, "prefillFieldWithApi(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/String;)V"

    const/4 v6, 0x0

    const/4 v1, 0x2

    const-class v3, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;

    const-string v4, "prefillFieldWithApi"

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v8, v7, v10, v0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->j(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->POSTAL_CODE:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AutocompleteAddressResultUiModel;->f:Ljava/lang/String;

    if-nez v0, :cond_3

    move-object v10, v9

    goto :goto_0

    :cond_3
    move-object v10, v0

    :goto_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$updateFieldsWithAutocompleteAddressResult$1$3;

    const-string v5, "prefillFieldWithApi(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/String;)V"

    const/4 v6, 0x0

    const/4 v1, 0x2

    const-class v3, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;

    const-string v4, "prefillFieldWithApi"

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v8, v7, v10, v0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->j(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->CITY:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AutocompleteAddressResultUiModel;->e:Ljava/lang/String;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    move-object v9, v0

    :goto_1
    new-instance v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$updateFieldsWithAutocompleteAddressResult$1$4;

    const-string v5, "prefillFieldWithApi(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/String;)V"

    const/4 v6, 0x0

    const/4 v1, 0x2

    const-class v3, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;

    const-string v4, "prefillFieldWithApi"

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v8, v7, v9, v0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->j(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_5
    return-void
.end method

.method public final x0()V
    .locals 7

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->s:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v3, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$deleteAddress$1;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$deleteAddress$1;-><init>(Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;Lkotlin/coroutines/Continuation;)V

    sget-object v5, Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Action$DeleteAddress;->a:Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Action$DeleteAddress;

    const-string v6, "Delete"

    const-string v2, "deleteAddressJob"

    const-string v4, "Error while deleting an address"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->zc(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Action;Ljava/lang/String;)V

    return-void
.end method

.method public final zc(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Action;Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->F:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$crudAddress$1;

    const/4 v8, 0x0

    move-object v3, p0

    move-object v5, p2

    move-object v7, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v2 .. v8}, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$crudAddress$1;-><init>(Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;Lcom/vuitton/android/domain/monitoring/address/AddressBookMonitoring$Action;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    const/4 p2, 0x0

    invoke-static {v1, p2, p2, v2, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
