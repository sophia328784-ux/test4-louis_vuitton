package com.google.firebase.encoders.json;

import com.google.firebase.encoders.DataEncoder;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ValueEncoder;
import com.google.firebase.encoders.ValueEncoderContext;
import com.google.firebase.encoders.config.EncoderConfig;
import com.google.firebase.encoders.json.JsonDataEncoderBuilder;
import defpackage.t40;
import defpackage.u40;
import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes2.dex */
public final class JsonDataEncoderBuilder implements EncoderConfig<JsonDataEncoderBuilder> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final u40 f35094f;
    public static final u40 g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f35096a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f35097b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final t40 f35098c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final t40 f35093e = new t40(0);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final TimestampEncoder f35095h = new TimestampEncoder();

    public static final class TimestampEncoder implements ValueEncoder<Date> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final SimpleDateFormat f35100a;

        static {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
            f35100a = simpleDateFormat;
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        }

        @Override // com.google.firebase.encoders.ValueEncoder
        public final void a(Object obj, Object obj2) {
            ((ValueEncoderContext) obj2).add(f35100a.format((Date) obj));
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [u40] */
    /* JADX WARN: Type inference failed for: r0v2, types: [u40] */
    static {
        final int i2 = 0;
        f35094f = new ValueEncoder() { // from class: u40
            @Override // com.google.firebase.encoders.ValueEncoder
            public final void a(Object obj, Object obj2) {
                switch (i2) {
                    case 0:
                        t40 t40Var = JsonDataEncoderBuilder.f35093e;
                        ((ValueEncoderContext) obj2).add((String) obj);
                        break;
                    default:
                        t40 t40Var2 = JsonDataEncoderBuilder.f35093e;
                        ((ValueEncoderContext) obj2).f(((Boolean) obj).booleanValue());
                        break;
                }
            }
        };
        final int i3 = 1;
        g = new ValueEncoder() { // from class: u40
            @Override // com.google.firebase.encoders.ValueEncoder
            public final void a(Object obj, Object obj2) {
                switch (i3) {
                    case 0:
                        t40 t40Var = JsonDataEncoderBuilder.f35093e;
                        ((ValueEncoderContext) obj2).add((String) obj);
                        break;
                    default:
                        t40 t40Var2 = JsonDataEncoderBuilder.f35093e;
                        ((ValueEncoderContext) obj2).f(((Boolean) obj).booleanValue());
                        break;
                }
            }
        };
    }

    public JsonDataEncoderBuilder() {
        HashMap map = new HashMap();
        this.f35096a = map;
        HashMap map2 = new HashMap();
        this.f35097b = map2;
        this.f35098c = f35093e;
        this.d = false;
        map2.put(String.class, f35094f);
        map.remove(String.class);
        map2.put(Boolean.class, g);
        map.remove(Boolean.class);
        map2.put(Date.class, f35095h);
        map.remove(Date.class);
    }

    public final DataEncoder a() {
        return new DataEncoder() { // from class: com.google.firebase.encoders.json.JsonDataEncoderBuilder.1
            @Override // com.google.firebase.encoders.DataEncoder
            public final void a(Writer writer, Object obj) throws IOException {
                JsonDataEncoderBuilder jsonDataEncoderBuilder = JsonDataEncoderBuilder.this;
                JsonValueObjectEncoderContext jsonValueObjectEncoderContext = new JsonValueObjectEncoderContext(writer, jsonDataEncoderBuilder.f35096a, jsonDataEncoderBuilder.f35097b, jsonDataEncoderBuilder.f35098c, jsonDataEncoderBuilder.d);
                jsonValueObjectEncoderContext.g(obj);
                jsonValueObjectEncoderContext.i();
                jsonValueObjectEncoderContext.f35102b.flush();
            }

            @Override // com.google.firebase.encoders.DataEncoder
            public final String encode(Object obj) {
                StringWriter stringWriter = new StringWriter();
                try {
                    a(stringWriter, obj);
                } catch (IOException unused) {
                }
                return stringWriter.toString();
            }
        };
    }

    public final EncoderConfig b(Class cls, ObjectEncoder objectEncoder) {
        this.f35096a.put(cls, objectEncoder);
        this.f35097b.remove(cls);
        return this;
    }
}
