.class public final synthetic Llk0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function0;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;I)V
    .locals 0

    iput p4, p0, Llk0;->b:I

    iput-object p1, p0, Llk0;->c:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Llk0;->d:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Llk0;->e:Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Llk0;->b:I

    iget-object v1, p0, Llk0;->e:Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;

    iget-object v2, p0, Llk0;->d:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Llk0;->c:Lkotlin/jvm/functions/Function0;

    packed-switch v0, :pswitch_data_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iget-object p0, v1, Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;->a:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    invoke-interface {v2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iget-object p0, v1, Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;->a:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    invoke-interface {v2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
