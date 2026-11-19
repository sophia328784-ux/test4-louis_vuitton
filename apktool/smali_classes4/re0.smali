.class public final synthetic Lre0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;I)V
    .locals 0

    iput p3, p0, Lre0;->b:I

    iput-object p1, p0, Lre0;->c:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lre0;->d:Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lre0;->b:I

    iget-object v1, p0, Lre0;->d:Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    iget-object p0, p0, Lre0;->c:Lkotlin/jvm/functions/Function1;

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->j:Ljava/lang/String;

    sget-object v1, Lcom/vuitton/android/presentation/screen/cart/models/CartItemIdUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/presentation/screen/cart/models/CartItemIdUiModel;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/cart/models/CartItemIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->j:Ljava/lang/String;

    sget-object v1, Lcom/vuitton/android/presentation/screen/cart/models/CartItemIdUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/presentation/screen/cart/models/CartItemIdUiModel;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/cart/models/CartItemIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
