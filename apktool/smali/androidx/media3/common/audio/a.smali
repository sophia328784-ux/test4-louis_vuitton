.class public final synthetic Landroidx/media3/common/audio/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/common/audio/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/audio/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/audio/a;->b:Landroidx/media3/common/audio/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Landroidx/media3/common/audio/a;->b:Landroidx/media3/common/audio/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;

    iget-object v0, p0, Landroidx/media3/common/audio/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->c:Landroidx/media3/common/audio/AudioBecomingNoisyManager;

    iget-boolean v0, v0, Landroidx/media3/common/audio/AudioBecomingNoisyManager;->d:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/common/audio/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->a:Landroidx/media3/common/audio/AudioBecomingNoisyManager$Listener;

    invoke-interface {p0}, Landroidx/media3/common/audio/AudioBecomingNoisyManager$Listener;->s()V

    :cond_0
    return-void
.end method
