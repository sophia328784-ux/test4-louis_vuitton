.class public final Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$onBackPressedCallback$1;
.super Landroidx/activity/OnBackPressedCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;-><init>(Lcom/vuitton/android/presentation/chat/ChatCoordinator;Lcom/vuitton/android/domain/usecase/chat/StreamChatEventUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/link/LinkHandler;Lcom/vuitton/android/presentation/chat/ChatAttachable;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/data/datasource/inappbanner/InAppBannerMemCacheDataSource;)V
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
        "com/vuitton/android/presentation/chat/ChatLifecycleObserver$onBackPressedCallback$1",
        "Landroidx/activity/OnBackPressedCallback;",
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
.field public final synthetic d:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$onBackPressedCallback$1;->d:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$onBackPressedCallback$1;->d:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    iget-object v0, v0, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;->f:Lcom/vuitton/android/presentation/chat/ChatAttachable;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/chat/ChatAttachable;->a()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/activity/OnBackPressedCallback;->f(Z)V

    return-void
.end method
