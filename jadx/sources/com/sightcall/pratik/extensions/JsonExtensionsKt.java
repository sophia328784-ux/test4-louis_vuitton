package com.sightcall.pratik.extensions;

import com.google.gson.Gson;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u001c\u0010\u0000\u001a\u0002H\u0001\"\u0006\b\u0000\u0010\u0001\u0018\u0001*\u0004\u0018\u00010\u0002H\u0086\b¢\u0006\u0002\u0010\u0003\u001a\u000f\u0010\u0004\u001a\u00020\u0005*\u0004\u0018\u00010\u0002H\u0086\b¨\u0006\u0006"}, d2 = {"fromJson", "T", "", "(Ljava/lang/String;)Ljava/lang/Object;", "toJsonObject", "Lorg/json/JSONObject;", "pratik_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class JsonExtensionsKt {
    public static final <T> T fromJson(String str) throws JsonException {
        try {
            if (str == null) {
                throw new IllegalArgumentException("Required value was null.");
            }
            new Gson();
            Intrinsics.g();
            throw null;
        } catch (Exception e2) {
            throw new JsonException(tr.g("Unable to deserialize: ", str), e2);
        }
    }

    public static final JSONObject toJsonObject(String str) throws JsonException {
        try {
            if (str != null) {
                return new JSONObject(str);
            }
            throw new IllegalArgumentException("Required value was null.");
        } catch (Exception e2) {
            throw new JsonException(tr.g("Unable to deserialize: ", str), e2);
        }
    }
}
