.class public final Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/AudioOutputProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FormatSupport"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport$Builder;
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport$Builder;

    invoke-direct {v0}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport$Builder;->a()Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport$Builder;->a:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport;->a:Z

    iget-boolean v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport$Builder;->b:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport;->b:Z

    iget-boolean v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport$Builder;->c:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport;->c:Z

    iget p1, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport$Builder;->d:I

    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport;->d:I

    return-void
.end method
