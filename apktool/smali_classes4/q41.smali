.class public final synthetic Lq41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;

.field public final synthetic d:Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;I)V
    .locals 0

    iput p3, p0, Lq41;->b:I

    iput-object p1, p0, Lq41;->c:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;

    iput-object p2, p0, Lq41;->d:Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lq41;->b:I

    iget-object v1, p0, Lq41;->d:Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;

    iget-object p0, p0, Lq41;->c:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->Q:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment$Companion;

    iget-object v0, v1, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->k:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->M(Landroid/widget/EditText;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->Q:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment$Companion;

    iget-object v0, v1, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->i:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->K(Landroid/widget/EditText;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->Q:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment$Companion;

    iget-object v0, v1, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->d:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->M(Landroid/widget/EditText;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->Q:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment$Companion;

    iget-object v0, v1, Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;->b:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->K(Landroid/widget/EditText;)V

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
