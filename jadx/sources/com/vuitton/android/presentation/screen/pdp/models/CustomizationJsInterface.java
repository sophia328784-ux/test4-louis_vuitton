package com.vuitton.android.presentation.screen.pdp.models;

import android.util.Base64;
import android.webkit.JavascriptInterface;
import kotlin.Metadata;
import kotlin.text.Charsets;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonElementSerializer;
import kotlinx.serialization.json.JsonObject;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\r\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0007¢\u0006\u0004\b\r\u0010\f¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/CustomizationJsInterface;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/CustomizationCallback;", "callback", "Lkotlinx/serialization/json/Json;", "json", "<init>", "(Lcom/vuitton/android/presentation/screen/pdp/models/CustomizationCallback;Lkotlinx/serialization/json/Json;)V", "", "message", "", "handleItemAction", "(Ljava/lang/String;)V", "hotstampingSaved", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CustomizationJsInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CustomizationCallback f61542a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Json f61543b;

    public CustomizationJsInterface(CustomizationCallback customizationCallback, Json json) {
        customizationCallback.getClass();
        json.getClass();
        this.f61542a = customizationCallback;
        this.f61543b = json;
    }

    @JavascriptInterface
    public final void handleItemAction(String message) {
        JsonElement jsonElement;
        JsonElement jsonElement2;
        if (message != null) {
            try {
                Json json = this.f61543b;
                json.getClass();
                JsonElement jsonElement3 = (JsonElement) JsonElementKt.c((JsonElement) json.b(JsonElementSerializer.f75746a, message)).get("message");
                String d = null;
                JsonObject jsonObjectC = jsonElement3 != null ? JsonElementKt.c(jsonElement3) : null;
                String d2 = (jsonObjectC == null || (jsonElement2 = (JsonElement) jsonObjectC.get("recipeId")) == null) ? null : JsonElementKt.d(jsonElement2).getD();
                if (jsonObjectC != null && (jsonElement = (JsonElement) jsonObjectC.get("sku")) != null) {
                    d = JsonElementKt.d(jsonElement).getD();
                }
                if (d2 == null || d == null) {
                    return;
                }
                this.f61542a.a(d2, d);
            } catch (Exception unused) {
            }
        }
    }

    @JavascriptInterface
    public final void hotstampingSaved(String message) {
        if (message != null) {
            try {
                byte[] bytes = message.getBytes(Charsets.UTF_8);
                bytes.getClass();
                String strEncodeToString = Base64.encodeToString(bytes, 0);
                CustomizationCallback customizationCallback = this.f61542a;
                strEncodeToString.getClass();
                customizationCallback.b(strEncodeToString);
            } catch (Exception unused) {
            }
        }
    }
}
