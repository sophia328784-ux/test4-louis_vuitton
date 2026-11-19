.class Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$1;
.super Landroid/graphics/Paint;
.source "SourceFile"


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
.method public constructor <init>(Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;I)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$1;->this$0:Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;

    invoke-direct {p0, p2}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 p1, 0x44000000    # 512.0f

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
