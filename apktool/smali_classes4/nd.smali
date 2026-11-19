.class public final synthetic Lnd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Z)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lnd;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnd;->e:Ljava/lang/Object;

    iput-object p2, p0, Lnd;->f:Ljava/lang/Object;

    iput-object p3, p0, Lnd;->d:Ljava/lang/Object;

    iput-boolean p4, p0, Lnd;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/osa/OsaActivity;ZLandroidx/activity/compose/ManagedActivityResultLauncher;Landroidx/activity/compose/ManagedActivityResultLauncher;)V
    .locals 1

    .line 15
    const/4 v0, 0x4

    iput v0, p0, Lnd;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnd;->d:Ljava/lang/Object;

    iput-boolean p2, p0, Lnd;->c:Z

    iput-object p3, p0, Lnd;->e:Ljava/lang/Object;

    iput-object p4, p0, Lnd;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/Function;I)V
    .locals 0

    .line 16
    iput p5, p0, Lnd;->b:I

    iput-boolean p1, p0, Lnd;->c:Z

    iput-object p2, p0, Lnd;->d:Ljava/lang/Object;

    iput-object p3, p0, Lnd;->e:Ljava/lang/Object;

    iput-object p4, p0, Lnd;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function3;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lnd;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lnd;->c:Z

    iput-object p2, p0, Lnd;->e:Ljava/lang/Object;

    iput-object p3, p0, Lnd;->f:Ljava/lang/Object;

    iput-object p4, p0, Lnd;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lnd;->b:I

    iget-object v1, p0, Lnd;->f:Ljava/lang/Object;

    iget-object v2, p0, Lnd;->e:Ljava/lang/Object;

    iget-boolean v3, p0, Lnd;->c:Z

    iget-object p0, p0, Lnd;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;

    check-cast v2, Landroidx/activity/compose/ManagedActivityResultLauncher;

    check-cast v1, Landroidx/activity/compose/ManagedActivityResultLauncher;

    sget-object v0, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;->u:Lcom/vuitton/android/presentation/screen/osa/OsaActivity$Companion;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToRegisterPage;->a:Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToRegisterPage;

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/osa/OsaDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/osa/OsaDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/vuitton/android/platform/extensions/IntentExtensionKt;->b(Landroid/content/Intent;Landroidx/activity/result/ActivityResultLauncher;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v2, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->j:Ljava/lang/String;

    if-eqz v3, :cond_1

    sget-object v1, Lcom/vuitton/android/presentation/screen/cart/models/CartItemIdUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/presentation/screen/cart/models/CartItemIdUiModel;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/cart/models/CartItemIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/vuitton/android/presentation/screen/cart/models/CartItemIdUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/vuitton/android/presentation/screen/cart/models/CartItemIdUiModel;

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/cart/models/CartItemIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast v2, Landroidx/compose/runtime/MutableState;

    check-cast v1, Ljava/lang/String;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    new-instance v0, Landroidx/compose/material3/ExposedDropdownMenuAnchorType;

    invoke-direct {v0, v1}, Landroidx/compose/material3/ExposedDropdownMenuAnchorType;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    xor-int/lit8 v0, v3, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast v2, Lkotlin/jvm/functions/Function3;

    check-cast v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    sget v0, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationScreenKt;->b:I

    if-eqz v3, :cond_4

    check-cast v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;

    iget-object p0, v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->c:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;

    invoke-direct {v3, p0}, Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object v3, v0

    :goto_2
    iget-object p0, v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->d:Ljava/lang/String;

    if-eqz p0, :cond_3

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingId;

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/booking/BookingId;-><init>(Ljava/lang/String;)V

    :cond_3
    iget-object p0, v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->a:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;

    invoke-interface {v2, v3, v0, p0}, Lkotlin/jvm/functions/Function3;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    check-cast v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->a:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    if-eqz v3, :cond_5

    invoke-interface {p0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_5
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
