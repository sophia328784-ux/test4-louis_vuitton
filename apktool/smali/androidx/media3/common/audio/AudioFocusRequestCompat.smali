.class public final Landroidx/media3/common/audio/AudioFocusRequestCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lca;

.field public final c:Landroid/os/Handler;

.field public final d:Landroidx/media3/common/AudioAttributes;

.field public final e:Z

.field public final f:Landroid/media/AudioFocusRequest;


# direct methods
.method public constructor <init>(ILca;Landroid/os/Handler;Landroidx/media3/common/AudioAttributes;ZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat;->a:I

    iput-object p3, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat;->c:Landroid/os/Handler;

    iput-object p4, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat;->d:Landroidx/media3/common/AudioAttributes;

    iput-boolean p5, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat;->e:Z

    iput-object p2, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat;->b:Lca;

    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v0, p1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    invoke-virtual {p4}, Landroidx/media3/common/AudioAttributes;->c()Landroid/media/AudioAttributes;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    invoke-virtual {p1, p6}, Landroid/media/AudioFocusRequest$Builder;->setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat;->f:Landroid/media/AudioFocusRequest;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroidx/media3/common/audio/AudioFocusRequestCompat;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/common/audio/AudioFocusRequestCompat;

    iget v0, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat;->a:I

    iget v2, p1, Landroidx/media3/common/audio/AudioFocusRequestCompat;->a:I

    if-ne v0, v2, :cond_3

    iget-boolean v0, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat;->e:Z

    iget-boolean v2, p1, Landroidx/media3/common/audio/AudioFocusRequestCompat;->e:Z

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat;->b:Lca;

    iget-object v2, p1, Landroidx/media3/common/audio/AudioFocusRequestCompat;->b:Lca;

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat;->c:Landroid/os/Handler;

    iget-object v2, p1, Landroidx/media3/common/audio/AudioFocusRequestCompat;->c:Landroid/os/Handler;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat;->d:Landroidx/media3/common/AudioAttributes;

    iget-object p1, p1, Landroidx/media3/common/audio/AudioFocusRequestCompat;->d:Landroidx/media3/common/AudioAttributes;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat;->e:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat;->b:Lca;

    iget-object v3, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat;->c:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat;->d:Landroidx/media3/common/AudioAttributes;

    filled-new-array {v0, v2, v3, p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
