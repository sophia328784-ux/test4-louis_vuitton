.class public final synthetic Lyx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

.field public final synthetic e:Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

.field public final synthetic f:I

.field public final synthetic g:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;ILandroidx/compose/runtime/MutableState;I)V
    .locals 0

    iput p6, p0, Lyx;->b:I

    iput-object p1, p0, Lyx;->c:Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;

    iput-object p2, p0, Lyx;->d:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    iput-object p3, p0, Lyx;->e:Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

    iput p4, p0, Lyx;->f:I

    iput-object p5, p0, Lyx;->g:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lyx;->b:I

    iget-object v1, p0, Lyx;->g:Landroidx/compose/runtime/MutableState;

    iget v2, p0, Lyx;->f:I

    iget-object v3, p0, Lyx;->e:Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

    iget-object v4, p0, Lyx;->d:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    iget-object p0, p0, Lyx;->c:Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    check-cast v3, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselMUiModel;

    iget-object v0, v3, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselMUiModel;->a:Ljava/lang/String;

    const-string v1, "CarouselMedium"

    invoke-virtual {p0, v4, v1, v0, v2}, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;->b(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    check-cast v3, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;

    iget-object v0, v3, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;->a:Ljava/lang/String;

    const-string v1, "CarouselLargeSingle"

    invoke-virtual {p0, v4, v1, v0, v2}, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;->b(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    check-cast v3, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLMultipleUiModel;

    iget-object v0, v3, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLMultipleUiModel;->a:Ljava/lang/String;

    const-string v1, "CarouselLargeMultiple"

    invoke-virtual {p0, v4, v1, v0, v2}, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;->b(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
