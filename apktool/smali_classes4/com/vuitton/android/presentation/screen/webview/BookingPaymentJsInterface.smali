.class public final Lcom/vuitton/android/presentation/screen/webview/BookingPaymentJsInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/webview/BookingPaymentJsInterface$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u000fB%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0019\u0010\r\u001a\u00020\u00072\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/webview/BookingPaymentJsInterface;",
        "",
        "Lkotlinx/serialization/json/Json;",
        "json",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lkotlin/Function0;",
        "",
        "onPaymentSuccess",
        "<init>",
        "(Lkotlinx/serialization/json/Json;Lcom/vuitton/foundation/logger/Logger;Lkotlin/jvm/functions/Function0;)V",
        "",
        "payload",
        "onMessage",
        "(Ljava/lang/String;)V",
        "Companion",
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


# static fields
.field public static final d:Lcom/vuitton/android/presentation/screen/webview/BookingPaymentJsInterface$Companion;

.field public static final e:Ljava/lang/String;


# instance fields
.field public final a:Lkotlinx/serialization/json/Json;

.field public final b:Lcom/vuitton/foundation/logger/Logger;

.field public final c:Lkotlin/jvm/functions/Function0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/webview/BookingPaymentJsInterface$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/webview/BookingPaymentJsInterface$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/webview/BookingPaymentJsInterface;->d:Lcom/vuitton/android/presentation/screen/webview/BookingPaymentJsInterface$Companion;

    const-string v0, "(function() {\n    // window is new for each document, so this only blocks a re-injection into the same page.\n    if (window.lvBookingPaymentListenerInstalled) return;\n    window.lvBookingPaymentListenerInstalled = true;\n\n    window.addEventListener(\'message\', function(event) {\n        try {\n            // The page posts to itself, so a message from any embedded frame is not ours.\n            // An iframe (payment provider, analytics, ads) calling parent.postMessage(...) is blocked.\n            if (event.source !== window) return;\n\n            var data = event.data;\n            BookingPaymentBridge.onMessage(typeof data === \'string\' ? data : JSON.stringify(data));\n        } catch (error) { }\n    });\n})();"

    sput-object v0, Lcom/vuitton/android/presentation/screen/webview/BookingPaymentJsInterface;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lkotlinx/serialization/json/Json;Lcom/vuitton/foundation/logger/Logger;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/json/Json;",
            "Lcom/vuitton/foundation/logger/Logger;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/webview/BookingPaymentJsInterface;->a:Lkotlinx/serialization/json/Json;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/webview/BookingPaymentJsInterface;->b:Lcom/vuitton/foundation/logger/Logger;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/webview/BookingPaymentJsInterface;->c:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final onMessage(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "status"

    const-string v1, ""

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/webview/BookingPaymentJsInterface;->a:Lkotlinx/serialization/json/Json;

    if-nez p1, :cond_0

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, p1

    :goto_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lkotlinx/serialization/json/JsonElementSerializer;->a:Lkotlinx/serialization/json/JsonElementSerializer;

    invoke-virtual {v3, v5, v4}, Lkotlinx/serialization/json/Json;->b(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/json/JsonElement;

    invoke-static {v3}, Lkotlinx/serialization/json/JsonElementKt;->c(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonObject;

    move-result-object v3

    invoke-virtual {v3, v0}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/json/JsonElement;

    if-eqz v3, :cond_1

    invoke-static {v3}, Lkotlinx/serialization/json/JsonElementKt;->d(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v3

    invoke-virtual {v3}, Lkotlinx/serialization/json/JsonPrimitive;->f()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const-string v4, "success"

    invoke-static {v3, v4, v2}, Lkotlin/text/StringsKt;->s(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/webview/BookingPaymentJsInterface;->c:Lkotlin/jvm/functions/Function0;

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catch Lkotlinx/serialization/SerializationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    if-nez p1, :cond_2

    move-object p1, v1

    :cond_2
    invoke-static {p1, v0, v2}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "BookingPaymentJsInterface"

    const-string v0, "Invalid booking payment payload with status field"

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/BookingPaymentJsInterface;->b:Lcom/vuitton/foundation/logger/Logger;

    invoke-interface {p0, p1, v0, v3}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method
