package com.google.firebase.encoders.json;

import android.util.Base64;
import android.util.JsonWriter;
import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.ValueEncoder;
import com.google.firebase.encoders.ValueEncoderContext;
import defpackage.md;
import defpackage.t40;
import java.io.IOException;
import java.io.Writer;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class JsonValueObjectEncoderContext implements ObjectEncoderContext, ValueEncoderContext {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f35101a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final JsonWriter f35102b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map f35103c;
    public final Map d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ObjectEncoder f35104e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f35105f;

    public JsonValueObjectEncoderContext(Writer writer, HashMap map, HashMap map2, t40 t40Var, boolean z) {
        this.f35102b = new JsonWriter(writer);
        this.f35103c = map;
        this.d = map2;
        this.f35104e = t40Var;
        this.f35105f = z;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final ObjectEncoderContext a(FieldDescriptor fieldDescriptor, boolean z) throws IOException {
        String str = fieldDescriptor.f35089a;
        i();
        JsonWriter jsonWriter = this.f35102b;
        jsonWriter.name(str);
        i();
        jsonWriter.value(z);
        return this;
    }

    @Override // com.google.firebase.encoders.ValueEncoderContext
    public final ValueEncoderContext add(String str) throws IOException {
        i();
        this.f35102b.value(str);
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final ObjectEncoderContext b(FieldDescriptor fieldDescriptor, long j2) throws IOException {
        String str = fieldDescriptor.f35089a;
        i();
        JsonWriter jsonWriter = this.f35102b;
        jsonWriter.name(str);
        i();
        jsonWriter.value(j2);
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final ObjectEncoderContext c(FieldDescriptor fieldDescriptor, int i2) throws IOException {
        String str = fieldDescriptor.f35089a;
        i();
        JsonWriter jsonWriter = this.f35102b;
        jsonWriter.name(str);
        i();
        jsonWriter.value(i2);
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final ObjectEncoderContext d(FieldDescriptor fieldDescriptor, double d) throws IOException {
        String str = fieldDescriptor.f35089a;
        i();
        JsonWriter jsonWriter = this.f35102b;
        jsonWriter.name(str);
        i();
        jsonWriter.value(d);
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final ObjectEncoderContext e(FieldDescriptor fieldDescriptor, Object obj) throws IOException {
        h(obj, fieldDescriptor.f35089a);
        return this;
    }

    @Override // com.google.firebase.encoders.ValueEncoderContext
    public final ValueEncoderContext f(boolean z) throws IOException {
        i();
        this.f35102b.value(z);
        return this;
    }

    public final JsonValueObjectEncoderContext g(Object obj) {
        JsonWriter jsonWriter = this.f35102b;
        if (obj == null) {
            jsonWriter.nullValue();
            return this;
        }
        if (obj instanceof Number) {
            jsonWriter.value((Number) obj);
            return this;
        }
        if (!obj.getClass().isArray()) {
            if (obj instanceof Collection) {
                jsonWriter.beginArray();
                Iterator it = ((Collection) obj).iterator();
                while (it.hasNext()) {
                    g(it.next());
                }
                jsonWriter.endArray();
                return this;
            }
            if (obj instanceof Map) {
                jsonWriter.beginObject();
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    Object key = entry.getKey();
                    try {
                        h(entry.getValue(), (String) key);
                    } catch (ClassCastException e2) {
                        throw new EncodingException(String.format("Only String keys are currently supported in maps, got %s of type %s instead.", key, key.getClass()), e2);
                    }
                }
                jsonWriter.endObject();
                return this;
            }
            ObjectEncoder objectEncoder = (ObjectEncoder) this.f35103c.get(obj.getClass());
            if (objectEncoder != null) {
                jsonWriter.beginObject();
                objectEncoder.a(obj, this);
                jsonWriter.endObject();
                return this;
            }
            ValueEncoder valueEncoder = (ValueEncoder) this.d.get(obj.getClass());
            if (valueEncoder != null) {
                valueEncoder.a(obj, this);
                return this;
            }
            if (!(obj instanceof Enum)) {
                jsonWriter.beginObject();
                this.f35104e.a(obj, this);
                jsonWriter.endObject();
                return this;
            }
            if (obj instanceof NumberedEnum) {
                int number = ((NumberedEnum) obj).getNumber();
                i();
                jsonWriter.value(number);
                return this;
            }
            String strName = ((Enum) obj).name();
            i();
            jsonWriter.value(strName);
            return this;
        }
        if (obj instanceof byte[]) {
            i();
            jsonWriter.value(Base64.encodeToString((byte[]) obj, 2));
            return this;
        }
        jsonWriter.beginArray();
        int i2 = 0;
        if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            int length = iArr.length;
            while (i2 < length) {
                jsonWriter.value(iArr[i2]);
                i2++;
            }
        } else if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            int length2 = jArr.length;
            while (i2 < length2) {
                long j2 = jArr[i2];
                i();
                jsonWriter.value(j2);
                i2++;
            }
        } else if (obj instanceof double[]) {
            double[] dArr = (double[]) obj;
            int length3 = dArr.length;
            while (i2 < length3) {
                jsonWriter.value(dArr[i2]);
                i2++;
            }
        } else if (obj instanceof boolean[]) {
            boolean[] zArr = (boolean[]) obj;
            int length4 = zArr.length;
            while (i2 < length4) {
                jsonWriter.value(zArr[i2]);
                i2++;
            }
        } else if (obj instanceof Number[]) {
            Number[] numberArr = (Number[]) obj;
            int length5 = numberArr.length;
            while (i2 < length5) {
                g(numberArr[i2]);
                i2++;
            }
        } else {
            Object[] objArr = (Object[]) obj;
            int length6 = objArr.length;
            while (i2 < length6) {
                g(objArr[i2]);
                i2++;
            }
        }
        jsonWriter.endArray();
        return this;
    }

    public final JsonValueObjectEncoderContext h(Object obj, String str) throws IOException {
        boolean z = this.f35105f;
        JsonWriter jsonWriter = this.f35102b;
        if (z) {
            if (obj == null) {
                return this;
            }
            i();
            jsonWriter.name(str);
            g(obj);
            return this;
        }
        i();
        jsonWriter.name(str);
        if (obj == null) {
            jsonWriter.nullValue();
            return this;
        }
        g(obj);
        return this;
    }

    public final void i() {
        if (this.f35101a) {
            return;
        }
        md.k("Parent context used since this context was created. Cannot use this context anymore.");
    }
}
