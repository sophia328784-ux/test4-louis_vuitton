.class final Lcom/vuitton/android/presentation/screen/feed/components/FeedDiscoverSuccessScreenKt$FeedDiscoverSuccessScreen$4$1$2$2$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;",
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
.field public final synthetic b:Lkotlin/jvm/functions/Function2;

.field public final synthetic c:Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/components/FeedDiscoverSuccessScreenKt$FeedDiscoverSuccessScreen$4$1$2$2$2$1;->b:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/feed/components/FeedDiscoverSuccessScreenKt$FeedDiscoverSuccessScreen$4$1$2$2$2$1;->c:Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/components/FeedDiscoverSuccessScreenKt$FeedDiscoverSuccessScreen$4$1$2$2$2$1;->c:Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;->a()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/components/FeedDiscoverSuccessScreenKt$FeedDiscoverSuccessScreen$4$1$2$2$2$1;->b:Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, v0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
