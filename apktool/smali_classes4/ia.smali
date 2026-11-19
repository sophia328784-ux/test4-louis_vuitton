.class public final synthetic Lia;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;I)V
    .locals 0

    iput p2, p0, Lia;->b:I

    iput-object p1, p0, Lia;->c:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lia;->b:I

    const/4 v1, 0x0

    sget-object v2, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet$Leaving;->a:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet$Leaving;

    iget-object p0, p0, Lia;->c:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;

    packed-switch v0, :pswitch_data_0

    invoke-interface {p0, v2}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;->j7(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-interface {p0, v2}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;->j7(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    invoke-interface {p0, v1}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;->j7(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    invoke-interface {p0, v1}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;->j7(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
