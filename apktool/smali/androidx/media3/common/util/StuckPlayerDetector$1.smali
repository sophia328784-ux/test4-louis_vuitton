.class Landroidx/media3/common/util/StuckPlayerDetector$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/common/util/StuckPlayerDetector;-><init>(Landroidx/media3/common/Player;Landroidx/media3/common/util/StuckPlayerDetector$Callback;Landroidx/media3/common/util/Clock;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroidx/media3/common/util/StuckPlayerDetector;


# direct methods
.method public constructor <init>(Landroidx/media3/common/util/StuckPlayerDetector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/util/StuckPlayerDetector$1;->b:Landroidx/media3/common/util/StuckPlayerDetector;

    return-void
.end method


# virtual methods
.method public final f0(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/util/StuckPlayerDetector$1;->b:Landroidx/media3/common/util/StuckPlayerDetector;

    iget-object p1, p0, Landroidx/media3/common/util/StuckPlayerDetector;->g:Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;

    invoke-virtual {p1}, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->a()V

    iget-object p1, p0, Landroidx/media3/common/util/StuckPlayerDetector;->h:Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;

    invoke-virtual {p1}, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->a()V

    iget-object p1, p0, Landroidx/media3/common/util/StuckPlayerDetector;->i:Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;

    invoke-virtual {p1}, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->a()V

    iget-object p0, p0, Landroidx/media3/common/util/StuckPlayerDetector;->j:Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;

    invoke-virtual {p0}, Landroidx/media3/common/util/StuckPlayerDetector$StuckSuppressedDetector;->a()V

    return-void
.end method
