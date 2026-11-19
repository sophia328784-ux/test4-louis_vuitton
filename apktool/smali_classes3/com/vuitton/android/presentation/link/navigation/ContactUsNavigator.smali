.class public final Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;",
        "",
        "Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;",
        "webViewRouter",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;)V",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;IILcom/vuitton/android/presentation/chat/ChatAttachable;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p2, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$Sms;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$Sms;

    iget-object p0, p2, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$Sms;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/vuitton/android/presentation/extensions/ActivityExtKt;->l(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    return-void

    :cond_0
    instance-of v0, p2, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$PhoneCall;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$PhoneCall;

    iget-object p0, p2, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$PhoneCall;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/vuitton/android/presentation/extensions/ActivityExtKt;->f(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    :cond_1
    instance-of v0, p2, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$EmailForm;

    if-eqz v0, :cond_2

    check-cast p2, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$EmailForm;

    iget-object p2, p2, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$EmailForm;->a:Ljava/lang/String;

    const/4 p3, 0x0

    const/16 p4, 0x7c

    iget-object p0, p0, Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;->a:Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;->b(Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;Landroid/app/Activity;Ljava/lang/String;ZI)V

    return-void

    :cond_2
    instance-of p0, p2, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$EmailNative;

    if-eqz p0, :cond_3

    check-cast p2, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$EmailNative;

    iget-object p0, p2, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$EmailNative;->a:Ljava/lang/String;

    iget-object p2, p2, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$EmailNative;->b:Ljava/lang/String;

    const/4 p3, 0x4

    invoke-static {p1, p0, p2, p3}, Lcom/vuitton/android/presentation/extensions/ActivityExtKt;->j(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_3
    instance-of p0, p2, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$WhatsApp;

    if-eqz p0, :cond_4

    check-cast p2, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$WhatsApp;

    iget-object p0, p2, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$WhatsApp;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/vuitton/android/presentation/extensions/ActivityExtKt;->m(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    return-void

    :cond_4
    sget-object p0, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$Chat;->a:Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$Chat;

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-interface {p5, p3, p4}, Lcom/vuitton/android/presentation/chat/ChatAttachable;->b(II)V

    return-void

    :cond_5
    instance-of p0, p2, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$KakaoTalk;

    if-eqz p0, :cond_6

    check-cast p2, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$KakaoTalk;

    iget-object p0, p2, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$KakaoTalk;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/vuitton/android/presentation/extensions/ActivityExtKt;->i(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    return-void

    :cond_6
    invoke-static {}, Lv40;->g()V

    return-void
.end method
