.class public final synthetic Lm01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/SpeakerTypeFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/SpeakerTypeFragment;I)V
    .locals 0

    iput p2, p0, Lm01;->b:I

    iput-object p1, p0, Lm01;->c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/SpeakerTypeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lm01;->b:I

    iget-object p0, p0, Lm01;->c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/SpeakerTypeFragment;

    check-cast p1, Landroid/view/View;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/SpeakerTypeFragment;->H:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/SpeakerTypeFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/SpeakerTypeFragment;->F:Lkotlin/jvm/functions/Function1;

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkSpeakerTypeEnum;->PM:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkSpeakerTypeEnum;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/SpeakerTypeFragment;->H:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/SpeakerTypeFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/SpeakerTypeFragment;->F:Lkotlin/jvm/functions/Function1;

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkSpeakerTypeEnum;->GM:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkSpeakerTypeEnum;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
