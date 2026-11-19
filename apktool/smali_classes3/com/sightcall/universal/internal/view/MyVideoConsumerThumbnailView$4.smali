.class Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$4;->this$0:Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$4;->this$0:Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;

    invoke-static {v0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->e(Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;)Lnet/rtccloud/sdk/Participant;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$4;->this$0:Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$4;->this$0:Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
