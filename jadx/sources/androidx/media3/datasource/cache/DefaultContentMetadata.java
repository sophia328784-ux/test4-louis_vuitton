package androidx.media3.datasource.cache;

import defpackage.ct0;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class DefaultContentMetadata implements ContentMetadata {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final DefaultContentMetadata f14512c = new DefaultContentMetadata(Collections.EMPTY_MAP);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f14513a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f14514b;

    public DefaultContentMetadata(Map<String, byte[]> map) {
        this.f14514b = Collections.unmodifiableMap(map);
    }

    public static boolean c(Map map, Map map2) {
        if (map.size() != map2.size()) {
            return false;
        }
        for (Map.Entry entry : map.entrySet()) {
            if (!Arrays.equals((byte[]) entry.getValue(), (byte[]) map2.get(entry.getKey()))) {
                return false;
            }
        }
        return true;
    }

    public final DefaultContentMetadata a(ContentMetadataMutations contentMetadataMutations) {
        byte[] bytes;
        Map map = this.f14514b;
        HashMap map2 = new HashMap(map);
        List listUnmodifiableList = Collections.unmodifiableList(new ArrayList(contentMetadataMutations.f14511b));
        for (int i2 = 0; i2 < listUnmodifiableList.size(); i2++) {
            map2.remove(listUnmodifiableList.get(i2));
        }
        HashMap map3 = new HashMap(contentMetadataMutations.f14510a);
        for (Map.Entry entry : map3.entrySet()) {
            Object value = entry.getValue();
            if (value instanceof byte[]) {
                byte[] bArr = (byte[]) value;
                entry.setValue(Arrays.copyOf(bArr, bArr.length));
            }
        }
        for (Map.Entry entry2 : Collections.unmodifiableMap(map3).entrySet()) {
            String str = (String) entry2.getKey();
            Object value2 = entry2.getValue();
            if (value2 instanceof Long) {
                bytes = ByteBuffer.allocate(8).putLong(((Long) value2).longValue()).array();
            } else if (value2 instanceof String) {
                bytes = ((String) value2).getBytes(StandardCharsets.UTF_8);
            } else {
                if (!(value2 instanceof byte[])) {
                    ct0.c();
                    return null;
                }
                bytes = (byte[]) value2;
            }
            map2.put(str, bytes);
        }
        return c(map, map2) ? this : new DefaultContentMetadata(map2);
    }

    public final long b() {
        byte[] bArr = (byte[]) this.f14514b.get("exo_len");
        if (bArr != null) {
            return ByteBuffer.wrap(bArr).getLong();
        }
        return -1L;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || DefaultContentMetadata.class != obj.getClass()) {
            return false;
        }
        return c(this.f14514b, ((DefaultContentMetadata) obj).f14514b);
    }

    public final int hashCode() {
        if (this.f14513a == 0) {
            int iHashCode = 0;
            for (Map.Entry entry : this.f14514b.entrySet()) {
                iHashCode += Arrays.hashCode((byte[]) entry.getValue()) ^ ((String) entry.getKey()).hashCode();
            }
            this.f14513a = iHashCode;
        }
        return this.f14513a;
    }

    public DefaultContentMetadata() {
        this(Collections.EMPTY_MAP);
    }
}
