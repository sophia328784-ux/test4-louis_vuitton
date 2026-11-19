.class public final Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$downloadBroadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$downloadBroadcastReceiver$1",
        "Landroid/content/BroadcastReceiver;",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$downloadBroadcastReceiver$1;->a:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "extra_download_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$downloadBroadcastReceiver$1;->a:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->B:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->M()Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->J:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;

    const/4 p2, 0x0

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;->c:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    if-eqz p0, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    :cond_0
    :goto_0
    move-object v3, p0

    check-cast v3, Landroidx/compose/runtime/snapshots/StateListIterator;

    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/StateListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/StateListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;

    goto :goto_1

    :cond_2
    move-object p0, p2

    :goto_1
    new-instance v2, Landroid/app/DownloadManager$Query;

    invoke-direct {v2}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v3, 0x1

    new-array v4, v3, [J

    const/4 v5, 0x0

    aput-wide v0, v4, v5

    invoke-virtual {v2, v4}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    if-eqz p1, :cond_3

    const-string p2, "download"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Landroid/app/DownloadManager;

    invoke-virtual {p2, v2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string p2, "status"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/16 p2, 0x8

    if-ne p1, p2, :cond_4

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->h:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperDownloadStateUiModel;

    const/4 p2, 0x4

    invoke-static {p1, v5, p2}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperDownloadStateUiModel;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperDownloadStateUiModel;ZI)Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperDownloadStateUiModel;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void

    :cond_4
    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->h:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperDownloadStateUiModel;

    invoke-static {p1, v5, v3}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperDownloadStateUiModel;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperDownloadStateUiModel;ZI)Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperDownloadStateUiModel;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method
