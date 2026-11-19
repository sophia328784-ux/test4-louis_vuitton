.class public final Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/legacy/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaybackInfo"
.end annotation


# instance fields
.field public final a:I

.field public final b:Landroidx/media3/common/AudioAttributes;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILandroidx/media3/common/AudioAttributes;IIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;->a:I

    iput-object p2, p0, Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;->b:Landroidx/media3/common/AudioAttributes;

    iput p3, p0, Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;->c:I

    iput p4, p0, Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;->d:I

    iput p5, p0, Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;->e:I

    iput-object p6, p0, Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;->f:Ljava/lang/String;

    return-void
.end method
