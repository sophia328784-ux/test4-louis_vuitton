.class final Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistScreenKt$WishlistScreen$3$1$1$1$1$2$2$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Lkotlin/jvm/functions/Function1;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistItemUiModel;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistItemUiModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistScreenKt$WishlistScreen$3$1$1$1$1$2$2$2$1;->b:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistScreenKt$WishlistScreen$3$1$1$1$1$2$2$2$1;->c:Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistItemUiModel;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistScreenKt$WishlistScreen$3$1$1$1$1$2$2$2$1;->c:Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistItemUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistItemUiModel;->a:Ljava/lang/String;

    new-instance v1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistScreenKt$WishlistScreen$3$1$1$1$1$2$2$2$1;->b:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
