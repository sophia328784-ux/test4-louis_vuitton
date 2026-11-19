.class public final enum Lcom/sightcall/universal/internal/ui/ViewOrder;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sightcall/universal/internal/ui/ViewOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sightcall/universal/internal/ui/ViewOrder;

.field public static final enum CONSUMER_THUMBNAILS_PRODUCER:Lcom/sightcall/universal/internal/ui/ViewOrder;

.field public static final enum PRODUCER_THUMBNAILS_CONSUMER:Lcom/sightcall/universal/internal/ui/ViewOrder;


# direct methods
.method private static synthetic $values()[Lcom/sightcall/universal/internal/ui/ViewOrder;
    .locals 2

    sget-object v0, Lcom/sightcall/universal/internal/ui/ViewOrder;->CONSUMER_THUMBNAILS_PRODUCER:Lcom/sightcall/universal/internal/ui/ViewOrder;

    sget-object v1, Lcom/sightcall/universal/internal/ui/ViewOrder;->PRODUCER_THUMBNAILS_CONSUMER:Lcom/sightcall/universal/internal/ui/ViewOrder;

    filled-new-array {v0, v1}, [Lcom/sightcall/universal/internal/ui/ViewOrder;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sightcall/universal/internal/ui/ViewOrder;

    const-string v1, "CONSUMER_THUMBNAILS_PRODUCER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/internal/ui/ViewOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/internal/ui/ViewOrder;->CONSUMER_THUMBNAILS_PRODUCER:Lcom/sightcall/universal/internal/ui/ViewOrder;

    new-instance v0, Lcom/sightcall/universal/internal/ui/ViewOrder;

    const-string v1, "PRODUCER_THUMBNAILS_CONSUMER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sightcall/universal/internal/ui/ViewOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sightcall/universal/internal/ui/ViewOrder;->PRODUCER_THUMBNAILS_CONSUMER:Lcom/sightcall/universal/internal/ui/ViewOrder;

    invoke-static {}, Lcom/sightcall/universal/internal/ui/ViewOrder;->$values()[Lcom/sightcall/universal/internal/ui/ViewOrder;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/internal/ui/ViewOrder;->$VALUES:[Lcom/sightcall/universal/internal/ui/ViewOrder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static expected(Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/Call;)Lcom/sightcall/universal/internal/ui/ViewOrder;
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/universal/internal/util/Utils;->videoProducerToFullscreen(Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/Call;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sightcall/universal/internal/ui/ViewOrder;->PRODUCER_THUMBNAILS_CONSUMER:Lcom/sightcall/universal/internal/ui/ViewOrder;

    return-object p0

    :cond_0
    sget-object p0, Lcom/sightcall/universal/internal/ui/ViewOrder;->CONSUMER_THUMBNAILS_PRODUCER:Lcom/sightcall/universal/internal/ui/ViewOrder;

    return-object p0
.end method

.method private static get(Landroid/widget/FrameLayout;Lcom/sightcall/universal/internal/view/MyVideoConsumerView;Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;)Lcom/sightcall/universal/internal/ui/ViewOrder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    if-ge p1, p2, :cond_0

    if-ge p2, p0, :cond_0

    sget-object p0, Lcom/sightcall/universal/internal/ui/ViewOrder;->CONSUMER_THUMBNAILS_PRODUCER:Lcom/sightcall/universal/internal/ui/ViewOrder;

    return-object p0

    :cond_0
    sget-object p0, Lcom/sightcall/universal/internal/ui/ViewOrder;->PRODUCER_THUMBNAILS_CONSUMER:Lcom/sightcall/universal/internal/ui/ViewOrder;

    return-object p0
.end method

.method public static reorderIfNeeded(Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/Call;Landroid/widget/FrameLayout;Lcom/sightcall/universal/internal/view/MyVideoConsumerView;Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;Landroid/view/ViewGroup;)V
    .locals 1

    invoke-static {p2, p3, p4, p5}, Lcom/sightcall/universal/internal/ui/ViewOrder;->get(Landroid/widget/FrameLayout;Lcom/sightcall/universal/internal/view/MyVideoConsumerView;Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;)Lcom/sightcall/universal/internal/ui/ViewOrder;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/sightcall/universal/internal/ui/ViewOrder;->expected(Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/Call;)Lcom/sightcall/universal/internal/ui/ViewOrder;

    move-result-object p0

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2, p5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p2, p6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 p1, p0, 0x1

    invoke-virtual {p2, p6, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-virtual {p2, p4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p2, p4, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p2, p3, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sightcall/universal/internal/ui/ViewOrder;
    .locals 1

    const-class v0, Lcom/sightcall/universal/internal/ui/ViewOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/internal/ui/ViewOrder;

    return-object p0
.end method

.method public static values()[Lcom/sightcall/universal/internal/ui/ViewOrder;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/internal/ui/ViewOrder;->$VALUES:[Lcom/sightcall/universal/internal/ui/ViewOrder;

    invoke-virtual {v0}, [Lcom/sightcall/universal/internal/ui/ViewOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sightcall/universal/internal/ui/ViewOrder;

    return-object v0
.end method
