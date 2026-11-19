package com.dynamicyield.sdk.wrapper.core.managers.logging;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/managers/logging/LoggingUtils;", "", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class LoggingUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Set f25921a = ArraysKt.Z(new String[]{"content-type", "accept", "dy-sdk-version"});

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Set f25922b = SetsKt.h("dy-api-key");

    public static String a(Map map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) entry.getValue();
            String lowerCase = str.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            if (f25921a.contains(lowerCase)) {
                linkedHashMap.put(str, str2);
            } else if (f25922b.contains(lowerCase)) {
                linkedHashMap.put(str, "[REDACTED]");
            }
        }
        if (linkedHashMap.isEmpty()) {
            return "[no-safe-headers]";
        }
        ArrayList arrayList = new ArrayList(linkedHashMap.size());
        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
            arrayList.add(((String) entry2.getKey()) + ": " + ((String) entry2.getValue()));
        }
        return CollectionsKt.K(arrayList, ", ", null, null, null, 62);
    }
}
