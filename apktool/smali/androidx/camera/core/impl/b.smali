.class public final synthetic Landroidx/camera/core/impl/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;

.field public final synthetic d:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;Ljava/util/Set;I)V
    .locals 0

    iput p3, p0, Landroidx/camera/core/impl/b;->b:I

    iput-object p1, p0, Landroidx/camera/core/impl/b;->c:Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;

    iput-object p2, p0, Landroidx/camera/core/impl/b;->d:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Landroidx/camera/core/impl/b;->b:I

    iget-object p0, p0, Landroidx/camera/core/impl/b;->c:Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;

    packed-switch v0, :pswitch_data_0

    sget v0, Landroidx/camera/core/impl/CameraPresenceProvider;->l:I

    iget-object p0, p0, Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;->a:Landroidx/camera/core/CameraPresenceListener;

    invoke-interface {p0}, Landroidx/camera/core/CameraPresenceListener;->b()V

    return-void

    :pswitch_0
    sget v0, Landroidx/camera/core/impl/CameraPresenceProvider;->l:I

    iget-object p0, p0, Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;->a:Landroidx/camera/core/CameraPresenceListener;

    invoke-interface {p0}, Landroidx/camera/core/CameraPresenceListener;->a()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
