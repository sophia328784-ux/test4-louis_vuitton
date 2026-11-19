.class public final synthetic Lkk0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function2;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;II)V
    .locals 0

    iput p4, p0, Lkk0;->b:I

    iput-object p1, p0, Lkk0;->c:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lkk0;->d:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    iput p3, p0, Lkk0;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lkk0;->b:I

    iget v1, p0, Lkk0;->e:I

    iget-object v2, p0, Lkk0;->d:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    iget-object p0, p0, Lkk0;->c:Lkotlin/jvm/functions/Function2;

    packed-switch v0, :pswitch_data_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
