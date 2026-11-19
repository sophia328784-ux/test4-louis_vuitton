.class public final Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$SeekTo;
.super Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SeekTo"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$SeekTo;",
        "Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent;",
        "",
        "position",
        "<init>",
        "(J)V",
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
.field public final a:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-wide p1, p0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$SeekTo;->a:J

    return-void
.end method
