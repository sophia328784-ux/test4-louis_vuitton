.class final Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$FeedComposable$1$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;",
        "Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;",
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
.field public final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Landroidx/activity/compose/ManagedActivityResultLauncher;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;Landroidx/activity/compose/ManagedActivityResultLauncher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$FeedComposable$1$17;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$FeedComposable$1$17;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$FeedComposable$1$17;->d:Landroidx/activity/compose/ManagedActivityResultLauncher;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;->b:Ljava/lang/String;

    check-cast p2, Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$FeedComposable$1$17;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    new-instance v0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToLiveVideoPage;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToLiveVideoPage;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$FeedComposable$1$17;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/vuitton/android/presentation/screen/feed/FeedDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/feed/FeedDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/components/FeedComposableKt$FeedComposable$1$17;->d:Landroidx/activity/compose/ManagedActivityResultLauncher;

    invoke-static {p1, p0}, Lcom/vuitton/android/platform/extensions/IntentExtensionKt;->b(Landroid/content/Intent;Landroidx/activity/result/ActivityResultLauncher;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
