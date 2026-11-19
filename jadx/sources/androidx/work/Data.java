package androidx.work;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.az;
import defpackage.b21;
import defpackage.bp;
import defpackage.md;
import defpackage.n00;
import defpackage.pq0;
import defpackage.tg0;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KClass;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0002\t\nB\u0011\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0000¢\u0006\u0004\b\u0003\u0010\u0004B\u001b\b\u0010\u0012\u0010\u0010\u0007\u001a\f\u0012\u0004\u0012\u00020\u0006\u0012\u0002\b\u00030\u0005¢\u0006\u0004\b\u0003\u0010\b¨\u0006\u000b"}, d2 = {"Landroidx/work/Data;", "", "other", "<init>", "(Landroidx/work/Data;)V", "", "", "values", "(Ljava/util/Map;)V", "Builder", "Companion", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Data {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f20243b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Data f20244c = new Builder().a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f20245a;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/work/Data$Builder;", "", "<init>", "()V", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LinkedHashMap f20246a = new LinkedHashMap();

        public final Data a() {
            Data data = new Data(this.f20246a);
            Data.f20243b.getClass();
            Companion.c(data);
            return data;
        }

        public final void b(HashMap map) {
            Object[] objArr;
            map.getClass();
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                Object value = entry.getValue();
                str.getClass();
                if (value == null) {
                    value = null;
                } else {
                    Class<?> cls = value.getClass();
                    ReflectionFactory reflectionFactory = Reflection.f71922a;
                    KClass kClassB = reflectionFactory.b(cls);
                    if (!kClassB.equals(reflectionFactory.b(Boolean.TYPE)) && !kClassB.equals(reflectionFactory.b(Byte.TYPE)) && !kClassB.equals(reflectionFactory.b(Integer.TYPE)) && !kClassB.equals(reflectionFactory.b(Long.TYPE)) && !kClassB.equals(reflectionFactory.b(Float.TYPE)) && !kClassB.equals(reflectionFactory.b(Double.TYPE)) && !kClassB.equals(reflectionFactory.b(String.class)) && !kClassB.equals(reflectionFactory.b(Boolean[].class)) && !kClassB.equals(reflectionFactory.b(Byte[].class)) && !kClassB.equals(reflectionFactory.b(Integer[].class)) && !kClassB.equals(reflectionFactory.b(Long[].class)) && !kClassB.equals(reflectionFactory.b(Float[].class)) && !kClassB.equals(reflectionFactory.b(Double[].class)) && !kClassB.equals(reflectionFactory.b(String[].class))) {
                        int i2 = 0;
                        if (kClassB.equals(reflectionFactory.b(boolean[].class))) {
                            boolean[] zArr = (boolean[]) value;
                            int i3 = Data_Kt.f20247a;
                            int length = zArr.length;
                            objArr = new Boolean[length];
                            while (i2 < length) {
                                objArr[i2] = Boolean.valueOf(zArr[i2]);
                                i2++;
                            }
                        } else if (kClassB.equals(reflectionFactory.b(byte[].class))) {
                            byte[] bArr = (byte[]) value;
                            int i4 = Data_Kt.f20247a;
                            int length2 = bArr.length;
                            objArr = new Byte[length2];
                            while (i2 < length2) {
                                objArr[i2] = Byte.valueOf(bArr[i2]);
                                i2++;
                            }
                        } else if (kClassB.equals(reflectionFactory.b(int[].class))) {
                            int[] iArr = (int[]) value;
                            int i5 = Data_Kt.f20247a;
                            int length3 = iArr.length;
                            objArr = new Integer[length3];
                            while (i2 < length3) {
                                objArr[i2] = Integer.valueOf(iArr[i2]);
                                i2++;
                            }
                        } else if (kClassB.equals(reflectionFactory.b(long[].class))) {
                            long[] jArr = (long[]) value;
                            int i6 = Data_Kt.f20247a;
                            int length4 = jArr.length;
                            objArr = new Long[length4];
                            while (i2 < length4) {
                                objArr[i2] = Long.valueOf(jArr[i2]);
                                i2++;
                            }
                        } else if (kClassB.equals(reflectionFactory.b(float[].class))) {
                            float[] fArr = (float[]) value;
                            int i7 = Data_Kt.f20247a;
                            int length5 = fArr.length;
                            objArr = new Float[length5];
                            while (i2 < length5) {
                                objArr[i2] = Float.valueOf(fArr[i2]);
                                i2++;
                            }
                        } else {
                            if (!kClassB.equals(reflectionFactory.b(double[].class))) {
                                b21.s("Key ", str, " has invalid type ", kClassB);
                                return;
                            }
                            double[] dArr = (double[]) value;
                            int i8 = Data_Kt.f20247a;
                            int length6 = dArr.length;
                            objArr = new Double[length6];
                            while (i2 < length6) {
                                objArr[i2] = Double.valueOf(dArr[i2]);
                                i2++;
                            }
                        }
                        value = objArr;
                    }
                }
                this.f20246a.put(str, value);
            }
        }
    }

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0005\n\u0002\b\u0010\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\n\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0006X\u0087T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\nR\u0014\u0010\f\u001a\u00020\b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\nR\u0014\u0010\r\u001a\u00020\b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010\nR\u0014\u0010\u000e\u001a\u00020\b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000e\u0010\nR\u0014\u0010\u000f\u001a\u00020\b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000f\u0010\nR\u0014\u0010\u0010\u001a\u00020\b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0010\u0010\nR\u0014\u0010\u0011\u001a\u00020\b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0011\u0010\nR\u0014\u0010\u0012\u001a\u00020\b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0012\u0010\nR\u0014\u0010\u0013\u001a\u00020\b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0013\u0010\nR\u0014\u0010\u0014\u001a\u00020\b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0014\u0010\nR\u0014\u0010\u0015\u001a\u00020\b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0015\u0010\nR\u0014\u0010\u0016\u001a\u00020\b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0016\u0010\nR\u0014\u0010\u0017\u001a\u00020\b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0017\u0010\nR\u0014\u0010\u0018\u001a\u00020\b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0018\u0010\nR\u0014\u0010\u001a\u001a\u00020\u00198\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0014\u0010\u001d\u001a\u00020\u001c8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001f\u0010\u001e¨\u0006 "}, d2 = {"Landroidx/work/Data$Companion;", "", "Landroidx/work/Data;", "EMPTY", "Landroidx/work/Data;", "", "MAX_DATA_BYTES", "I", "", "TYPE_NULL", NBSSpanMetricUnit.Byte, "TYPE_BOOLEAN", "TYPE_BYTE", "TYPE_INTEGER", "TYPE_LONG", "TYPE_FLOAT", "TYPE_DOUBLE", "TYPE_STRING", "TYPE_BOOLEAN_ARRAY", "TYPE_BYTE_ARRAY", "TYPE_INTEGER_ARRAY", "TYPE_LONG_ARRAY", "TYPE_FLOAT_ARRAY", "TYPE_DOUBLE_ARRAY", "TYPE_STRING_ARRAY", "", "NULL_STRING_V1", "Ljava/lang/String;", "", "STREAM_MAGIC", "S", "STREAM_VERSION", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static Data a(byte[] bArr) {
            bArr.getClass();
            if (bArr.length > 10240) {
                md.k("Data cannot occupy more than 10240 bytes when serialized");
                return null;
            }
            if (bArr.length == 0) {
                return Data.f20244c;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            try {
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
                byte[] bArr2 = new byte[2];
                byteArrayInputStream.read(bArr2);
                int i2 = 0;
                boolean z = bArr2[0] == -84 && bArr2[1] == -19;
                byteArrayInputStream.reset();
                if (z) {
                    ObjectInputStream objectInputStream = new ObjectInputStream(byteArrayInputStream);
                    try {
                        int i3 = objectInputStream.readInt();
                        while (i2 < i3) {
                            linkedHashMap.put(objectInputStream.readUTF(), objectInputStream.readObject());
                            i2++;
                        }
                        objectInputStream.close();
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            CloseableKt.a(objectInputStream, th);
                            throw th2;
                        }
                    }
                } else {
                    DataInputStream dataInputStream = new DataInputStream(byteArrayInputStream);
                    try {
                        short s = dataInputStream.readShort();
                        if (s == -21521) {
                            short s2 = dataInputStream.readShort();
                            if (s2 != 1) {
                                tg0.c(pq0.k(s2, "Unsupported version number: "));
                            }
                        } else {
                            tg0.c(pq0.k(s, "Magic number doesn't match: "));
                        }
                        int i4 = dataInputStream.readInt();
                        while (i2 < i4) {
                            linkedHashMap.put(dataInputStream.readUTF(), b(dataInputStream, dataInputStream.readByte()));
                            i2++;
                        }
                        dataInputStream.close();
                    } catch (Throwable th3) {
                        try {
                            throw th3;
                        } catch (Throwable th4) {
                            CloseableKt.a(dataInputStream, th3);
                            throw th4;
                        }
                    }
                }
            } catch (IOException unused) {
                int i5 = Data_Kt.f20247a;
                Logger.a().getClass();
            } catch (ClassNotFoundException unused2) {
                int i6 = Data_Kt.f20247a;
                Logger.a().getClass();
            }
            return new Data(linkedHashMap);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.io.Serializable, java.lang.Double[]] */
        /* JADX WARN: Type inference failed for: r0v2, types: [java.io.Serializable, java.lang.Float[]] */
        /* JADX WARN: Type inference failed for: r0v3, types: [java.io.Serializable, java.lang.Long[]] */
        /* JADX WARN: Type inference failed for: r0v4, types: [java.io.Serializable, java.lang.Integer[]] */
        /* JADX WARN: Type inference failed for: r0v5, types: [java.io.Serializable, java.lang.Byte[]] */
        /* JADX WARN: Type inference failed for: r0v6, types: [java.io.Serializable, java.lang.Boolean[]] */
        /* JADX WARN: Type inference failed for: r1v14, types: [java.io.Serializable, java.lang.String[]] */
        public static final Serializable b(DataInputStream dataInputStream, byte b2) throws IOException {
            if (b2 == 0) {
                return null;
            }
            if (b2 == 1) {
                return Boolean.valueOf(dataInputStream.readBoolean());
            }
            if (b2 == 2) {
                return Byte.valueOf(dataInputStream.readByte());
            }
            if (b2 == 3) {
                return Integer.valueOf(dataInputStream.readInt());
            }
            if (b2 == 4) {
                return Long.valueOf(dataInputStream.readLong());
            }
            if (b2 == 5) {
                return Float.valueOf(dataInputStream.readFloat());
            }
            if (b2 == 6) {
                return Double.valueOf(dataInputStream.readDouble());
            }
            if (b2 == 7) {
                return dataInputStream.readUTF();
            }
            int i2 = 0;
            if (b2 == 8) {
                int i3 = dataInputStream.readInt();
                ?? r0 = new Boolean[i3];
                while (i2 < i3) {
                    r0[i2] = Boolean.valueOf(dataInputStream.readBoolean());
                    i2++;
                }
                return r0;
            }
            if (b2 == 9) {
                int i4 = dataInputStream.readInt();
                ?? r1 = new Byte[i4];
                while (i2 < i4) {
                    r1[i2] = Byte.valueOf(dataInputStream.readByte());
                    i2++;
                }
                return r1;
            }
            if (b2 == 10) {
                int i5 = dataInputStream.readInt();
                ?? r2 = new Integer[i5];
                while (i2 < i5) {
                    r2[i2] = Integer.valueOf(dataInputStream.readInt());
                    i2++;
                }
                return r2;
            }
            if (b2 == 11) {
                int i6 = dataInputStream.readInt();
                ?? r3 = new Long[i6];
                while (i2 < i6) {
                    r3[i2] = Long.valueOf(dataInputStream.readLong());
                    i2++;
                }
                return r3;
            }
            if (b2 == 12) {
                int i7 = dataInputStream.readInt();
                ?? r4 = new Float[i7];
                while (i2 < i7) {
                    r4[i2] = Float.valueOf(dataInputStream.readFloat());
                    i2++;
                }
                return r4;
            }
            if (b2 == 13) {
                int i8 = dataInputStream.readInt();
                ?? r5 = new Double[i8];
                while (i2 < i8) {
                    r5[i2] = Double.valueOf(dataInputStream.readDouble());
                    i2++;
                }
                return r5;
            }
            if (b2 != 14) {
                md.k(pq0.k(b2, "Unsupported type "));
                return null;
            }
            int i9 = dataInputStream.readInt();
            ?? r6 = new String[i9];
            while (i2 < i9) {
                String utf = dataInputStream.readUTF();
                if (Intrinsics.c(utf, "androidx.work.Data-95ed6082-b8e9-46e8-a73f-ff56f00f5d9d")) {
                    utf = null;
                }
                r6[i2] = utf;
                i2++;
            }
            return r6;
        }

        public static byte[] c(Data data) {
            data.getClass();
            HashMap map = data.f20245a;
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                try {
                    dataOutputStream.writeShort(-21521);
                    dataOutputStream.writeShort(1);
                    dataOutputStream.writeInt(map.size());
                    for (Map.Entry entry : map.entrySet()) {
                        d(dataOutputStream, (String) entry.getKey(), entry.getValue());
                    }
                    dataOutputStream.flush();
                    if (dataOutputStream.size() > 10240) {
                        throw new IllegalStateException("Data cannot occupy more than 10240 bytes when serialized");
                    }
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    dataOutputStream.close();
                    byteArray.getClass();
                    return byteArray;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        CloseableKt.a(dataOutputStream, th);
                        throw th2;
                    }
                }
            } catch (IOException unused) {
                int i2 = Data_Kt.f20247a;
                Logger.a().getClass();
                return new byte[0];
            }
        }

        public static final void d(DataOutputStream dataOutputStream, String str, Object obj) throws IOException {
            int i2;
            if (obj == null) {
                dataOutputStream.writeByte(0);
            } else if (obj instanceof Boolean) {
                dataOutputStream.writeByte(1);
                dataOutputStream.writeBoolean(((Boolean) obj).booleanValue());
            } else if (obj instanceof Byte) {
                dataOutputStream.writeByte(2);
                dataOutputStream.writeByte(((Number) obj).byteValue());
            } else if (obj instanceof Integer) {
                dataOutputStream.writeByte(3);
                dataOutputStream.writeInt(((Number) obj).intValue());
            } else if (obj instanceof Long) {
                dataOutputStream.writeByte(4);
                dataOutputStream.writeLong(((Number) obj).longValue());
            } else if (obj instanceof Float) {
                dataOutputStream.writeByte(5);
                dataOutputStream.writeFloat(((Number) obj).floatValue());
            } else if (obj instanceof Double) {
                dataOutputStream.writeByte(6);
                dataOutputStream.writeDouble(((Number) obj).doubleValue());
            } else if (obj instanceof String) {
                dataOutputStream.writeByte(7);
                dataOutputStream.writeUTF((String) obj);
            } else {
                if (!(obj instanceof Object[])) {
                    az.w(Reflection.f71922a.b(obj.getClass()).B(), "Unsupported value type ");
                    return;
                }
                Object[] objArr = (Object[]) obj;
                Class<?> cls = objArr.getClass();
                ReflectionFactory reflectionFactory = Reflection.f71922a;
                KClass kClassB = reflectionFactory.b(cls);
                if (kClassB.equals(reflectionFactory.b(Boolean[].class))) {
                    i2 = 8;
                } else if (kClassB.equals(reflectionFactory.b(Byte[].class))) {
                    i2 = 9;
                } else if (kClassB.equals(reflectionFactory.b(Integer[].class))) {
                    i2 = 10;
                } else if (kClassB.equals(reflectionFactory.b(Long[].class))) {
                    i2 = 11;
                } else if (kClassB.equals(reflectionFactory.b(Float[].class))) {
                    i2 = 12;
                } else if (kClassB.equals(reflectionFactory.b(Double[].class))) {
                    i2 = 13;
                } else {
                    if (!kClassB.equals(reflectionFactory.b(String[].class))) {
                        az.w(reflectionFactory.b(objArr.getClass()).w(), "Unsupported value type ");
                        return;
                    }
                    i2 = 14;
                }
                dataOutputStream.writeByte(i2);
                dataOutputStream.writeInt(objArr.length);
                for (Object obj2 : objArr) {
                    if (i2 == 8) {
                        Boolean bool = obj2 instanceof Boolean ? (Boolean) obj2 : null;
                        dataOutputStream.writeBoolean(bool != null ? bool.booleanValue() : false);
                    } else if (i2 == 9) {
                        Byte b2 = obj2 instanceof Byte ? (Byte) obj2 : null;
                        dataOutputStream.writeByte(b2 != null ? b2.byteValue() : (byte) 0);
                    } else if (i2 == 10) {
                        Integer num = obj2 instanceof Integer ? (Integer) obj2 : null;
                        dataOutputStream.writeInt(num != null ? num.intValue() : 0);
                    } else if (i2 == 11) {
                        Long l = obj2 instanceof Long ? (Long) obj2 : null;
                        dataOutputStream.writeLong(l != null ? l.longValue() : 0L);
                    } else if (i2 == 12) {
                        Float f2 = obj2 instanceof Float ? (Float) obj2 : null;
                        dataOutputStream.writeFloat(f2 != null ? f2.floatValue() : Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    } else if (i2 == 13) {
                        Double d = obj2 instanceof Double ? (Double) obj2 : null;
                        dataOutputStream.writeDouble(d != null ? d.doubleValue() : 0.0d);
                    } else if (i2 == 14) {
                        String str2 = obj2 instanceof String ? (String) obj2 : null;
                        if (str2 == null) {
                            str2 = "androidx.work.Data-95ed6082-b8e9-46e8-a73f-ff56f00f5d9d";
                        }
                        dataOutputStream.writeUTF(str2);
                    }
                }
            }
            dataOutputStream.writeUTF(str);
        }
    }

    public Data(Data data) {
        data.getClass();
        this.f20245a = new HashMap(data.f20245a);
    }

    public final boolean a(String str) {
        Object obj = this.f20245a.get(str);
        return obj != null && String.class.isAssignableFrom(obj.getClass());
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0059  */
    public final boolean equals(Object obj) {
        boolean zEquals;
        if (this != obj) {
            if (obj != null && Data.class.equals(obj.getClass())) {
                HashMap map = ((Data) obj).f20245a;
                HashMap map2 = this.f20245a;
                Set<String> setKeySet = map2.keySet();
                if (Intrinsics.c(setKeySet, map.keySet())) {
                    for (String str : setKeySet) {
                        Object obj2 = map2.get(str);
                        Object obj3 = map.get(str);
                        if (obj2 == null || obj3 == null) {
                            zEquals = obj2 == obj3;
                        } else if (obj2 instanceof Object[]) {
                            Object[] objArr = (Object[]) obj2;
                            if (obj3 instanceof Object[]) {
                                zEquals = ArraysKt.h(objArr, (Object[]) obj3);
                            } else {
                                zEquals = obj2.equals(obj3);
                            }
                        } else {
                            zEquals = obj2.equals(obj3);
                        }
                        if (!zEquals) {
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int iHashCode = 0;
        for (Map.Entry entry : this.f20245a.entrySet()) {
            Object value = entry.getValue();
            iHashCode += value instanceof Object[] ? Objects.hashCode(entry.getKey()) ^ Arrays.deepHashCode((Object[]) value) : entry.hashCode();
        }
        return iHashCode * 31;
    }

    public final String toString() {
        return n00.r(CollectionsKt.K(this.f20245a.entrySet(), null, null, null, new bp(8), 31), "}", new StringBuilder("Data {"));
    }

    public Data(Map<String, ?> map) {
        map.getClass();
        this.f20245a = new HashMap(map);
    }
}
