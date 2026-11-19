.class public final synthetic Lvw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;I)V
    .locals 0

    iput p2, p0, Lvw;->a:I

    iput-object p1, p0, Lvw;->b:Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lvw;->a:I

    const-string v1, "FaceAttributeAnalyzer"

    iget-object p0, p0, Lvw;->b:Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "[queryCustomFeatures] failed, using stored preferences"

    invoke-static {v1, v0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;->a()V

    return-void

    :pswitch_0
    check-cast p1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/faceattribute/d$a;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;->a()V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[queryCustomFeatures] succeeded. customFeature="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/faceattribute/d$a;->brand:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {p0, p1, v0, v1}, La;->A(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
