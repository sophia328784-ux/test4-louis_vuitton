.class public final synthetic Landroidx/media3/session/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic a:Landroidx/media3/session/MediaControllerImplBase;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/y;->a:Landroidx/media3/session/MediaControllerImplBase;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    iget-object p0, p0, Landroidx/media3/session/y;->a:Landroidx/media3/session/MediaControllerImplBase;

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->a:Landroidx/media3/session/MediaController;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Let;

    const/16 v1, 0x19

    invoke-direct {v0, p0, v1}, Let;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaController;->Y0(Ljava/lang/Runnable;)V

    return-void
.end method
