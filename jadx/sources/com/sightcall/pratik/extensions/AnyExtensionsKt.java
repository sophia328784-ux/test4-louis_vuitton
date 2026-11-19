package com.sightcall.pratik.extensions;

import com.google.gson.GsonBuilder;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0004¨\u0006\u0006"}, d2 = {"toJson", "", "", "disableHtmlEscaping", "", "serializeNulls", "pratik_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class AnyExtensionsKt {
    public static final String toJson(Object obj, boolean z, boolean z2) {
        obj.getClass();
        GsonBuilder gsonBuilder = new GsonBuilder();
        if (z) {
            gsonBuilder.disableHtmlEscaping();
        }
        if (z2) {
            gsonBuilder.serializeNulls();
        }
        String json = gsonBuilder.create().toJson(obj);
        json.getClass();
        return json;
    }

    public static /* synthetic */ String toJson$default(Object obj, boolean z, boolean z2, int i2, Object obj2) {
        if ((i2 & 1) != 0) {
            z = false;
        }
        if ((i2 & 2) != 0) {
            z2 = false;
        }
        return toJson(obj, z, z2);
    }
}
