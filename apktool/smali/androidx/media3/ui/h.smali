.class public final synthetic Landroidx/media3/ui/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;

.field public final synthetic c:Landroid/view/SurfaceView;

.field public final synthetic d:Lhn0;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;Landroid/view/SurfaceView;Lhn0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/ui/h;->b:Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;

    iput-object p2, p0, Landroidx/media3/ui/h;->c:Landroid/view/SurfaceView;

    iput-object p3, p0, Landroidx/media3/ui/h;->d:Lhn0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/h;->c:Landroid/view/SurfaceView;

    iget-object v1, p0, Landroidx/media3/ui/h;->d:Lhn0;

    iget-object p0, p0, Landroidx/media3/ui/h;->b:Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;

    invoke-static {p0, v0, v1}, Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;->a(Landroidx/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;Landroid/view/SurfaceView;Lhn0;)V

    return-void
.end method
