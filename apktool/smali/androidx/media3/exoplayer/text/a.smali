.class public final synthetic Landroidx/media3/exoplayer/text/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/media3/exoplayer/text/a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/text/a;->b:I

    check-cast p1, Landroidx/media3/extractor/text/CuesWithTiming;

    packed-switch p0, :pswitch_data_0

    sget-object p0, Landroidx/media3/exoplayer/text/MergingCuesResolver;->b:Lcom/google/common/collect/Ordering;

    iget-wide p0, p1, Landroidx/media3/extractor/text/CuesWithTiming;->c:J

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object p0, Landroidx/media3/exoplayer/text/MergingCuesResolver;->b:Lcom/google/common/collect/Ordering;

    iget-wide p0, p1, Landroidx/media3/extractor/text/CuesWithTiming;->b:J

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
