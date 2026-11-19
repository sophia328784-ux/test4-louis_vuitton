.class public final synthetic Lps;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/media3/common/VideoSize;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/VideoSize;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lps;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lps;->c:Landroidx/media3/common/VideoSize;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/VideoSize;)V
    .locals 0

    .line 9
    const/4 p1, 0x0

    iput p1, p0, Lps;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lps;->c:Landroidx/media3/common/VideoSize;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lps;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lps;->c:Landroidx/media3/common/VideoSize;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->b(Landroidx/media3/common/VideoSize;)V

    return-void

    :pswitch_0
    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object p0, p0, Lps;->c:Landroidx/media3/common/VideoSize;

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->b(Landroidx/media3/common/VideoSize;)V

    iget p0, p0, Landroidx/media3/common/VideoSize;->a:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
