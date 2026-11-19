.class public final synthetic Lkt0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/graphics/colorspace/DoubleFunction;
.implements Lcom/perfectcorp/common/utility/EventPublisher$Publisher;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:D


# direct methods
.method public synthetic constructor <init>(DI)V
    .locals 0

    iput p3, p0, Lkt0;->b:I

    iput-wide p1, p0, Lkt0;->c:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/perfectcorp/common/utility/EventPublisher$Subscriber;)V
    .locals 4

    iget v0, p0, Lkt0;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/perfectcorp/perfectlib/TagHandler$SyncServerCallback;

    const-wide v0, 0x3fdf5c28f5c28f5cL    # 0.49

    iget-wide v2, p0, Lkt0;->c:D

    mul-double/2addr v2, v0

    invoke-interface {p1, v2, v3}, Lcom/perfectcorp/perfectlib/TagHandler$SyncServerCallback;->progress(D)V

    return-void

    :pswitch_0
    check-cast p1, Lcom/perfectcorp/perfectlib/TagHandler$SyncServerCallback;

    iget-wide v0, p0, Lkt0;->c:D

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    add-double/2addr v0, v2

    invoke-interface {p1, v0, v1}, Lcom/perfectcorp/perfectlib/TagHandler$SyncServerCallback;->progress(D)V

    return-void

    :pswitch_1
    iget-wide v0, p0, Lkt0;->c:D

    check-cast p1, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;

    invoke-interface {p1, v0, v1}, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;->progress(D)V

    return-void

    :pswitch_2
    iget-wide v0, p0, Lkt0;->c:D

    check-cast p1, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;

    invoke-interface {p1, v0, v1}, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;->progress(D)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(D)D
    .locals 5

    iget v0, p0, Lkt0;->b:I

    const-wide/16 v1, 0x0

    iget-wide v3, p0, Lkt0;->c:D

    sget-object p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->r:Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;

    packed-switch v0, :pswitch_data_0

    cmpg-double p0, p1, v1

    if-gez p0, :cond_0

    move-wide p1, v1

    :cond_0
    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    return-wide p0

    :pswitch_0
    cmpg-double p0, p1, v1

    if-gez p0, :cond_1

    move-wide p1, v1

    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, v3

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    return-wide p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
