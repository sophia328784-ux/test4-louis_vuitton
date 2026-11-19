package com.google.firebase.encoders.proto;

import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.ValueEncoder;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.annotation.Annotation;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes2.dex */
final class ProtobufDataEncoderContext implements ObjectEncoderContext {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Charset f35110f = Charset.forName("UTF-8");
    public static final FieldDescriptor g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final FieldDescriptor f35111h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a f35112i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public OutputStream f35113a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f35114b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f35115c;
    public final ObjectEncoder d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ProtobufValueEncoderContext f35116e = new ProtobufValueEncoderContext(this);

    /* JADX INFO: renamed from: com.google.firebase.encoders.proto.ProtobufDataEncoderContext$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f35117a;

        static {
            int[] iArr = new int[Protobuf.IntEncoding.values().length];
            f35117a = iArr;
            try {
                iArr[Protobuf.IntEncoding.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f35117a[Protobuf.IntEncoding.SIGNED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f35117a[Protobuf.IntEncoding.FIXED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder(ConfigurationName.KEY);
        AtProtobuf atProtobuf = new AtProtobuf();
        atProtobuf.f35106a = 1;
        g = defpackage.a.g(atProtobuf, builder);
        FieldDescriptor.Builder builder2 = new FieldDescriptor.Builder("value");
        AtProtobuf atProtobuf2 = new AtProtobuf();
        atProtobuf2.f35106a = 2;
        f35111h = defpackage.a.g(atProtobuf2, builder2);
        f35112i = new a();
    }

    public ProtobufDataEncoderContext(ByteArrayOutputStream byteArrayOutputStream, HashMap map, HashMap map2, ObjectEncoder objectEncoder) {
        this.f35113a = byteArrayOutputStream;
        this.f35114b = map;
        this.f35115c = map2;
        this.d = objectEncoder;
    }

    public static int k(FieldDescriptor fieldDescriptor) {
        Protobuf protobuf = (Protobuf) ((Annotation) fieldDescriptor.f35090b.get(Protobuf.class));
        if (protobuf != null) {
            return protobuf.tag();
        }
        throw new EncodingException("Field has no @Protobuf config");
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final ObjectEncoderContext a(FieldDescriptor fieldDescriptor, boolean z) {
        g(fieldDescriptor, z ? 1 : 0, true);
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final ObjectEncoderContext b(FieldDescriptor fieldDescriptor, long j2) throws IOException {
        h(fieldDescriptor, j2, true);
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final ObjectEncoderContext c(FieldDescriptor fieldDescriptor, int i2) {
        g(fieldDescriptor, i2, true);
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final ObjectEncoderContext d(FieldDescriptor fieldDescriptor, double d) throws IOException {
        f(fieldDescriptor, d, true);
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final ObjectEncoderContext e(FieldDescriptor fieldDescriptor, Object obj) {
        i(fieldDescriptor, obj, true);
        return this;
    }

    public final void f(FieldDescriptor fieldDescriptor, double d, boolean z) throws IOException {
        if (z && d == 0.0d) {
            return;
        }
        l((k(fieldDescriptor) << 3) | 1);
        this.f35113a.write(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putDouble(d).array());
    }

    public final void g(FieldDescriptor fieldDescriptor, int i2, boolean z) {
        if (z && i2 == 0) {
            return;
        }
        Protobuf protobuf = (Protobuf) ((Annotation) fieldDescriptor.f35090b.get(Protobuf.class));
        if (protobuf == null) {
            throw new EncodingException("Field has no @Protobuf config");
        }
        int i3 = AnonymousClass1.f35117a[protobuf.intEncoding().ordinal()];
        if (i3 == 1) {
            l(protobuf.tag() << 3);
            l(i2);
        } else if (i3 == 2) {
            l(protobuf.tag() << 3);
            l((i2 << 1) ^ (i2 >> 31));
        } else {
            if (i3 != 3) {
                return;
            }
            l((protobuf.tag() << 3) | 5);
            this.f35113a.write(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putInt(i2).array());
        }
    }

    public final void h(FieldDescriptor fieldDescriptor, long j2, boolean z) throws IOException {
        if (z && j2 == 0) {
            return;
        }
        Protobuf protobuf = (Protobuf) ((Annotation) fieldDescriptor.f35090b.get(Protobuf.class));
        if (protobuf == null) {
            throw new EncodingException("Field has no @Protobuf config");
        }
        int i2 = AnonymousClass1.f35117a[protobuf.intEncoding().ordinal()];
        if (i2 == 1) {
            l(protobuf.tag() << 3);
            m(j2);
        } else if (i2 == 2) {
            l(protobuf.tag() << 3);
            m((j2 >> 63) ^ (j2 << 1));
        } else {
            if (i2 != 3) {
                return;
            }
            l((protobuf.tag() << 3) | 1);
            this.f35113a.write(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(j2).array());
        }
    }

    public final void i(FieldDescriptor fieldDescriptor, Object obj, boolean z) {
        if (obj == null) {
            return;
        }
        if (obj instanceof CharSequence) {
            CharSequence charSequence = (CharSequence) obj;
            if (z && charSequence.length() == 0) {
                return;
            }
            l((k(fieldDescriptor) << 3) | 2);
            byte[] bytes = charSequence.toString().getBytes(f35110f);
            l(bytes.length);
            this.f35113a.write(bytes);
            return;
        }
        if (obj instanceof Collection) {
            Iterator it = ((Collection) obj).iterator();
            while (it.hasNext()) {
                i(fieldDescriptor, it.next(), false);
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                j(f35112i, fieldDescriptor, (Map.Entry) it2.next(), false);
            }
            return;
        }
        if (obj instanceof Double) {
            f(fieldDescriptor, ((Double) obj).doubleValue(), z);
            return;
        }
        if (obj instanceof Float) {
            float fFloatValue = ((Float) obj).floatValue();
            if (z && fFloatValue == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                return;
            }
            l((k(fieldDescriptor) << 3) | 5);
            this.f35113a.write(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putFloat(fFloatValue).array());
            return;
        }
        if (obj instanceof Number) {
            h(fieldDescriptor, ((Number) obj).longValue(), z);
            return;
        }
        if (obj instanceof Boolean) {
            g(fieldDescriptor, ((Boolean) obj).booleanValue() ? 1 : 0, z);
            return;
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            if (z && bArr.length == 0) {
                return;
            }
            l((k(fieldDescriptor) << 3) | 2);
            l(bArr.length);
            this.f35113a.write(bArr);
            return;
        }
        ObjectEncoder objectEncoder = (ObjectEncoder) this.f35114b.get(obj.getClass());
        if (objectEncoder != null) {
            j(objectEncoder, fieldDescriptor, obj, z);
            return;
        }
        ValueEncoder valueEncoder = (ValueEncoder) this.f35115c.get(obj.getClass());
        if (valueEncoder != null) {
            ProtobufValueEncoderContext protobufValueEncoderContext = this.f35116e;
            protobufValueEncoderContext.f35124a = false;
            protobufValueEncoderContext.f35126c = fieldDescriptor;
            protobufValueEncoderContext.f35125b = z;
            valueEncoder.a(obj, protobufValueEncoderContext);
            return;
        }
        if (obj instanceof ProtoEnum) {
            g(fieldDescriptor, ((ProtoEnum) obj).m(), true);
        } else if (obj instanceof Enum) {
            g(fieldDescriptor, ((Enum) obj).ordinal(), true);
        } else {
            j(this.d, fieldDescriptor, obj, z);
        }
    }

    public final void j(ObjectEncoder objectEncoder, FieldDescriptor fieldDescriptor, Object obj, boolean z) throws IOException {
        LengthCountingOutputStream lengthCountingOutputStream = new LengthCountingOutputStream();
        lengthCountingOutputStream.f35109b = 0L;
        try {
            OutputStream outputStream = this.f35113a;
            this.f35113a = lengthCountingOutputStream;
            try {
                objectEncoder.a(obj, this);
                this.f35113a = outputStream;
                long j2 = lengthCountingOutputStream.f35109b;
                lengthCountingOutputStream.close();
                if (z && j2 == 0) {
                    return;
                }
                l((k(fieldDescriptor) << 3) | 2);
                m(j2);
                objectEncoder.a(obj, this);
            } catch (Throwable th) {
                this.f35113a = outputStream;
                throw th;
            }
        } catch (Throwable th2) {
            try {
                lengthCountingOutputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public final void l(int i2) throws IOException {
        while (true) {
            long j2 = i2 & (-128);
            OutputStream outputStream = this.f35113a;
            if (j2 == 0) {
                outputStream.write(i2 & CertificateBody.profileType);
                return;
            } else {
                outputStream.write((i2 & CertificateBody.profileType) | 128);
                i2 >>>= 7;
            }
        }
    }

    public final void m(long j2) throws IOException {
        while (true) {
            long j3 = (-128) & j2;
            OutputStream outputStream = this.f35113a;
            if (j3 == 0) {
                outputStream.write(((int) j2) & CertificateBody.profileType);
                return;
            } else {
                outputStream.write((((int) j2) & CertificateBody.profileType) | 128);
                j2 >>>= 7;
            }
        }
    }
}
