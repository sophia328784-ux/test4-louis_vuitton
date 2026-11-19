package okhttp3;

import defpackage.fc;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\b\u0006\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0014\u0010\u0005\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\t¨\u0006\n"}, d2 = {"Lokhttp3/Challenge;", "", "", "scheme", "", "authParams", "<init>", "(Ljava/lang/String;Ljava/util/Map;)V", "realm", "(Ljava/lang/String;Ljava/lang/String;)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Challenge {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f76860a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f76861b;

    public Challenge(String str, Map<String, String> map) {
        String lowerCase;
        str.getClass();
        map.getClass();
        this.f76860a = str;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (key != null) {
                Locale locale = Locale.US;
                locale.getClass();
                lowerCase = key.toLowerCase(locale);
                lowerCase.getClass();
            } else {
                lowerCase = null;
            }
            linkedHashMap.put(lowerCase, value);
        }
        Map mapUnmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
        mapUnmodifiableMap.getClass();
        this.f76861b = mapUnmodifiableMap;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Challenge)) {
            return false;
        }
        Challenge challenge = (Challenge) obj;
        return Intrinsics.c(challenge.f76860a, this.f76860a) && Intrinsics.c(challenge.f76861b, this.f76861b);
    }

    public final int hashCode() {
        return this.f76861b.hashCode() + fc.b(899, 31, this.f76860a);
    }

    public final String toString() {
        return this.f76860a + " authParams=" + this.f76861b;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Challenge(String str, String str2) {
        str.getClass();
        str2.getClass();
        Map mapSingletonMap = Collections.singletonMap("realm", str2);
        mapSingletonMap.getClass();
        this(str, (Map<String, String>) mapSingletonMap);
    }
}
