.class public final synthetic La20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IIILjava/lang/Object;)V
    .locals 0

    iput p3, p0, La20;->b:I

    iput-object p4, p0, La20;->e:Ljava/lang/Object;

    iput p1, p0, La20;->c:I

    iput p2, p0, La20;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, La20;->b:I

    const/4 v1, 0x1

    iget v2, p0, La20;->d:I

    iget v3, p0, La20;->c:I

    iget-object p0, p0, La20;->e:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;

    sget-object v0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->n1:Lcom/vuitton/android/presentation/screen/webview/WebViewFragment$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->Q:Lcom/vuitton/android/presentation/chat/ChatAttachable;

    if-eqz p0, :cond_0

    invoke-interface {p0, v3, v2}, Lcom/vuitton/android/presentation/chat/ChatAttachable;->b(II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    const-string p0, "chatAttachable"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :pswitch_0
    check-cast p0, Lkotlin/jvm/functions/Function3;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$Chat;->a:Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$Chat;

    invoke-interface {p0, v2, v0, v1}, Lkotlin/jvm/functions/Function3;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    new-instance v0, Lcom/vuitton/android/designkit/ui/theme/atoms/StepState$Idle;

    invoke-direct {v0, v1}, Lcom/vuitton/android/designkit/ui/theme/atoms/StepState$Idle;-><init>(Z)V

    invoke-virtual {p0, v3, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-ge v3, v2, :cond_1

    add-int/2addr v3, v1

    sget-object v0, Lcom/vuitton/android/designkit/ui/theme/atoms/StepState$Animating;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/StepState$Animating;

    invoke-virtual {p0, v3, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast p0, Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->z:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, v3, v2, v1}, Lokhttp3/internal/http2/Http2Writer;->j(IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, v1, v1, v0}, Lokhttp3/internal/http2/Http2Connection;->c(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
