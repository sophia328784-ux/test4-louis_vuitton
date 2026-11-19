.class public final synthetic Lqj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;I)V
    .locals 0

    iput p3, p0, Lqj;->b:I

    iput-object p1, p0, Lqj;->c:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lqj;->d:Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lqj;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lqj;->d:Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;->a:Ljava/lang/String;

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lqj;->c:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lqj;->c:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lqj;->d:Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lqj;->c:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lqj;->d:Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
