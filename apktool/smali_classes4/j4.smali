.class public final synthetic Lj4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/io/Serializable;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p7, p0, Lj4;->b:I

    iput-object p1, p0, Lj4;->c:Ljava/lang/Object;

    iput-object p2, p0, Lj4;->d:Ljava/lang/Object;

    iput-object p3, p0, Lj4;->e:Ljava/lang/Object;

    iput-object p4, p0, Lj4;->f:Ljava/io/Serializable;

    iput-object p5, p0, Lj4;->h:Ljava/lang/Object;

    iput-object p6, p0, Lj4;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 12

    iget v0, p0, Lj4;->b:I

    iget-object v1, p0, Lj4;->g:Ljava/lang/Object;

    iget-object v2, p0, Lj4;->h:Ljava/lang/Object;

    iget-object v3, p0, Lj4;->f:Ljava/io/Serializable;

    iget-object v4, p0, Lj4;->e:Ljava/lang/Object;

    iget-object v5, p0, Lj4;->d:Ljava/lang/Object;

    iget-object p0, p0, Lj4;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    move-object v6, p0

    check-cast v6, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;

    move-object v7, v5

    check-cast v7, Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;

    move-object v8, v4

    check-cast v8, Ljava/util/List;

    move-object v9, v3

    check-cast v9, Ljava/util/HashMap;

    move-object v10, v2

    check-cast v10, Ljava/util/ArrayList;

    move-object v11, v1

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual/range {v6 .. v11}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->a(Landroidx/camera/camera2/internal/SupportedSurfaceCombination$FeatureSettings;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteScreenContext;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    check-cast v4, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    check-cast v3, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    check-cast v1, Landroidx/compose/runtime/MutableState;

    sget-object v0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteScreenContext;->NATIVE_REGISTER_ADDRESS:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteScreenContext;

    if-ne p0, v0, :cond_0

    if-eqz v5, :cond_0

    new-instance p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$OnCloseSearchClickedEvent;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v4, v3, v0}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$OnCloseSearchClickedEvent;-><init>(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;I)V

    invoke-interface {v5, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteScreenContext;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    check-cast v4, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    check-cast v3, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    check-cast v2, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;

    check-cast v1, Landroidx/compose/runtime/MutableState;

    sget-object v0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteScreenContext;->NATIVE_REGISTER_ADDRESS:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteScreenContext;

    if-ne p0, v0, :cond_1

    if-eqz v5, :cond_1

    new-instance p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$OnSendSearchClickedEvent;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v4, v3, v0}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$OnSendSearchClickedEvent;-><init>(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;I)V

    invoke-interface {v5, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;->w7()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
