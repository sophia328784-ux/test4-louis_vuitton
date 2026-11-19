package com.vuitton.android.presentation.screen.webview;

import android.webkit.JavascriptInterface;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.vuitton.foundation.logger.Logger;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonElementSerializer;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\u000fB%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\r\u001a\u00020\u00072\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0007¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/BookingPaymentJsInterface;", "", "Lkotlinx/serialization/json/Json;", "json", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lkotlin/Function0;", "", "onPaymentSuccess", "<init>", "(Lkotlinx/serialization/json/Json;Lcom/vuitton/foundation/logger/Logger;Lkotlin/jvm/functions/Function0;)V", "", ConfigurationName.PING_PAYLOAD, "onMessage", "(Ljava/lang/String;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class BookingPaymentJsInterface {
    public static final Companion d = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f65448e = "(function() {\n    // window is new for each document, so this only blocks a re-injection into the same page.\n    if (window.lvBookingPaymentListenerInstalled) return;\n    window.lvBookingPaymentListenerInstalled = true;\n\n    window.addEventListener('message', function(event) {\n        try {\n            // The page posts to itself, so a message from any embedded frame is not ours.\n            // An iframe (payment provider, analytics, ads) calling parent.postMessage(...) is blocked.\n            if (event.source !== window) return;\n\n            var data = event.data;\n            BookingPaymentBridge.onMessage(typeof data === 'string' ? data : JSON.stringify(data));\n        } catch (error) { }\n    });\n})();";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Json f65449a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Logger f65450b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function0 f65451c;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/BookingPaymentJsInterface$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public BookingPaymentJsInterface(Json json, Logger logger, Function0<Unit> function0) {
        json.getClass();
        logger.getClass();
        function0.getClass();
        this.f65449a = json;
        this.f65450b = logger;
        this.f65451c = function0;
    }

    @JavascriptInterface
    public final void onMessage(String payload) {
        try {
            Json json = this.f65449a;
            String str = payload == null ? "" : payload;
            json.getClass();
            JsonElement jsonElement = (JsonElement) JsonElementKt.c((JsonElement) json.b(JsonElementSerializer.f75746a, str)).get("status");
            if (StringsKt.s(jsonElement != null ? JsonElementKt.d(jsonElement).getD() : null, "success", true)) {
                this.f65451c.mo47invoke();
            }
        } catch (SerializationException e2) {
            if (payload == null) {
                payload = "";
            }
            if (StringsKt.k(payload, "status", true)) {
                this.f65450b.c("BookingPaymentJsInterface", "Invalid booking payment payload with status field", e2);
            }
        }
    }
}
