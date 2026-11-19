.class public final synthetic Lca;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public final synthetic a:Landroidx/media3/common/audio/AudioFocusManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/audio/AudioFocusManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lca;->a:Landroidx/media3/common/audio/AudioFocusManager;

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 3

    iget-object p0, p0, Lca;->a:Landroidx/media3/common/audio/AudioFocusManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x3

    const/4 v1, -0x2

    const/4 v2, 0x1

    if-eq p1, v0, :cond_4

    if-eq p1, v1, :cond_4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    if-eq p1, v2, :cond_0

    const-string p0, "Unknown focus change type: "

    invoke-static {p1, p0}, La;->u(ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroidx/media3/common/audio/AudioFocusManager;->b(I)V

    iget-object p0, p0, Landroidx/media3/common/audio/AudioFocusManager;->c:Landroidx/media3/common/audio/AudioFocusManager$PlayerControl;

    if-eqz p0, :cond_1

    invoke-interface {p0, v2}, Landroidx/media3/common/audio/AudioFocusManager$PlayerControl;->e(I)V

    :cond_1
    return-void

    :cond_2
    iget-object p1, p0, Landroidx/media3/common/audio/AudioFocusManager;->c:Landroidx/media3/common/audio/AudioFocusManager$PlayerControl;

    if-eqz p1, :cond_3

    invoke-interface {p1, v0}, Landroidx/media3/common/audio/AudioFocusManager$PlayerControl;->e(I)V

    :cond_3
    invoke-virtual {p0}, Landroidx/media3/common/audio/AudioFocusManager;->a()V

    invoke-virtual {p0, v2}, Landroidx/media3/common/audio/AudioFocusManager;->b(I)V

    return-void

    :cond_4
    if-eq p1, v1, :cond_6

    iget-object p1, p0, Landroidx/media3/common/audio/AudioFocusManager;->d:Landroidx/media3/common/AudioAttributes;

    if-eqz p1, :cond_5

    iget p1, p1, Landroidx/media3/common/AudioAttributes;->a:I

    if-ne p1, v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroidx/media3/common/audio/AudioFocusManager;->b(I)V

    return-void

    :cond_6
    :goto_0
    iget-object p1, p0, Landroidx/media3/common/audio/AudioFocusManager;->c:Landroidx/media3/common/audio/AudioFocusManager$PlayerControl;

    if-eqz p1, :cond_7

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroidx/media3/common/audio/AudioFocusManager$PlayerControl;->e(I)V

    :cond_7
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroidx/media3/common/audio/AudioFocusManager;->b(I)V

    return-void
.end method
