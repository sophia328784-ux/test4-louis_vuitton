.class public final synthetic Lw01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModel;I)V
    .locals 0

    iput p2, p0, Lw01;->b:I

    iput-object p1, p0, Lw01;->c:Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lw01;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnLookChangedEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnLookChangedEvent;-><init>(Z)V

    iget-object p0, p0, Lw01;->c:Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModel;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModel;->X9(Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnLookChangedEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnLookChangedEvent;-><init>(Z)V

    iget-object p0, p0, Lw01;->c:Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModel;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModel;->X9(Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
