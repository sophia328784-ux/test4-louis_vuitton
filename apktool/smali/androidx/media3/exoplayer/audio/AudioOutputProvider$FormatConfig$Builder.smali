.class public final Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:Landroidx/media3/common/Format;

.field public b:Landroidx/media3/common/AudioAttributes;

.field public c:Landroid/media/AudioDeviceInfo;

.field public d:Z

.field public e:I

.field public f:I

.field public g:Z

.field public h:I


# direct methods
.method public constructor <init>(Landroidx/media3/common/Format;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->a:Landroidx/media3/common/Format;

    sget-object p1, Landroidx/media3/common/AudioAttributes;->i:Landroidx/media3/common/AudioAttributes;

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->b:Landroidx/media3/common/AudioAttributes;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->e:I

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->f:I

    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->h:I

    return-void
.end method
