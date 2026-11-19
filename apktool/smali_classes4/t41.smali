.class public final synthetic Lt41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;I)V
    .locals 0

    iput p2, p0, Lt41;->b:I

    iput-object p1, p0, Lt41;->c:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lt41;->b:I

    iget-object p0, p0, Lt41;->c:Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->p(Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;Landroidx/activity/result/ActivityResult;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;->q(Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;Landroidx/activity/result/ActivityResult;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
