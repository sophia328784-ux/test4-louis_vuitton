.class public final synthetic Ly71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/common/network/ResponseConverter;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ly71;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget p0, p0, Ly71;->a:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/g;

    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/g;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_0
    new-instance p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/g;

    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/g;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networkmanager/task/a;

    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networkmanager/task/a;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/perfectcorp/common/gson/GsonHelper;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    const-class v0, Lcom/perfectcorp/perfectlib/ph/template/b$b;

    invoke-virtual {p0, p1, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->i(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/template/b$b;

    return-object p0

    :pswitch_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse;

    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
