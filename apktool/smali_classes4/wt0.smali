.class public final synthetic Lwt0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lnet/rtccloud/sdk/Rtcc;


# direct methods
.method public synthetic constructor <init>(Lnet/rtccloud/sdk/Rtcc;I)V
    .locals 0

    iput p2, p0, Lwt0;->b:I

    iput-object p1, p0, Lwt0;->c:Lnet/rtccloud/sdk/Rtcc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lwt0;->b:I

    iget-object p0, p0, Lwt0;->c:Lnet/rtccloud/sdk/Rtcc;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lnet/rtccloud/sdk/Rtcc;->a(Lnet/rtccloud/sdk/Rtcc;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lnet/rtccloud/sdk/Rtcc;->e(Lnet/rtccloud/sdk/Rtcc;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
