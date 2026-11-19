.class public final synthetic Lsf0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    iput p4, p0, Lsf0;->b:I

    iput-object p1, p0, Lsf0;->c:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lsf0;->d:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;

    iput-object p3, p0, Lsf0;->e:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lsf0;->b:I

    iget-object v1, p0, Lsf0;->e:Lkotlin/jvm/functions/Function0;

    iget-object v2, p0, Lsf0;->d:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;

    iget-object p0, p0, Lsf0;->c:Lkotlin/jvm/functions/Function1;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRegistrationAddressComposableKt;->a:Ljava/util/List;

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$OnSkipAddressClickedEvent;

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->o:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->p:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    invoke-direct {v0, v3, v2}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$OnSkipAddressClickedEvent;-><init>(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRegistrationAddressComposableKt;->a:Ljava/util/List;

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$OnConfirmAddressClickedEvent;

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->o:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->p:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    invoke-direct {v0, v3, v2}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$OnConfirmAddressClickedEvent;-><init>(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
