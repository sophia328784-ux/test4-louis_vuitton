.class public final synthetic Lv21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/camera/core/imagecapture/TakePictureManagerImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/imagecapture/TakePictureManagerImpl;I)V
    .locals 0

    iput p2, p0, Lv21;->b:I

    iput-object p1, p0, Lv21;->c:Landroidx/camera/core/imagecapture/TakePictureManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lv21;->b:I

    iget-object p0, p0, Lv21;->c:Landroidx/camera/core/imagecapture/TakePictureManagerImpl;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureManagerImpl;->d()V

    return-void

    :pswitch_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/camera/core/imagecapture/TakePictureManagerImpl;->d:Landroidx/camera/core/imagecapture/RequestWithCallback;

    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureManagerImpl;->d()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
