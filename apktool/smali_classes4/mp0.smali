.class public final synthetic Lmp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;I)V
    .locals 0

    iput p2, p0, Lmp0;->b:I

    iput-object p1, p0, Lmp0;->c:Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lmp0;->b:I

    iget-object p0, p0, Lmp0;->c:Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;->za(Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;->xc(Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;->za(Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;->xc(Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;->za(Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;->xc(Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
