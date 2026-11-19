.class public final synthetic Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/x;->a:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/x;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/x;->a:I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/x;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->y:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;->g:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;

    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;->a()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/perfectcorp/common/network/BaseDownloadHandle;->a(D)V

    :cond_0
    return-void

    :pswitch_0
    check-cast p0, Ljava/util/Map;

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->z:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;

    sget-object v1, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a$a;->a:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a$a;

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->UNDEFINED:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;->DOWNLOAD:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a;-><init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$a$a;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
