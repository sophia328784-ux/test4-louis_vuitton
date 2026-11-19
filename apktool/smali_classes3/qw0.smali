.class public final synthetic Lqw0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lqw0;->a:I

    iput-object p1, p0, Lqw0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lqw0;->a:I

    iget-object p0, p0, Lqw0;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;->b:Landroid/webkit/CookieManager;

    invoke-virtual {p1}, Landroid/webkit/CookieManager;->flush()V

    iget-object p0, p0, Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;->a:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_0
    check-cast p0, Lcom/perfectcorp/thirdparty/io/reactivex/SingleEmitter;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
