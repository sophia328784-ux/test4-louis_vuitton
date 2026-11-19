package com.squareup.wire.internal;

import com.squareup.wire.WireEnum;
import defpackage.b21;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"com/squareup/wire/internal/Internal__InternalKt"}, d2 = {}, k = 4, mv = {2, 0, 0}, xi = 48)
public abstract class Internal {
    public static final WireEnum a(Class cls) {
        Object obj;
        Object[] enumConstants = cls.getEnumConstants();
        enumConstants.getClass();
        int length = enumConstants.length;
        for (int i2 = 0; i2 < length; i2++) {
            obj = enumConstants[i2];
            WireEnum wireEnum = (WireEnum) obj;
            wireEnum.getClass();
            if (wireEnum.getValue() == 0) {
                return (WireEnum) obj;
            }
        }
        obj = null;
        return (WireEnum) obj;
    }

    public static final List b(String str, List list) {
        list.getClass();
        if (list instanceof MutableOnWriteList) {
            list = ((MutableOnWriteList) list).f43484c;
        }
        if (list != EmptyList.f71768b && !(list instanceof ImmutableList)) {
            ImmutableList immutableList = new ImmutableList(list);
            list = null;
            if (!immutableList.contains(null)) {
                return immutableList;
            }
            b21.n(str.concat(".contains(null)"));
        }
        return list;
    }

    public static final Map c(String str, Map map) {
        map.getClass();
        if (map.isEmpty()) {
            return MapsKt.c();
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        Set setKeySet = linkedHashMap.keySet();
        setKeySet.getClass();
        if (setKeySet.contains(null)) {
            b21.n(str.concat(".containsKey(null)"));
            return null;
        }
        Collection collectionValues = linkedHashMap.values();
        collectionValues.getClass();
        if (collectionValues.contains(null)) {
            b21.n(str.concat(".containsValue(null)"));
            return null;
        }
        Map mapUnmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
        mapUnmodifiableMap.getClass();
        return mapUnmodifiableMap;
    }

    public static final String d(String str) {
        str.getClass();
        StringBuilder sb = new StringBuilder(str.length());
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if (StringsKt.l(",[]{}\\", cCharAt)) {
                sb.append('\\');
            }
            sb.append(cCharAt);
        }
        return sb.toString();
    }

    public static final String e(List list) {
        list.getClass();
        return CollectionsKt.K(list, null, "[", "]", Internal__InternalKt$sanitize$2.f43482b, 25);
    }
}
