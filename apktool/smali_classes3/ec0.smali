.class public final synthetic Lec0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/perfectlib/MakeupCam$CreateCallback2;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/MakeupCam$CreateCallback2;I)V
    .locals 0

    iput p2, p0, Lec0;->a:I

    iput-object p1, p0, Lec0;->b:Lcom/perfectcorp/perfectlib/MakeupCam$CreateCallback2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lec0;->a:I

    iget-object p0, p0, Lec0;->b:Lcom/perfectcorp/perfectlib/MakeupCam$CreateCallback2;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/MakeupCam$CreateCallback2;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_0
    check-cast p1, Landroid/util/Pair;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/MakeupCam;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/perfectcorp/perfectlib/FramebufferRenderer;

    invoke-interface {p0, v0, p1}, Lcom/perfectcorp/perfectlib/MakeupCam$CreateCallback2;->onSuccess(Lcom/perfectcorp/perfectlib/MakeupCam;Lcom/perfectcorp/perfectlib/FramebufferRenderer;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
