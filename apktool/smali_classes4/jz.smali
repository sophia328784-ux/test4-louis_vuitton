.class public final synthetic Ljz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;

.field public final synthetic d:Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;I)V
    .locals 0

    iput p3, p0, Ljz;->b:I

    iput-object p1, p0, Ljz;->c:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;

    iput-object p2, p0, Ljz;->d:Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Ljz;->b:I

    iget-object v1, p0, Ljz;->d:Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;

    iget-object p0, p0, Ljz;->c:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;

    check-cast p1, Landroid/view/View;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->Q:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v1, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->g:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->M(Landroid/widget/EditText;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->Q:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v1, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->d:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->K(Landroid/widget/EditText;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->Q:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v1, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->o:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->M(Landroid/widget/EditText;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->Q:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v1, Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;->l:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;->K(Landroid/widget/EditText;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
