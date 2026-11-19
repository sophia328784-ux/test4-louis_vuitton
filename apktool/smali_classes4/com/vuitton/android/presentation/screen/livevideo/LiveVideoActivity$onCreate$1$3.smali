.class public final Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$onCreate$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Player$Listener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$onCreate$1$3",
        "Landroidx/media3/common/Player$Listener;",
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
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Z


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$onCreate$1$3;->b:Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$onCreate$1$3;->c:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$onCreate$1$3;->d:Z

    return-void
.end method


# virtual methods
.method public final f0(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V
    .locals 12

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;->q:Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$Companion;

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$onCreate$1$3;->d:Z

    if-nez v0, :cond_3

    invoke-interface {p1}, Landroidx/media3/common/Player;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    const/4 v1, 0x7

    const/4 v2, 0x3

    const/4 v3, 0x4

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    iget-object p2, p2, Landroidx/media3/common/Player$Events;->a:Landroidx/media3/common/FlagSet;

    invoke-virtual {p2, v0}, Landroidx/media3/common/FlagSet;->a([I)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Landroidx/media3/common/Player;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x19

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    invoke-interface {p1}, Landroidx/media3/common/Player;->getDuration()J

    move-result-wide v4

    const-wide/16 v6, 0x32

    mul-long/2addr v4, v6

    div-long/2addr v4, v2

    invoke-interface {p1}, Landroidx/media3/common/Player;->getDuration()J

    move-result-wide v6

    const-wide/16 v8, 0x4b

    mul-long/2addr v6, v8

    div-long/2addr v6, v2

    invoke-interface {p1}, Landroidx/media3/common/Player;->getDuration()J

    move-result-wide v8

    const-wide/16 v10, 0x5a

    mul-long/2addr v8, v10

    div-long/2addr v8, v2

    invoke-interface {p1}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v2

    cmp-long p2, v2, v0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$onCreate$1$3;->b:Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$onCreate$1$3;->c:Ljava/lang/String;

    const/4 v1, 0x1

    if-lez p2, :cond_0

    iget-boolean p2, v0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;->n:Z

    if-nez p2, :cond_0

    iput-boolean v1, v0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;->n:Z

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;->B()Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModel;

    move-result-object p1

    const-string p2, "milestone_25"

    invoke-interface {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModel;->U1(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p1}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v2

    cmp-long p2, v2, v4

    if-lez p2, :cond_1

    iget-boolean p2, v0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;->o:Z

    if-nez p2, :cond_1

    iput-boolean v1, v0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;->o:Z

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;->B()Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModel;

    move-result-object p1

    const-string p2, "milestone_50"

    invoke-interface {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModel;->U1(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-interface {p1}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v2

    cmp-long p2, v2, v6

    if-lez p2, :cond_2

    iget-boolean p2, v0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;->p:Z

    if-nez p2, :cond_2

    iput-boolean v1, v0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;->p:Z

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;->B()Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModel;

    move-result-object p1

    const-string p2, "milestone_75"

    invoke-interface {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModel;->U1(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-interface {p1}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide p1

    cmp-long p1, p1, v8

    if-lez p1, :cond_3

    iget-boolean p1, v0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;->m:Z

    if-nez p1, :cond_3

    iput-boolean v1, v0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;->m:Z

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;->B()Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModel;

    move-result-object p1

    const-string p2, "video_completed"

    invoke-interface {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModel;->U1(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final x0(Z)V
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;->q:Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$onCreate$1$3;->b:Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;->B()Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModel;

    move-result-object v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$onCreate$1$3;->c:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModel;->o1(Ljava/lang/String;Z)V

    return-void
.end method
