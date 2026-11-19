package com.squareup.moshi;

import defpackage.d20;
import defpackage.md;
import java.math.BigDecimal;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
final class JsonValueReader extends JsonReader {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Object f43370i = new Object();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Object[] f43371h;

    public static final class JsonIterator implements Iterator<Object>, Cloneable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final JsonReader.Token f43372b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Object[] f43373c;
        public int d;

        public JsonIterator(JsonReader.Token token, Object[] objArr, int i2) {
            this.f43372b = token;
            this.f43373c = objArr;
            this.d = i2;
        }

        public final Object clone() {
            return new JsonIterator(this.f43372b, this.f43373c, this.d);
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.d < this.f43373c.length;
        }

        @Override // java.util.Iterator
        public final Object next() {
            int i2 = this.d;
            this.d = i2 + 1;
            return this.f43373c[i2];
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    @Override // com.squareup.moshi.JsonReader
    public final JsonReader B() {
        JsonValueReader jsonValueReader = new JsonValueReader(this);
        jsonValueReader.f43371h = (Object[]) this.f43371h.clone();
        for (int i2 = 0; i2 < jsonValueReader.f43358b; i2++) {
            Object[] objArr = jsonValueReader.f43371h;
            Object obj = objArr[i2];
            if (obj instanceof JsonIterator) {
                JsonIterator jsonIterator = (JsonIterator) obj;
                objArr[i2] = new JsonIterator(jsonIterator.f43372b, jsonIterator.f43373c, jsonIterator.d);
            }
        }
        return jsonValueReader;
    }

    @Override // com.squareup.moshi.JsonReader
    public final void C() {
        if (o()) {
            m0(t());
        }
    }

    @Override // com.squareup.moshi.JsonReader
    public final int G(JsonReader.Options options) {
        JsonReader.Token token = JsonReader.Token.NAME;
        Map.Entry entry = (Map.Entry) o0(Map.Entry.class, token);
        Object key = entry.getKey();
        if (!(key instanceof String)) {
            throw l0(key, token);
        }
        String str = (String) key;
        int length = options.f43363a.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (options.f43363a[i2].equals(str)) {
                this.f43371h[this.f43358b - 1] = entry.getValue();
                this.d[this.f43358b - 2] = str;
                return i2;
            }
        }
        return -1;
    }

    @Override // com.squareup.moshi.JsonReader
    public final int H(JsonReader.Options options) {
        int i2 = this.f43358b;
        Object obj = i2 != 0 ? this.f43371h[i2 - 1] : null;
        if (!(obj instanceof String)) {
            if (obj != f43370i) {
                return -1;
            }
            md.k("JsonReader is closed");
            return 0;
        }
        String str = (String) obj;
        int length = options.f43363a.length;
        for (int i3 = 0; i3 < length; i3++) {
            if (options.f43363a[i3].equals(str)) {
                n0();
                return i3;
            }
        }
        return -1;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        Arrays.fill(this.f43371h, 0, this.f43358b, (Object) null);
        this.f43371h[0] = f43370i;
        this.f43359c[0] = 8;
        this.f43358b = 1;
    }

    @Override // com.squareup.moshi.JsonReader
    public final void h() {
        List list = (List) o0(List.class, JsonReader.Token.BEGIN_ARRAY);
        JsonIterator jsonIterator = new JsonIterator(JsonReader.Token.END_ARRAY, list.toArray(new Object[list.size()]), 0);
        Object[] objArr = this.f43371h;
        int i2 = this.f43358b;
        objArr[i2 - 1] = jsonIterator;
        this.f43359c[i2 - 1] = 1;
        this.f43360e[i2 - 1] = 0;
        if (jsonIterator.hasNext()) {
            m0(jsonIterator.next());
        }
    }

    @Override // com.squareup.moshi.JsonReader
    public final void i0() {
        if (!this.g) {
            this.f43371h[this.f43358b - 1] = ((Map.Entry) o0(Map.Entry.class, JsonReader.Token.NAME)).getValue();
            this.d[this.f43358b - 2] = "null";
        } else {
            JsonReader.Token tokenZ = z();
            t();
            StringBuilder sb = new StringBuilder("Cannot skip unexpected ");
            sb.append(tokenZ);
            d20.n(sb, " at ", n());
        }
    }

    @Override // com.squareup.moshi.JsonReader
    public final void j() {
        Map map = (Map) o0(Map.class, JsonReader.Token.BEGIN_OBJECT);
        JsonIterator jsonIterator = new JsonIterator(JsonReader.Token.END_OBJECT, map.entrySet().toArray(new Object[map.size()]), 0);
        Object[] objArr = this.f43371h;
        int i2 = this.f43358b;
        objArr[i2 - 1] = jsonIterator;
        this.f43359c[i2 - 1] = 3;
        if (jsonIterator.hasNext()) {
            m0(jsonIterator.next());
        }
    }

    @Override // com.squareup.moshi.JsonReader
    public final void j0() {
        if (this.g) {
            StringBuilder sb = new StringBuilder("Cannot skip unexpected ");
            sb.append(z());
            d20.n(sb, " at ", n());
            return;
        }
        int i2 = this.f43358b;
        if (i2 > 1) {
            this.d[i2 - 2] = "null";
        }
        Object obj = i2 != 0 ? this.f43371h[i2 - 1] : null;
        if (obj instanceof JsonIterator) {
            StringBuilder sb2 = new StringBuilder("Expected a value but was ");
            sb2.append(z());
            d20.n(sb2, " at path ", n());
        } else if (obj instanceof Map.Entry) {
            Object[] objArr = this.f43371h;
            int i3 = i2 - 1;
            objArr[i3] = ((Map.Entry) objArr[i3]).getValue();
        } else {
            if (i2 > 0) {
                n0();
                return;
            }
            StringBuilder sb3 = new StringBuilder("Expected a value but was ");
            sb3.append(z());
            d20.n(sb3, " at path ", n());
        }
    }

    @Override // com.squareup.moshi.JsonReader
    public final void k() {
        JsonReader.Token token = JsonReader.Token.END_ARRAY;
        JsonIterator jsonIterator = (JsonIterator) o0(JsonIterator.class, token);
        if (jsonIterator.f43372b != token || jsonIterator.hasNext()) {
            throw l0(jsonIterator, token);
        }
        n0();
    }

    @Override // com.squareup.moshi.JsonReader
    public final void m() {
        JsonReader.Token token = JsonReader.Token.END_OBJECT;
        JsonIterator jsonIterator = (JsonIterator) o0(JsonIterator.class, token);
        if (jsonIterator.f43372b != token || jsonIterator.hasNext()) {
            throw l0(jsonIterator, token);
        }
        this.d[this.f43358b - 1] = null;
        n0();
    }

    public final void m0(Object obj) {
        int i2 = this.f43358b;
        if (i2 == this.f43371h.length) {
            if (i2 == 256) {
                throw new JsonDataException("Nesting too deep at ".concat(n()));
            }
            int[] iArr = this.f43359c;
            this.f43359c = Arrays.copyOf(iArr, iArr.length * 2);
            String[] strArr = this.d;
            this.d = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
            int[] iArr2 = this.f43360e;
            this.f43360e = Arrays.copyOf(iArr2, iArr2.length * 2);
            Object[] objArr = this.f43371h;
            this.f43371h = Arrays.copyOf(objArr, objArr.length * 2);
        }
        Object[] objArr2 = this.f43371h;
        int i3 = this.f43358b;
        this.f43358b = i3 + 1;
        objArr2[i3] = obj;
    }

    public final void n0() {
        int i2 = this.f43358b;
        int i3 = i2 - 1;
        this.f43358b = i3;
        Object[] objArr = this.f43371h;
        objArr[i3] = null;
        this.f43359c[i3] = 0;
        if (i3 > 0) {
            int[] iArr = this.f43360e;
            int i4 = i2 - 2;
            iArr[i4] = iArr[i4] + 1;
            Object obj = objArr[i2 - 2];
            if (obj instanceof Iterator) {
                Iterator it = (Iterator) obj;
                if (it.hasNext()) {
                    m0(it.next());
                }
            }
        }
    }

    @Override // com.squareup.moshi.JsonReader
    public final boolean o() {
        int i2 = this.f43358b;
        if (i2 == 0) {
            return false;
        }
        Object obj = this.f43371h[i2 - 1];
        return !(obj instanceof Iterator) || ((Iterator) obj).hasNext();
    }

    public final Object o0(Class cls, JsonReader.Token token) {
        int i2 = this.f43358b;
        Object obj = i2 != 0 ? this.f43371h[i2 - 1] : null;
        if (cls.isInstance(obj)) {
            return cls.cast(obj);
        }
        if (obj == null && token == JsonReader.Token.NULL) {
            return null;
        }
        if (obj != f43370i) {
            throw l0(obj, token);
        }
        md.k("JsonReader is closed");
        return null;
    }

    @Override // com.squareup.moshi.JsonReader
    public final boolean p() {
        Boolean bool = (Boolean) o0(Boolean.class, JsonReader.Token.BOOLEAN);
        n0();
        return bool.booleanValue();
    }

    @Override // com.squareup.moshi.JsonReader
    public final double q() throws JsonEncodingException {
        double dDoubleValue;
        JsonReader.Token token = JsonReader.Token.NUMBER;
        Object objO0 = o0(Object.class, token);
        if (objO0 instanceof Number) {
            dDoubleValue = ((Number) objO0).doubleValue();
        } else {
            if (!(objO0 instanceof String)) {
                throw l0(objO0, token);
            }
            try {
                dDoubleValue = Double.parseDouble((String) objO0);
            } catch (NumberFormatException unused) {
                throw l0(objO0, JsonReader.Token.NUMBER);
            }
        }
        if (this.f43361f || !(Double.isNaN(dDoubleValue) || Double.isInfinite(dDoubleValue))) {
            n0();
            return dDoubleValue;
        }
        throw new JsonEncodingException("JSON forbids NaN and infinities: " + dDoubleValue + " at path " + n());
    }

    @Override // com.squareup.moshi.JsonReader
    public final int r() {
        int iIntValueExact;
        JsonReader.Token token = JsonReader.Token.NUMBER;
        Object objO0 = o0(Object.class, token);
        if (objO0 instanceof Number) {
            iIntValueExact = ((Number) objO0).intValue();
        } else {
            if (!(objO0 instanceof String)) {
                throw l0(objO0, token);
            }
            try {
                try {
                    iIntValueExact = Integer.parseInt((String) objO0);
                } catch (NumberFormatException unused) {
                    throw l0(objO0, JsonReader.Token.NUMBER);
                }
            } catch (NumberFormatException unused2) {
                iIntValueExact = new BigDecimal((String) objO0).intValueExact();
            }
        }
        n0();
        return iIntValueExact;
    }

    @Override // com.squareup.moshi.JsonReader
    public final long s() {
        long jLongValueExact;
        JsonReader.Token token = JsonReader.Token.NUMBER;
        Object objO0 = o0(Object.class, token);
        if (objO0 instanceof Number) {
            jLongValueExact = ((Number) objO0).longValue();
        } else {
            if (!(objO0 instanceof String)) {
                throw l0(objO0, token);
            }
            try {
                try {
                    jLongValueExact = Long.parseLong((String) objO0);
                } catch (NumberFormatException unused) {
                    throw l0(objO0, JsonReader.Token.NUMBER);
                }
            } catch (NumberFormatException unused2) {
                jLongValueExact = new BigDecimal((String) objO0).longValueExact();
            }
        }
        n0();
        return jLongValueExact;
    }

    @Override // com.squareup.moshi.JsonReader
    public final String t() {
        JsonReader.Token token = JsonReader.Token.NAME;
        Map.Entry entry = (Map.Entry) o0(Map.Entry.class, token);
        Object key = entry.getKey();
        if (!(key instanceof String)) {
            throw l0(key, token);
        }
        String str = (String) key;
        this.f43371h[this.f43358b - 1] = entry.getValue();
        this.d[this.f43358b - 2] = str;
        return str;
    }

    @Override // com.squareup.moshi.JsonReader
    public final void u() {
        o0(Void.class, JsonReader.Token.NULL);
        n0();
    }

    @Override // com.squareup.moshi.JsonReader
    public final String w() {
        int i2 = this.f43358b;
        Object obj = i2 != 0 ? this.f43371h[i2 - 1] : null;
        if (obj instanceof String) {
            n0();
            return (String) obj;
        }
        if (obj instanceof Number) {
            n0();
            return obj.toString();
        }
        if (obj != f43370i) {
            throw l0(obj, JsonReader.Token.STRING);
        }
        md.k("JsonReader is closed");
        return null;
    }

    @Override // com.squareup.moshi.JsonReader
    public final JsonReader.Token z() {
        int i2 = this.f43358b;
        if (i2 == 0) {
            return JsonReader.Token.END_DOCUMENT;
        }
        Object obj = this.f43371h[i2 - 1];
        if (obj instanceof JsonIterator) {
            return ((JsonIterator) obj).f43372b;
        }
        if (obj instanceof List) {
            return JsonReader.Token.BEGIN_ARRAY;
        }
        if (obj instanceof Map) {
            return JsonReader.Token.BEGIN_OBJECT;
        }
        if (obj instanceof Map.Entry) {
            return JsonReader.Token.NAME;
        }
        if (obj instanceof String) {
            return JsonReader.Token.STRING;
        }
        if (obj instanceof Boolean) {
            return JsonReader.Token.BOOLEAN;
        }
        if (obj instanceof Number) {
            return JsonReader.Token.NUMBER;
        }
        if (obj == null) {
            return JsonReader.Token.NULL;
        }
        if (obj != f43370i) {
            throw l0(obj, "a JSON value");
        }
        md.k("JsonReader is closed");
        return null;
    }
}
