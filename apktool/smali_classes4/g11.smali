.class public final synthetic Lg11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/StandardTutorialFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/StandardTutorialFragment;I)V
    .locals 0

    iput p2, p0, Lg11;->b:I

    iput-object p1, p0, Lg11;->c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/StandardTutorialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lg11;->b:I

    iget-object p0, p0, Lg11;->c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/StandardTutorialFragment;

    check-cast p1, Landroid/view/View;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/StandardTutorialFragment;->K:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/StandardTutorialFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/StandardTutorialFragment;->G:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/StandardTutorialFragment$Listener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/StandardTutorialFragment$Listener;->b()V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/StandardTutorialFragment;->K:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/StandardTutorialFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/StandardTutorialFragment;->G:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/StandardTutorialFragment$Listener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/StandardTutorialFragment$Listener;->a()V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
