.class public final synthetic Lma0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/perfectlib/LookHandler$DownloadCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/LookHandler$DownloadCallback;I)V
    .locals 0

    iput p2, p0, Lma0;->a:I

    iput-object p1, p0, Lma0;->b:Lcom/perfectcorp/perfectlib/LookHandler$DownloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lma0;->a:I

    iget-object p0, p0, Lma0;->b:Lcom/perfectcorp/perfectlib/LookHandler$DownloadCallback;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/perfectcorp/common/network/DownloadReport$ProgressReport;

    new-instance v0, Laa0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Laa0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    check-cast p1, Lcom/perfectcorp/common/network/DownloadReport$CompleteReport;

    const-string p1, "[download] success"

    const/4 v0, 0x3

    const-string v1, "LookHandler"

    invoke-static {v0, v1, p1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Lcom/perfectcorp/perfectlib/LookHandler$DownloadCallback;->onSuccess()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
