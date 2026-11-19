.class public final synthetic Lzj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/catalog/CatalogTracker;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/catalog/CatalogTracker;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lzj;->b:I

    iput-object p1, p0, Lzj;->c:Lcom/vuitton/android/presentation/screen/catalog/CatalogTracker;

    iput-object p2, p0, Lzj;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lzj;->b:I

    iget-object v1, p0, Lzj;->d:Ljava/lang/String;

    iget-object p0, p0, Lzj;->c:Lcom/vuitton/android/presentation/screen/catalog/CatalogTracker;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/catalog/CatalogTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnPlpScrollEvent;

    invoke-direct {v0, v1, p1}, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnPlpScrollEvent;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/catalog/CatalogTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnPlpSwipeEvent;

    invoke-direct {v0, v1, p1}, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnPlpSwipeEvent;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
