.class public final synthetic Ldj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/camera/core/SafeCloseImageReaderProxy;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/SafeCloseImageReaderProxy;I)V
    .locals 0

    iput p2, p0, Ldj;->b:I

    iput-object p1, p0, Ldj;->c:Landroidx/camera/core/SafeCloseImageReaderProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Ldj;->b:I

    iget-object p0, p0, Ldj;->c:Landroidx/camera/core/SafeCloseImageReaderProxy;

    packed-switch v0, :pswitch_data_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/camera/core/SafeCloseImageReaderProxy;->f()V

    :cond_0
    return-void

    :pswitch_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/camera/core/SafeCloseImageReaderProxy;->f()V

    :cond_1
    return-void

    :pswitch_1
    invoke-virtual {p0}, Landroidx/camera/core/SafeCloseImageReaderProxy;->f()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
