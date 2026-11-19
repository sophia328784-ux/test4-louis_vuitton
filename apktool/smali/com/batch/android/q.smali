.class public final synthetic Lcom/batch/android/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/BatchMessagingWebViewJavascriptBridge$b;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;


# direct methods
.method public synthetic constructor <init>(Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;I)V
    .locals 0

    iput p2, p0, Lcom/batch/android/q;->a:I

    iput-object p1, p0, Lcom/batch/android/q;->b:Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/batch/android/q;->a:I

    iget-object p0, p0, Lcom/batch/android/q;->b:Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0}, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;->k(Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;->g()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0}, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0}, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {p0}, Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;->l(Lcom/batch/android/BatchMessagingWebViewJavascriptBridge;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
