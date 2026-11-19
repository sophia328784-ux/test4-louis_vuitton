.class public final synthetic Lfq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel$DescriptionDetailUiModel;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel$DescriptionDetailUiModel;I)V
    .locals 0

    iput p3, p0, Lfq0;->b:I

    iput-object p1, p0, Lfq0;->c:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lfq0;->d:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel$DescriptionDetailUiModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lfq0;->b:I

    iget-object v1, p0, Lfq0;->d:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel$DescriptionDetailUiModel;

    iget-object p0, p0, Lfq0;->c:Lkotlin/jvm/functions/Function1;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->d1:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel$Companion;

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel$DescriptionDetailUiModel;->b:Ljava/lang/String;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->d1:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel$Companion;

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel$DescriptionDetailUiModel;->b:Ljava/lang/String;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
