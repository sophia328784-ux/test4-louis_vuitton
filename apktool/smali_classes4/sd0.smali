.class public final synthetic Lsd0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;I)V
    .locals 0

    iput p2, p0, Lsd0;->b:I

    iput-object p1, p0, Lsd0;->c:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lsd0;->b:I

    iget-object p0, p0, Lsd0;->c:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;

    packed-switch v0, :pswitch_data_0

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;->z3()V

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;->Y7()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;->z3()V

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;->Y7()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
