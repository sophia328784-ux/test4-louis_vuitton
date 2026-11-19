.class public final synthetic Landroidx/media3/session/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/media3/session/MediaLibrarySessionImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaLibrarySessionImpl;I)V
    .locals 0

    iput p2, p0, Landroidx/media3/session/x0;->b:I

    iput-object p1, p0, Landroidx/media3/session/x0;->c:Landroidx/media3/session/MediaLibrarySessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    iget v0, p0, Landroidx/media3/session/x0;->b:I

    iget-object p0, p0, Landroidx/media3/session/x0;->c:Landroidx/media3/session/MediaLibrarySessionImpl;

    packed-switch v0, :pswitch_data_0

    sget v0, Landroidx/media3/session/MediaLibrarySessionImpl;->L:I

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->l:Landroid/os/Handler;

    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->W(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Landroidx/media3/session/MediaLibrarySessionImpl;->z(Landroidx/media3/session/MediaLibrarySessionImpl;Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
