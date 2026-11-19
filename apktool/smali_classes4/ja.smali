.class public final synthetic Lja;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;I)V
    .locals 0

    iput p3, p0, Lja;->b:I

    iput-object p1, p0, Lja;->c:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    iput-object p2, p0, Lja;->d:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lja;->b:I

    iget-object v1, p0, Lja;->d:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;

    iget-object p0, p0, Lja;->c:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;->a:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->n:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$CreditsUiModel;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet$Credits;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$CreditsUiModel;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet$Credits;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;->j7(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;->a:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->k:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideCardUiModel;

    if-eqz p0, :cond_1

    new-instance v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet$CardText;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideCardUiModel;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideCardUiModel;->a:Ljava/lang/String;

    invoke-direct {v0, v2, p0}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet$CardText;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;->j7(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet;)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
