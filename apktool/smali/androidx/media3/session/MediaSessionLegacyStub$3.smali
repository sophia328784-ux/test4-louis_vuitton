.class Landroidx/media3/session/MediaSessionLegacyStub$3;
.super Landroidx/media3/session/legacy/VolumeProviderCompat;
.source "SourceFile"


# instance fields
.field public final synthetic f:Landroid/os/Handler;

.field public final synthetic g:Landroidx/media3/session/PlayerWrapper;


# direct methods
.method public constructor <init>(IIILjava/lang/String;Landroid/os/Handler;Landroidx/media3/session/PlayerWrapper;)V
    .locals 0

    iput-object p5, p0, Landroidx/media3/session/MediaSessionLegacyStub$3;->f:Landroid/os/Handler;

    iput-object p6, p0, Landroidx/media3/session/MediaSessionLegacyStub$3;->g:Landroidx/media3/session/PlayerWrapper;

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/session/legacy/VolumeProviderCompat;-><init>(IIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 3

    new-instance v0, Landroidx/media3/session/o1;

    const/4 v1, 0x1

    iget-object v2, p0, Landroidx/media3/session/MediaSessionLegacyStub$3;->g:Landroidx/media3/session/PlayerWrapper;

    invoke-direct {v0, v2, p1, v1}, Landroidx/media3/session/o1;-><init>(Ljava/lang/Object;II)V

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub$3;->f:Landroid/os/Handler;

    invoke-static {p0, v0}, Landroidx/media3/common/util/Util;->W(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(I)V
    .locals 3

    new-instance v0, Landroidx/media3/session/o1;

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/media3/session/MediaSessionLegacyStub$3;->g:Landroidx/media3/session/PlayerWrapper;

    invoke-direct {v0, v2, p1, v1}, Landroidx/media3/session/o1;-><init>(Ljava/lang/Object;II)V

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub$3;->f:Landroid/os/Handler;

    invoke-static {p0, v0}, Landroidx/media3/common/util/Util;->W(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method
