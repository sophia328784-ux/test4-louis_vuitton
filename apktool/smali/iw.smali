.class public final synthetic Liw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/camera/video/internal/encoder/EncoderCallback;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/encoder/EncoderCallback;I)V
    .locals 0

    iput p2, p0, Liw;->b:I

    iput-object p1, p0, Liw;->c:Landroidx/camera/video/internal/encoder/EncoderCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Liw;->b:I

    iget-object p0, p0, Liw;->c:Landroidx/camera/video/internal/encoder/EncoderCallback;

    packed-switch v0, :pswitch_data_0

    invoke-interface {p0}, Landroidx/camera/video/internal/encoder/EncoderCallback;->a()V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
