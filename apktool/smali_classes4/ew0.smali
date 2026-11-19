.class public final synthetic Lew0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    iput p3, p0, Lew0;->b:I

    iput-object p1, p0, Lew0;->c:Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;

    iput-object p2, p0, Lew0;->d:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lew0;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lew0;->c:Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;->c()V

    iget-object p0, p0, Lew0;->d:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lew0;->c:Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;->c()V

    iget-object p0, p0, Lew0;->d:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
