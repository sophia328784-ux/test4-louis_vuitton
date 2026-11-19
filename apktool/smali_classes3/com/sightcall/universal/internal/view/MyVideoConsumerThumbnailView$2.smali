.class Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$2;
.super Landroid/text/TextPaint;
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

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$2;->this$0:Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;

    invoke-direct {p0, p2}, Landroid/text/TextPaint;-><init>(I)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setLinearText(Z)V

    return-void
.end method
