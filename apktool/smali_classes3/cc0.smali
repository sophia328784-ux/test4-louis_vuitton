.class public final synthetic Lcc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/perfectlib/MakeupCam$CreateCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/MakeupCam$CreateCallback;I)V
    .locals 0

    iput p2, p0, Lcc0;->a:I

    iput-object p1, p0, Lcc0;->b:Lcom/perfectcorp/perfectlib/MakeupCam$CreateCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcc0;->a:I

    iget-object p0, p0, Lcc0;->b:Lcom/perfectcorp/perfectlib/MakeupCam$CreateCallback;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/MakeupCam$CreateCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_0
    check-cast p1, Lcom/perfectcorp/perfectlib/MakeupCam;

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/MakeupCam$CreateCallback;->onSuccess(Lcom/perfectcorp/perfectlib/MakeupCam;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
