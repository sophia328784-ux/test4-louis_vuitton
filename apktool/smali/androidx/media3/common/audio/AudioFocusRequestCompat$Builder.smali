.class public final Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/audio/AudioFocusRequestCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:I

.field public b:Landroidx/media3/common/AudioAttributes;

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/media3/common/AudioAttributes;->i:Landroidx/media3/common/AudioAttributes;

    iput-object v0, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;->b:Landroidx/media3/common/AudioAttributes;

    iput p1, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;->a:I

    return-void
.end method
