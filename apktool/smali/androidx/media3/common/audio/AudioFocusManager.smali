.class public final Landroidx/media3/common/audio/AudioFocusManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/audio/AudioFocusManager$PlayerControl;,
        Landroidx/media3/common/audio/AudioFocusManager$PlayerCommand;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/common/base/Supplier;

.field public final b:Landroid/os/Handler;

.field public c:Landroidx/media3/common/audio/AudioFocusManager$PlayerControl;

.field public d:Landroidx/media3/common/AudioAttributes;

.field public e:I

.field public f:I

.field public g:F

.field public h:Landroidx/media3/common/audio/AudioFocusRequestCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroidx/media3/common/audio/AudioFocusManager$PlayerControl;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/media3/common/audio/AudioFocusManager;->g:F

    new-instance v0, Lda;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lda;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Lcom/google/common/base/Suppliers;->a(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/audio/AudioFocusManager;->a:Lcom/google/common/base/Supplier;

    iput-object p3, p0, Landroidx/media3/common/audio/AudioFocusManager;->c:Landroidx/media3/common/audio/AudioFocusManager$PlayerControl;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/media3/common/audio/AudioFocusManager;->b:Landroid/os/Handler;

    iput v1, p0, Landroidx/media3/common/audio/AudioFocusManager;->e:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget v0, p0, Landroidx/media3/common/audio/AudioFocusManager;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/common/audio/AudioFocusManager;->h:Landroidx/media3/common/audio/AudioFocusRequestCompat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/common/audio/AudioFocusManager;->a:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object p0, p0, Landroidx/media3/common/audio/AudioFocusManager;->h:Landroidx/media3/common/audio/AudioFocusRequestCompat;

    iget-object p0, p0, Landroidx/media3/common/audio/AudioFocusRequestCompat;->f:Landroid/media/AudioFocusRequest;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final b(I)V
    .locals 1

    iget v0, p0, Landroidx/media3/common/audio/AudioFocusManager;->e:I

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    iput p1, p0, Landroidx/media3/common/audio/AudioFocusManager;->e:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const p1, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iget v0, p0, Landroidx/media3/common/audio/AudioFocusManager;->g:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iput p1, p0, Landroidx/media3/common/audio/AudioFocusManager;->g:F

    iget-object p0, p0, Landroidx/media3/common/audio/AudioFocusManager;->c:Landroidx/media3/common/audio/AudioFocusManager$PlayerControl;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroidx/media3/common/audio/AudioFocusManager$PlayerControl;->g()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final c(IZ)I
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_9

    iget p1, p0, Landroidx/media3/common/audio/AudioFocusManager;->f:I

    if-ne p1, v1, :cond_9

    iget v2, p0, Landroidx/media3/common/audio/AudioFocusManager;->e:I

    const/4 v3, -0x1

    if-eqz p2, :cond_6

    const/4 p2, 0x2

    if-ne v2, p2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v2, p0, Landroidx/media3/common/audio/AudioFocusManager;->h:Landroidx/media3/common/audio/AudioFocusRequestCompat;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    if-nez v2, :cond_2

    new-instance v2, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;

    invoke-direct {v2, p1}, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;-><init>(I)V

    goto :goto_0

    :cond_2
    new-instance p1, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iget v4, v2, Landroidx/media3/common/audio/AudioFocusRequestCompat;->a:I

    iput v4, p1, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;->a:I

    iget-object v4, v2, Landroidx/media3/common/audio/AudioFocusRequestCompat;->d:Landroidx/media3/common/AudioAttributes;

    iput-object v4, p1, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;->b:Landroidx/media3/common/AudioAttributes;

    iget-boolean v2, v2, Landroidx/media3/common/audio/AudioFocusRequestCompat;->e:Z

    iput-boolean v2, p1, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;->c:Z

    move-object v2, p1

    :goto_0
    iget-object p1, p0, Landroidx/media3/common/audio/AudioFocusManager;->d:Landroidx/media3/common/AudioAttributes;

    if-eqz p1, :cond_3

    iget v4, p1, Landroidx/media3/common/AudioAttributes;->a:I

    if-ne v4, v1, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v2, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;->b:Landroidx/media3/common/AudioAttributes;

    iput-boolean v0, v2, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;->c:Z

    iput-boolean v1, v2, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;->d:Z

    new-instance v6, Lca;

    invoke-direct {v6, p0}, Lca;-><init>(Landroidx/media3/common/audio/AudioFocusManager;)V

    iget-object v7, p0, Landroidx/media3/common/audio/AudioFocusManager;->b:Landroid/os/Handler;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroidx/media3/common/audio/AudioFocusRequestCompat;

    iget v5, v2, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;->a:I

    iget-object v8, v2, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;->b:Landroidx/media3/common/AudioAttributes;

    iget-boolean v9, v2, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;->c:Z

    iget-boolean v10, v2, Landroidx/media3/common/audio/AudioFocusRequestCompat$Builder;->d:Z

    invoke-direct/range {v4 .. v10}, Landroidx/media3/common/audio/AudioFocusRequestCompat;-><init>(ILca;Landroid/os/Handler;Landroidx/media3/common/AudioAttributes;ZZ)V

    iput-object v4, p0, Landroidx/media3/common/audio/AudioFocusManager;->h:Landroidx/media3/common/audio/AudioFocusRequestCompat;

    :goto_1
    iget-object p1, p0, Landroidx/media3/common/audio/AudioFocusManager;->a:Lcom/google/common/base/Supplier;

    invoke-interface {p1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iget-object v0, p0, Landroidx/media3/common/audio/AudioFocusManager;->h:Landroidx/media3/common/audio/AudioFocusRequestCompat;

    iget-object v0, v0, Landroidx/media3/common/audio/AudioFocusRequestCompat;->f:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result p1

    if-eq p1, v1, :cond_5

    if-ne p1, p2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v1}, Landroidx/media3/common/audio/AudioFocusManager;->b(I)V

    return v3

    :cond_5
    :goto_2
    invoke-virtual {p0, p2}, Landroidx/media3/common/audio/AudioFocusManager;->b(I)V

    return v1

    :cond_6
    if-eq v2, v1, :cond_8

    const/4 p0, 0x3

    if-eq v2, p0, :cond_7

    :goto_3
    return v1

    :cond_7
    return v0

    :cond_8
    return v3

    :cond_9
    invoke-virtual {p0}, Landroidx/media3/common/audio/AudioFocusManager;->a()V

    invoke-virtual {p0, v0}, Landroidx/media3/common/audio/AudioFocusManager;->b(I)V

    return v1
.end method
