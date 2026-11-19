.class public final synthetic Ltd0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;

.field public final synthetic d:Landroidx/navigation3/runtime/NavBackStack;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;Landroidx/navigation3/runtime/NavBackStack;I)V
    .locals 0

    iput p3, p0, Ltd0;->b:I

    iput-object p1, p0, Ltd0;->c:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;

    iput-object p2, p0, Ltd0;->d:Landroidx/navigation3/runtime/NavBackStack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Ltd0;->b:I

    sget-object v1, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoTrackingUiModel$EditProfileEvent;->a:Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoTrackingUiModel$EditProfileEvent;

    iget-object v2, p0, Ltd0;->d:Landroidx/navigation3/runtime/NavBackStack;

    iget-object p0, p0, Ltd0;->c:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;

    packed-switch v0, :pswitch_data_0

    invoke-interface {p0, v1}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;->m5(Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoTrackingUiModel;)V

    sget-object p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditPassword;->INSTANCE:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditPassword;

    invoke-virtual {v2, p0}, Landroidx/navigation3/runtime/NavBackStack;->a(Landroidx/navigation3/runtime/NavKey;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-interface {p0, v1}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;->m5(Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoTrackingUiModel;)V

    sget-object p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditMyInfo;->INSTANCE:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditMyInfo;

    invoke-virtual {v2, p0}, Landroidx/navigation3/runtime/NavBackStack;->a(Landroidx/navigation3/runtime/NavKey;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
