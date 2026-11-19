.class public final synthetic Ls41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;I)V
    .locals 0

    iput p2, p0, Ls41;->b:I

    iput-object p1, p0, Ls41;->c:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ls41;->b:I

    iget-object p0, p0, Ls41;->c:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;

    check-cast p1, Landroid/view/View;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->Q:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x25d5

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->O(I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->Q:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x25d4

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->O(I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
