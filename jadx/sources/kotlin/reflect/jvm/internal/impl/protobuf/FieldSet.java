package kotlin.reflect.jvm.internal.impl.protobuf;

import defpackage.md;
import defpackage.r81;
import defpackage.v7;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.reflect.jvm.internal.impl.protobuf.FieldSet.FieldDescriptorLite;

/* JADX INFO: loaded from: classes4.dex */
final class FieldSet<FieldDescriptorType extends FieldDescriptorLite<FieldDescriptorType>> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final FieldSet f73725c = new FieldSet(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SmallSortedMap.AnonymousClass1 f73726a = new SmallSortedMap.AnonymousClass1(16);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f73727b;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.protobuf.FieldSet$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f73728a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f73729b;

        static {
            int[] iArr = new int[WireFormat$FieldType.values().length];
            f73729b = iArr;
            try {
                iArr[WireFormat$FieldType.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f73729b[WireFormat$FieldType.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f73729b[WireFormat$FieldType.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f73729b[WireFormat$FieldType.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f73729b[WireFormat$FieldType.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f73729b[WireFormat$FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f73729b[WireFormat$FieldType.FIXED32.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f73729b[WireFormat$FieldType.BOOL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f73729b[WireFormat$FieldType.STRING.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f73729b[WireFormat$FieldType.BYTES.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f73729b[WireFormat$FieldType.UINT32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f73729b[WireFormat$FieldType.SFIXED32.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f73729b[WireFormat$FieldType.SFIXED64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f73729b[WireFormat$FieldType.SINT32.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f73729b[WireFormat$FieldType.SINT64.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f73729b[WireFormat$FieldType.GROUP.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f73729b[WireFormat$FieldType.MESSAGE.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f73729b[WireFormat$FieldType.ENUM.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            int[] iArr2 = new int[WireFormat$JavaType.values().length];
            f73728a = iArr2;
            try {
                iArr2[WireFormat$JavaType.INT.ordinal()] = 1;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f73728a[WireFormat$JavaType.LONG.ordinal()] = 2;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f73728a[WireFormat$JavaType.FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f73728a[WireFormat$JavaType.DOUBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f73728a[WireFormat$JavaType.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f73728a[WireFormat$JavaType.STRING.ordinal()] = 6;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f73728a[WireFormat$JavaType.BYTE_STRING.ordinal()] = 7;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f73728a[WireFormat$JavaType.ENUM.ordinal()] = 8;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f73728a[WireFormat$JavaType.MESSAGE.ordinal()] = 9;
            } catch (NoSuchFieldError unused27) {
            }
        }
    }

    public interface FieldDescriptorLite<T extends FieldDescriptorLite<T>> extends Comparable<T> {
        GeneratedMessageLite.Builder I0(MessageLite.Builder builder, MessageLite messageLite);

        int m();

        boolean n();

        WireFormat$FieldType o();

        WireFormat$JavaType p();

        boolean q();
    }

    public FieldSet(int i2) {
        f();
    }

    public static int c(WireFormat$FieldType wireFormat$FieldType, Object obj) {
        switch (AnonymousClass1.f73729b[wireFormat$FieldType.ordinal()]) {
            case 1:
                ((Double) obj).getClass();
                return 8;
            case 2:
                ((Float) obj).getClass();
                return 4;
            case 3:
                return CodedOutputStream.g(((Long) obj).longValue());
            case 4:
                return CodedOutputStream.g(((Long) obj).longValue());
            case 5:
                return CodedOutputStream.c(((Integer) obj).intValue());
            case 6:
                ((Long) obj).getClass();
                return 8;
            case 7:
                ((Integer) obj).getClass();
                return 4;
            case 8:
                ((Boolean) obj).getClass();
                return 1;
            case 9:
                try {
                    byte[] bytes = ((String) obj).getBytes("UTF-8");
                    return CodedOutputStream.f(bytes.length) + bytes.length;
                } catch (UnsupportedEncodingException e2) {
                    r81.g("UTF-8 not supported.", e2);
                    return 0;
                }
            case 10:
                if (obj instanceof ByteString) {
                    ByteString byteString = (ByteString) obj;
                    return byteString.size() + CodedOutputStream.f(byteString.size());
                }
                byte[] bArr = (byte[]) obj;
                return CodedOutputStream.f(bArr.length) + bArr.length;
            case 11:
                return CodedOutputStream.f(((Integer) obj).intValue());
            case 12:
                ((Integer) obj).getClass();
                return 4;
            case 13:
                ((Long) obj).getClass();
                return 8;
            case 14:
                int iIntValue = ((Integer) obj).intValue();
                return CodedOutputStream.f((iIntValue >> 31) ^ (iIntValue << 1));
            case 15:
                long jLongValue = ((Long) obj).longValue();
                return CodedOutputStream.g((jLongValue >> 63) ^ (jLongValue << 1));
            case 16:
                return ((MessageLite) obj).c();
            case 17:
                return CodedOutputStream.e((MessageLite) obj);
            case 18:
                return obj instanceof Internal.EnumLite ? CodedOutputStream.c(((Internal.EnumLite) obj).m()) : CodedOutputStream.c(((Integer) obj).intValue());
            default:
                v7.h("There is no way to get here, but the compiler thinks otherwise.");
                return 0;
        }
    }

    public static int d(FieldDescriptorLite fieldDescriptorLite, Object obj) {
        WireFormat$FieldType wireFormat$FieldTypeO = fieldDescriptorLite.o();
        int iM = fieldDescriptorLite.m();
        if (!fieldDescriptorLite.n()) {
            int iH = CodedOutputStream.h(iM);
            if (wireFormat$FieldTypeO == WireFormat$FieldType.GROUP) {
                iH *= 2;
            }
            return iH + c(wireFormat$FieldTypeO, obj);
        }
        int iC = 0;
        if (fieldDescriptorLite.q()) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                iC += c(wireFormat$FieldTypeO, it.next());
            }
            return CodedOutputStream.f(iC) + CodedOutputStream.h(iM) + iC;
        }
        for (Object obj2 : (List) obj) {
            int iH2 = CodedOutputStream.h(iM);
            if (wireFormat$FieldTypeO == WireFormat$FieldType.GROUP) {
                iH2 *= 2;
            }
            iC += iH2 + c(wireFormat$FieldTypeO, obj2);
        }
        return iC;
    }

    public static boolean e(Map.Entry entry) {
        FieldDescriptorLite fieldDescriptorLite = (FieldDescriptorLite) entry.getKey();
        if (fieldDescriptorLite.p() != WireFormat$JavaType.MESSAGE) {
            return true;
        }
        if (fieldDescriptorLite.n()) {
            Iterator it = ((List) entry.getValue()).iterator();
            while (it.hasNext()) {
                if (!((MessageLite) it.next()).a()) {
                }
            }
            return true;
        }
        Object value = entry.getValue();
        if (!(value instanceof MessageLite)) {
            md.n("Wrong object type used with protocol message reflection.");
            return false;
        }
        if (((MessageLite) value).a()) {
            return true;
        }
        return false;
    }

    public static Object h(CodedInputStream codedInputStream, WireFormat$FieldType wireFormat$FieldType) throws IOException {
        switch (AnonymousClass1.f73729b[wireFormat$FieldType.ordinal()]) {
            case 1:
                return Double.valueOf(Double.longBitsToDouble(codedInputStream.k()));
            case 2:
                return Float.valueOf(Float.intBitsToFloat(codedInputStream.j()));
            case 3:
                return Long.valueOf(codedInputStream.m());
            case 4:
                return Long.valueOf(codedInputStream.m());
            case 5:
                return Integer.valueOf(codedInputStream.l());
            case 6:
                return Long.valueOf(codedInputStream.k());
            case 7:
                return Integer.valueOf(codedInputStream.j());
            case 8:
                return Boolean.valueOf(codedInputStream.m() != 0);
            case 9:
                int iL = codedInputStream.l();
                int i2 = codedInputStream.f73712b;
                int i3 = codedInputStream.d;
                if (iL > i2 - i3 || iL <= 0) {
                    return iL == 0 ? "" : new String(codedInputStream.i(iL), "UTF-8");
                }
                String str = new String(codedInputStream.f73711a, i3, iL, "UTF-8");
                codedInputStream.d += iL;
                return str;
            case 10:
                return codedInputStream.f();
            case 11:
                return Integer.valueOf(codedInputStream.l());
            case 12:
                return Integer.valueOf(codedInputStream.j());
            case 13:
                return Long.valueOf(codedInputStream.k());
            case 14:
                int iL2 = codedInputStream.l();
                return Integer.valueOf((-(iL2 & 1)) ^ (iL2 >>> 1));
            case 15:
                long jM = codedInputStream.m();
                return Long.valueOf((-(jM & 1)) ^ (jM >>> 1));
            case 16:
                md.n("readPrimitiveField() cannot handle nested groups.");
                return null;
            case 17:
                md.n("readPrimitiveField() cannot handle embedded messages.");
                return null;
            case 18:
                md.n("readPrimitiveField() cannot handle enums.");
                return null;
            default:
                v7.h("There is no way to get here, but the compiler thinks otherwise.");
                return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0021  */
    public static void j(WireFormat$FieldType wireFormat$FieldType, Object obj) {
        obj.getClass();
        boolean z = true;
        boolean z2 = false;
        switch (AnonymousClass1.f73728a[wireFormat$FieldType.a().ordinal()]) {
            case 1:
                z2 = obj instanceof Integer;
                break;
            case 2:
                z2 = obj instanceof Long;
                break;
            case 3:
                z2 = obj instanceof Float;
                break;
            case 4:
                z2 = obj instanceof Double;
                break;
            case 5:
                z2 = obj instanceof Boolean;
                break;
            case 6:
                z2 = obj instanceof String;
                break;
            case 7:
                if (!(obj instanceof ByteString) && !(obj instanceof byte[])) {
                    z = false;
                }
                z2 = z;
                break;
            case 8:
                if (!(obj instanceof Integer) && !(obj instanceof Internal.EnumLite)) {
                    z = false;
                }
                z2 = z;
                break;
            case 9:
                z2 = obj instanceof MessageLite;
                break;
        }
        if (z2) {
            return;
        }
        md.n("Wrong object type used with protocol message reflection.");
    }

    public static void k(CodedOutputStream codedOutputStream, WireFormat$FieldType wireFormat$FieldType, Object obj) throws IOException {
        switch (AnonymousClass1.f73729b[wireFormat$FieldType.ordinal()]) {
            case 1:
                double dDoubleValue = ((Double) obj).doubleValue();
                codedOutputStream.getClass();
                codedOutputStream.u(Double.doubleToRawLongBits(dDoubleValue));
                break;
            case 2:
                float fFloatValue = ((Float) obj).floatValue();
                codedOutputStream.getClass();
                codedOutputStream.t(Float.floatToRawIntBits(fFloatValue));
                break;
            case 3:
                codedOutputStream.w(((Long) obj).longValue());
                break;
            case 4:
                codedOutputStream.w(((Long) obj).longValue());
                break;
            case 5:
                codedOutputStream.n(((Integer) obj).intValue());
                break;
            case 6:
                codedOutputStream.u(((Long) obj).longValue());
                break;
            case 7:
                codedOutputStream.t(((Integer) obj).intValue());
                break;
            case 8:
                codedOutputStream.q(((Boolean) obj).booleanValue() ? 1 : 0);
                break;
            case 9:
                codedOutputStream.getClass();
                byte[] bytes = ((String) obj).getBytes("UTF-8");
                codedOutputStream.v(bytes.length);
                codedOutputStream.s(bytes);
                break;
            case 10:
                if (!(obj instanceof ByteString)) {
                    byte[] bArr = (byte[]) obj;
                    codedOutputStream.getClass();
                    codedOutputStream.v(bArr.length);
                    codedOutputStream.s(bArr);
                } else {
                    ByteString byteString = (ByteString) obj;
                    codedOutputStream.getClass();
                    codedOutputStream.v(byteString.size());
                    codedOutputStream.r(byteString);
                }
                break;
            case 11:
                codedOutputStream.v(((Integer) obj).intValue());
                break;
            case 12:
                codedOutputStream.t(((Integer) obj).intValue());
                break;
            case 13:
                codedOutputStream.u(((Long) obj).longValue());
                break;
            case 14:
                int iIntValue = ((Integer) obj).intValue();
                codedOutputStream.v((iIntValue >> 31) ^ (iIntValue << 1));
                break;
            case 15:
                long jLongValue = ((Long) obj).longValue();
                codedOutputStream.w((jLongValue >> 63) ^ (jLongValue << 1));
                break;
            case 16:
                codedOutputStream.getClass();
                ((MessageLite) obj).e(codedOutputStream);
                break;
            case 17:
                codedOutputStream.p((MessageLite) obj);
                break;
            case 18:
                if (!(obj instanceof Internal.EnumLite)) {
                    codedOutputStream.n(((Integer) obj).intValue());
                } else {
                    codedOutputStream.n(((Internal.EnumLite) obj).m());
                }
                break;
        }
    }

    public final void a(FieldDescriptorLite fieldDescriptorLite, Object obj) {
        List arrayList;
        if (!((GeneratedMessageLite.ExtensionDescriptor) fieldDescriptorLite).d) {
            md.n("addRepeatedField() can only be called on repeated fields.");
            return;
        }
        j(((GeneratedMessageLite.ExtensionDescriptor) fieldDescriptorLite).f73737c, obj);
        SmallSortedMap.AnonymousClass1 anonymousClass1 = this.f73726a;
        Object obj2 = anonymousClass1.get(fieldDescriptorLite);
        if (obj2 == null) {
            arrayList = new ArrayList();
            anonymousClass1.f(fieldDescriptorLite, arrayList);
        } else {
            arrayList = (List) obj2;
        }
        arrayList.add(obj);
    }

    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final FieldSet clone() {
        SmallSortedMap.AnonymousClass1 anonymousClass1;
        FieldSet fieldSet = new FieldSet();
        int i2 = 0;
        while (true) {
            anonymousClass1 = this.f73726a;
            if (i2 >= anonymousClass1.f73760c.size()) {
                break;
            }
            Map.Entry entry = (Map.Entry) anonymousClass1.f73760c.get(i2);
            fieldSet.i((FieldDescriptorLite) entry.getKey(), entry.getValue());
            i2++;
        }
        for (Map.Entry entry2 : anonymousClass1.d()) {
            fieldSet.i((FieldDescriptorLite) entry2.getKey(), entry2.getValue());
        }
        return fieldSet;
    }

    public final void f() {
        if (this.f73727b) {
            return;
        }
        SmallSortedMap.AnonymousClass1 anonymousClass1 = this.f73726a;
        if (!anonymousClass1.f73761e) {
            for (int i2 = 0; i2 < anonymousClass1.f73760c.size(); i2++) {
                Map.Entry entry = (Map.Entry) anonymousClass1.f73760c.get(i2);
                if (((FieldDescriptorLite) entry.getKey()).n()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
            for (Map.Entry entry2 : anonymousClass1.d()) {
                if (((FieldDescriptorLite) entry2.getKey()).n()) {
                    entry2.setValue(Collections.unmodifiableList((List) entry2.getValue()));
                }
            }
        }
        if (!anonymousClass1.f73761e) {
            anonymousClass1.d = anonymousClass1.d.isEmpty() ? Collections.EMPTY_MAP : Collections.unmodifiableMap(anonymousClass1.d);
            anonymousClass1.f73761e = true;
        }
        this.f73727b = true;
    }

    public final void g(Map.Entry entry) {
        FieldDescriptorLite fieldDescriptorLite = (FieldDescriptorLite) entry.getKey();
        Object value = entry.getValue();
        boolean zN = fieldDescriptorLite.n();
        SmallSortedMap.AnonymousClass1 anonymousClass1 = this.f73726a;
        if (zN) {
            Object arrayList = anonymousClass1.get(fieldDescriptorLite);
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            for (Object obj : (List) value) {
                List list = (List) arrayList;
                if (obj instanceof byte[]) {
                    byte[] bArr = (byte[]) obj;
                    byte[] bArr2 = new byte[bArr.length];
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    obj = bArr2;
                }
                list.add(obj);
            }
            anonymousClass1.f(fieldDescriptorLite, arrayList);
            return;
        }
        if (fieldDescriptorLite.p() != WireFormat$JavaType.MESSAGE) {
            if (value instanceof byte[]) {
                byte[] bArr3 = (byte[]) value;
                byte[] bArr4 = new byte[bArr3.length];
                System.arraycopy(bArr3, 0, bArr4, 0, bArr3.length);
                value = bArr4;
            }
            anonymousClass1.f(fieldDescriptorLite, value);
            return;
        }
        Object obj2 = anonymousClass1.get(fieldDescriptorLite);
        if (obj2 != null) {
            anonymousClass1.f(fieldDescriptorLite, fieldDescriptorLite.I0(((MessageLite) obj2).b(), (MessageLite) value).build());
            return;
        }
        if (value instanceof byte[]) {
            byte[] bArr5 = (byte[]) value;
            byte[] bArr6 = new byte[bArr5.length];
            System.arraycopy(bArr5, 0, bArr6, 0, bArr5.length);
            value = bArr6;
        }
        anonymousClass1.f(fieldDescriptorLite, value);
    }

    public final void i(FieldDescriptorLite fieldDescriptorLite, Object obj) {
        if (!fieldDescriptorLite.n()) {
            j(fieldDescriptorLite.o(), obj);
        } else {
            if (!(obj instanceof List)) {
                md.n("Wrong object type used with protocol message reflection.");
                return;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                j(fieldDescriptorLite.o(), it.next());
            }
            obj = arrayList;
        }
        this.f73726a.f(fieldDescriptorLite, obj);
    }

    public FieldSet() {
    }
}
