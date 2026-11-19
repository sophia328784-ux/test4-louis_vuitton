.class public final synthetic Lfc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/perfectlib/core/BaseVenus;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/core/BaseVenus;I)V
    .locals 0

    iput p2, p0, Lfc0;->a:I

    iput-object p1, p0, Lfc0;->b:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lfc0;->a:I

    const-string v1, "MakeupCam"

    iget-object p0, p0, Lfc0;->b:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "[queryCustomFeatures] failed, using stored preferences"

    invoke-static {v1, v0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/MakeupCam;->d(Lcom/perfectcorp/perfectlib/core/BaseVenus;)V

    return-void

    :pswitch_0
    check-cast p1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/makeup/a$a;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/MakeupCam;->d(Lcom/perfectcorp/perfectlib/core/BaseVenus;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[queryCustomFeatures] succeeded. customFeature="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/makeup/a$a;->brand:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {p0, p1, v0, v1}, La;->A(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
