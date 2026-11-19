package kotlinx.serialization.json.internal;

import defpackage.t30;
import java.lang.annotation.Annotation;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonConfiguration;
import kotlinx.serialization.json.JsonIgnoreUnknownKeys;
import kotlinx.serialization.json.JsonNamingStrategy;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-serialization-json"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class JsonNamesMapKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DescriptorSchemaCache.Key f75787a = new DescriptorSchemaCache.Key();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final DescriptorSchemaCache.Key f75788b = new DescriptorSchemaCache.Key();

    public static final void a(LinkedHashMap linkedHashMap, SerialDescriptor serialDescriptor, String str, int i2) {
        String str2 = Intrinsics.c(serialDescriptor.getF75548b(), SerialKind.ENUM.f75563a) ? "enum value" : "property";
        if (!linkedHashMap.containsKey(str)) {
            linkedHashMap.put(str, Integer.valueOf(i2));
            return;
        }
        throw new JsonException("The suggested name '" + str + "' for " + str2 + ' ' + serialDescriptor.f(i2) + " is already one of the names for " + str2 + ' ' + serialDescriptor.f(((Number) MapsKt.d(linkedHashMap, str)).intValue()) + " in " + serialDescriptor);
    }

    public static final Map b(SerialDescriptor serialDescriptor, Json json) {
        json.getClass();
        serialDescriptor.getClass();
        return (Map) json.f75718c.a(serialDescriptor, f75787a, new t30(serialDescriptor, json, 2));
    }

    public static final int c(SerialDescriptor serialDescriptor, Json json, String str) {
        serialDescriptor.getClass();
        json.getClass();
        str.getClass();
        JsonConfiguration jsonConfiguration = json.f75716a;
        if (jsonConfiguration.n && Intrinsics.c(serialDescriptor.getF75548b(), SerialKind.ENUM.f75563a)) {
            String lowerCase = str.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            Integer num = (Integer) b(serialDescriptor, json).get(lowerCase);
            if (num != null) {
                return num.intValue();
            }
            return -3;
        }
        if (f(serialDescriptor, json) != null) {
            Integer num2 = (Integer) b(serialDescriptor, json).get(str);
            if (num2 != null) {
                return num2.intValue();
            }
            return -3;
        }
        int iC = serialDescriptor.c(str);
        if (iC != -3 || !jsonConfiguration.l) {
            return iC;
        }
        Integer num3 = (Integer) b(serialDescriptor, json).get(str);
        if (num3 != null) {
            return num3.intValue();
        }
        return -3;
    }

    public static final int d(SerialDescriptor serialDescriptor, Json json, String str, String str2) {
        serialDescriptor.getClass();
        json.getClass();
        str.getClass();
        int iC = c(serialDescriptor, json, str);
        if (iC != -3) {
            return iC;
        }
        throw new SerializationException(serialDescriptor.getF75659a() + " does not contain element with name '" + str + '\'' + str2);
    }

    public static final boolean e(SerialDescriptor serialDescriptor, Json json) {
        serialDescriptor.getClass();
        json.getClass();
        if (json.f75716a.f75735b) {
            return true;
        }
        List d = serialDescriptor.getD();
        if ((d instanceof Collection) && d.isEmpty()) {
            return false;
        }
        Iterator it = d.iterator();
        while (it.hasNext()) {
            if (((Annotation) it.next()) instanceof JsonIgnoreUnknownKeys) {
                return true;
            }
        }
        return false;
    }

    public static final JsonNamingStrategy f(SerialDescriptor serialDescriptor, Json json) {
        serialDescriptor.getClass();
        json.getClass();
        if (Intrinsics.c(serialDescriptor.getF75548b(), StructureKind.CLASS.f75564a)) {
            return json.f75716a.m;
        }
        return null;
    }
}
