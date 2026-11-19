package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.FieldSet.FieldDescriptorLite;
import defpackage.d20;
import defpackage.md;
import defpackage.v7;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
final class FieldSet<T extends FieldDescriptorLite<T>> {
    public static final FieldSet d = new FieldSet(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SmallSortedMap.AnonymousClass1 f12936a = SmallSortedMap.g();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f12937b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f12938c;

    /* JADX INFO: renamed from: androidx.datastore.preferences.protobuf.FieldSet$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f12939a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f12940b;

        static {
            int[] iArr = new int[WireFormat$FieldType.values().length];
            f12940b = iArr;
            try {
                iArr[WireFormat$FieldType.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12940b[WireFormat$FieldType.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12940b[WireFormat$FieldType.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12940b[WireFormat$FieldType.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f12940b[WireFormat$FieldType.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f12940b[WireFormat$FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f12940b[WireFormat$FieldType.FIXED32.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f12940b[WireFormat$FieldType.BOOL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f12940b[WireFormat$FieldType.GROUP.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f12940b[WireFormat$FieldType.MESSAGE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f12940b[WireFormat$FieldType.STRING.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f12940b[WireFormat$FieldType.BYTES.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f12940b[WireFormat$FieldType.UINT32.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f12940b[WireFormat$FieldType.SFIXED32.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f12940b[WireFormat$FieldType.SFIXED64.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f12940b[WireFormat$FieldType.SINT32.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f12940b[WireFormat$FieldType.SINT64.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f12940b[WireFormat$FieldType.ENUM.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            int[] iArr2 = new int[WireFormat$JavaType.values().length];
            f12939a = iArr2;
            try {
                iArr2[WireFormat$JavaType.INT.ordinal()] = 1;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f12939a[WireFormat$JavaType.LONG.ordinal()] = 2;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f12939a[WireFormat$JavaType.FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f12939a[WireFormat$JavaType.DOUBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f12939a[WireFormat$JavaType.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f12939a[WireFormat$JavaType.STRING.ordinal()] = 6;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f12939a[WireFormat$JavaType.BYTE_STRING.ordinal()] = 7;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f12939a[WireFormat$JavaType.ENUM.ordinal()] = 8;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f12939a[WireFormat$JavaType.MESSAGE.ordinal()] = 9;
            } catch (NoSuchFieldError unused27) {
            }
        }
    }

    public interface FieldDescriptorLite<T extends FieldDescriptorLite<T>> extends Comparable<T> {
        int m();

        boolean n();

        WireFormat$FieldType o();

        WireFormat$JavaType p();

        boolean q();

        MessageLite.Builder t();
    }

    public FieldSet(int i2) {
        j();
        j();
    }

    public static int b(WireFormat$FieldType wireFormat$FieldType, int i2, Object obj) {
        int iE = CodedOutputStream.e(i2);
        if (wireFormat$FieldType == WireFormat$FieldType.GROUP) {
            iE *= 2;
        }
        return iE + c(wireFormat$FieldType, obj);
    }

    public static int c(WireFormat$FieldType wireFormat$FieldType, Object obj) {
        int iC;
        int iF;
        switch (AnonymousClass1.f12940b[wireFormat$FieldType.ordinal()]) {
            case 1:
                ((Double) obj).getClass();
                Logger logger = CodedOutputStream.f12920b;
                return 8;
            case 2:
                ((Float) obj).getClass();
                Logger logger2 = CodedOutputStream.f12920b;
                return 4;
            case 3:
                return CodedOutputStream.g(((Long) obj).longValue());
            case 4:
                return CodedOutputStream.g(((Long) obj).longValue());
            case 5:
                return CodedOutputStream.g(((Integer) obj).intValue());
            case 6:
                ((Long) obj).getClass();
                Logger logger3 = CodedOutputStream.f12920b;
                return 8;
            case 7:
                ((Integer) obj).getClass();
                Logger logger4 = CodedOutputStream.f12920b;
                return 4;
            case 8:
                ((Boolean) obj).getClass();
                Logger logger5 = CodedOutputStream.f12920b;
                return 1;
            case 9:
                Logger logger6 = CodedOutputStream.f12920b;
                return ((MessageLite) obj).c();
            case 10:
                if (obj instanceof LazyField) {
                    return CodedOutputStream.c((LazyField) obj);
                }
                Logger logger7 = CodedOutputStream.f12920b;
                iC = ((MessageLite) obj).c();
                iF = CodedOutputStream.f(iC);
                break;
            case 11:
                if (!(obj instanceof ByteString)) {
                    return CodedOutputStream.d((String) obj);
                }
                Logger logger8 = CodedOutputStream.f12920b;
                iC = ((ByteString) obj).size();
                iF = CodedOutputStream.f(iC);
                break;
                break;
            case 12:
                if (!(obj instanceof ByteString)) {
                    Logger logger9 = CodedOutputStream.f12920b;
                    iC = ((byte[]) obj).length;
                    iF = CodedOutputStream.f(iC);
                } else {
                    Logger logger10 = CodedOutputStream.f12920b;
                    iC = ((ByteString) obj).size();
                    iF = CodedOutputStream.f(iC);
                }
                break;
            case 13:
                return CodedOutputStream.f(((Integer) obj).intValue());
            case 14:
                ((Integer) obj).getClass();
                Logger logger11 = CodedOutputStream.f12920b;
                return 4;
            case 15:
                ((Long) obj).getClass();
                Logger logger12 = CodedOutputStream.f12920b;
                return 8;
            case 16:
                int iIntValue = ((Integer) obj).intValue();
                return CodedOutputStream.f((iIntValue >> 31) ^ (iIntValue << 1));
            case 17:
                long jLongValue = ((Long) obj).longValue();
                return CodedOutputStream.g((jLongValue >> 63) ^ (jLongValue << 1));
            case 18:
                return obj instanceof Internal.EnumLite ? CodedOutputStream.g(((Internal.EnumLite) obj).m()) : CodedOutputStream.g(((Integer) obj).intValue());
            default:
                v7.h("There is no way to get here, but the compiler thinks otherwise.");
                return 0;
        }
        return iF + iC;
    }

    public static int d(FieldDescriptorLite fieldDescriptorLite, Object obj) {
        WireFormat$FieldType wireFormat$FieldTypeO = fieldDescriptorLite.o();
        int iM = fieldDescriptorLite.m();
        if (!fieldDescriptorLite.n()) {
            return b(wireFormat$FieldTypeO, iM, obj);
        }
        List list = (List) obj;
        int size = list.size();
        int i2 = 0;
        if (!fieldDescriptorLite.q()) {
            int iB = 0;
            while (i2 < size) {
                iB += b(wireFormat$FieldTypeO, iM, list.get(i2));
                i2++;
            }
            return iB;
        }
        if (list.isEmpty()) {
            return 0;
        }
        int iC = 0;
        while (i2 < size) {
            iC += c(wireFormat$FieldTypeO, list.get(i2));
            i2++;
        }
        return CodedOutputStream.f(iC) + CodedOutputStream.e(iM) + iC;
    }

    public static int f(Map.Entry entry) {
        FieldDescriptorLite fieldDescriptorLite = (FieldDescriptorLite) entry.getKey();
        Object value = entry.getValue();
        if (fieldDescriptorLite.p() != WireFormat$JavaType.MESSAGE || fieldDescriptorLite.n() || fieldDescriptorLite.q()) {
            return d(fieldDescriptorLite, value);
        }
        if (value instanceof LazyField) {
            int iM = ((FieldDescriptorLite) entry.getKey()).m();
            return CodedOutputStream.c((LazyField) value) + CodedOutputStream.e(3) + CodedOutputStream.f(iM) + CodedOutputStream.e(2) + (CodedOutputStream.e(1) * 2);
        }
        int iM2 = ((FieldDescriptorLite) entry.getKey()).m();
        int iF = CodedOutputStream.f(iM2) + CodedOutputStream.e(2) + (CodedOutputStream.e(1) * 2);
        int iE = CodedOutputStream.e(3);
        int iC = ((MessageLite) value).c();
        return CodedOutputStream.f(iC) + iC + iE + iF;
    }

    public static boolean h(Map.Entry entry) {
        boolean zA;
        FieldDescriptorLite fieldDescriptorLite = (FieldDescriptorLite) entry.getKey();
        if (fieldDescriptorLite.p() == WireFormat$JavaType.MESSAGE) {
            if (!fieldDescriptorLite.n()) {
                Object value = entry.getValue();
                if (value instanceof MessageLiteOrBuilder) {
                    return ((MessageLiteOrBuilder) value).a();
                }
                if (value instanceof LazyField) {
                    return true;
                }
                md.n("Wrong object type used with protocol message reflection.");
                return false;
            }
            List list = (List) entry.getValue();
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                Object obj = list.get(i2);
                if (obj instanceof MessageLiteOrBuilder) {
                    zA = ((MessageLiteOrBuilder) obj).a();
                } else {
                    if (!(obj instanceof LazyField)) {
                        md.n("Wrong object type used with protocol message reflection.");
                        return false;
                    }
                    zA = true;
                }
                if (!zA) {
                    return false;
                }
            }
        }
        return true;
    }

    public static void m(FieldDescriptorLite fieldDescriptorLite, Object obj) {
        WireFormat$FieldType wireFormat$FieldTypeO = fieldDescriptorLite.o();
        Charset charset = Internal.f12947a;
        obj.getClass();
        boolean z = true;
        switch (AnonymousClass1.f12939a[wireFormat$FieldTypeO.a().ordinal()]) {
            case 1:
                z = obj instanceof Integer;
                break;
            case 2:
                z = obj instanceof Long;
                break;
            case 3:
                z = obj instanceof Float;
                break;
            case 4:
                z = obj instanceof Double;
                break;
            case 5:
                z = obj instanceof Boolean;
                break;
            case 6:
                z = obj instanceof String;
                break;
            case 7:
                if (!(obj instanceof ByteString) && !(obj instanceof byte[])) {
                    z = false;
                }
                break;
            case 8:
                if (!(obj instanceof Integer) && !(obj instanceof Internal.EnumLite)) {
                    z = false;
                }
                break;
            case 9:
                if (!(obj instanceof MessageLite) && !(obj instanceof LazyField)) {
                    z = false;
                }
                break;
            default:
                z = false;
                break;
        }
        if (z) {
            return;
        }
        d20.j("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", new Object[]{Integer.valueOf(fieldDescriptorLite.m()), fieldDescriptorLite.o().a(), obj.getClass().getName()});
    }

    public static void n(CodedOutputStream codedOutputStream, WireFormat$FieldType wireFormat$FieldType, int i2, Object obj) {
        if (wireFormat$FieldType == WireFormat$FieldType.GROUP) {
            codedOutputStream.z(i2, 3);
            ((MessageLite) obj).h(codedOutputStream);
            codedOutputStream.z(i2, 4);
        }
        codedOutputStream.z(i2, wireFormat$FieldType.b());
        switch (AnonymousClass1.f12940b[wireFormat$FieldType.ordinal()]) {
            case 1:
                codedOutputStream.q(Double.doubleToRawLongBits(((Double) obj).doubleValue()));
                break;
            case 2:
                codedOutputStream.o(Float.floatToRawIntBits(((Float) obj).floatValue()));
                break;
            case 3:
                codedOutputStream.D(((Long) obj).longValue());
                break;
            case 4:
                codedOutputStream.D(((Long) obj).longValue());
                break;
            case 5:
                codedOutputStream.s(((Integer) obj).intValue());
                break;
            case 6:
                codedOutputStream.q(((Long) obj).longValue());
                break;
            case 7:
                codedOutputStream.o(((Integer) obj).intValue());
                break;
            case 8:
                codedOutputStream.i(((Boolean) obj).booleanValue() ? (byte) 1 : (byte) 0);
                break;
            case 9:
                ((MessageLite) obj).h(codedOutputStream);
                break;
            case 10:
                codedOutputStream.u((MessageLite) obj);
                break;
            case 11:
                if (!(obj instanceof ByteString)) {
                    codedOutputStream.y((String) obj);
                } else {
                    codedOutputStream.m((ByteString) obj);
                }
                break;
            case 12:
                if (!(obj instanceof ByteString)) {
                    byte[] bArr = (byte[]) obj;
                    codedOutputStream.k(bArr.length, bArr);
                } else {
                    codedOutputStream.m((ByteString) obj);
                }
                break;
            case 13:
                codedOutputStream.B(((Integer) obj).intValue());
                break;
            case 14:
                codedOutputStream.o(((Integer) obj).intValue());
                break;
            case 15:
                codedOutputStream.q(((Long) obj).longValue());
                break;
            case 16:
                int iIntValue = ((Integer) obj).intValue();
                codedOutputStream.B((iIntValue >> 31) ^ (iIntValue << 1));
                break;
            case 17:
                long jLongValue = ((Long) obj).longValue();
                codedOutputStream.D((jLongValue >> 63) ^ (jLongValue << 1));
                break;
            case 18:
                if (!(obj instanceof Internal.EnumLite)) {
                    codedOutputStream.s(((Integer) obj).intValue());
                } else {
                    codedOutputStream.s(((Internal.EnumLite) obj).m());
                }
                break;
        }
    }

    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final FieldSet clone() {
        FieldSet fieldSet = new FieldSet();
        SmallSortedMap.AnonymousClass1 anonymousClass1 = this.f12936a;
        int size = anonymousClass1.f12997b.size();
        for (int i2 = 0; i2 < size; i2++) {
            Map.Entry entryD = anonymousClass1.d(i2);
            fieldSet.l((FieldDescriptorLite) entryD.getKey(), entryD.getValue());
        }
        for (Map.Entry entry : anonymousClass1.e()) {
            fieldSet.l((FieldDescriptorLite) entry.getKey(), entry.getValue());
        }
        fieldSet.f12938c = this.f12938c;
        return fieldSet;
    }

    public final Object e(FieldDescriptorLite fieldDescriptorLite) {
        Object obj = this.f12936a.get(fieldDescriptorLite);
        if (!(obj instanceof LazyField)) {
            return obj;
        }
        LazyField lazyField = (LazyField) obj;
        return lazyField.a(lazyField.f12950e);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FieldSet) {
            return this.f12936a.equals(((FieldSet) obj).f12936a);
        }
        return false;
    }

    public final boolean g() {
        SmallSortedMap.AnonymousClass1 anonymousClass1 = this.f12936a;
        int size = anonymousClass1.f12997b.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (!h(anonymousClass1.d(i2))) {
                return false;
            }
        }
        Iterator it = anonymousClass1.e().iterator();
        while (it.hasNext()) {
            if (!h((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        return this.f12936a.hashCode();
    }

    public final Iterator i() {
        SmallSortedMap.AnonymousClass1 anonymousClass1 = this.f12936a;
        if (anonymousClass1.isEmpty()) {
            return Collections.emptyIterator();
        }
        return this.f12938c ? new LazyField.LazyIterator(((SmallSortedMap.EntrySet) anonymousClass1.entrySet()).iterator()) : ((SmallSortedMap.EntrySet) anonymousClass1.entrySet()).iterator();
    }

    public final void j() {
        if (this.f12937b) {
            return;
        }
        SmallSortedMap.AnonymousClass1 anonymousClass1 = this.f12936a;
        int size = anonymousClass1.f12997b.size();
        for (int i2 = 0; i2 < size; i2++) {
            Map.Entry entryD = anonymousClass1.d(i2);
            if (entryD.getValue() instanceof GeneratedMessageLite) {
                GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) entryD.getValue();
                generatedMessageLite.getClass();
                Protobuf protobuf = Protobuf.f12985c;
                protobuf.getClass();
                protobuf.a(generatedMessageLite.getClass()).c(generatedMessageLite);
                generatedMessageLite.u();
            }
        }
        if (!anonymousClass1.d) {
            for (int i3 = 0; i3 < anonymousClass1.f12997b.size(); i3++) {
                Map.Entry entryD2 = anonymousClass1.d(i3);
                if (((FieldDescriptorLite) entryD2.getKey()).n()) {
                    entryD2.setValue(Collections.unmodifiableList((List) entryD2.getValue()));
                }
            }
            for (Map.Entry entry : anonymousClass1.e()) {
                if (((FieldDescriptorLite) entry.getKey()).n()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        if (!anonymousClass1.d) {
            anonymousClass1.f12998c = anonymousClass1.f12998c.isEmpty() ? Collections.EMPTY_MAP : Collections.unmodifiableMap(anonymousClass1.f12998c);
            anonymousClass1.f13000f = anonymousClass1.f13000f.isEmpty() ? Collections.EMPTY_MAP : Collections.unmodifiableMap(anonymousClass1.f13000f);
            anonymousClass1.d = true;
        }
        this.f12937b = true;
    }

    public final void k(Map.Entry entry) {
        FieldDescriptorLite fieldDescriptorLite = (FieldDescriptorLite) entry.getKey();
        Object value = entry.getValue();
        boolean z = value instanceof LazyField;
        boolean zN = fieldDescriptorLite.n();
        SmallSortedMap.AnonymousClass1 anonymousClass1 = this.f12936a;
        if (zN) {
            if (z) {
                md.k("Lazy fields can not be repeated");
                return;
            }
            Object objE = e(fieldDescriptorLite);
            if (objE == null) {
                objE = new ArrayList();
            }
            for (Object obj : (List) value) {
                List list = (List) objE;
                if (obj instanceof byte[]) {
                    byte[] bArr = (byte[]) obj;
                    byte[] bArr2 = new byte[bArr.length];
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    obj = bArr2;
                }
                list.add(obj);
            }
            anonymousClass1.h(fieldDescriptorLite, objE);
            return;
        }
        if (fieldDescriptorLite.p() != WireFormat$JavaType.MESSAGE) {
            if (z) {
                md.k("Lazy fields must be message-valued");
                return;
            }
            if (value instanceof byte[]) {
                byte[] bArr3 = (byte[]) value;
                byte[] bArr4 = new byte[bArr3.length];
                System.arraycopy(bArr3, 0, bArr4, 0, bArr3.length);
                value = bArr4;
            }
            anonymousClass1.h(fieldDescriptorLite, value);
            return;
        }
        Object objE2 = e(fieldDescriptorLite);
        if (objE2 != null) {
            if (z) {
                LazyField lazyField = (LazyField) value;
                value = lazyField.a(lazyField.f12950e);
            }
            ((MessageLite) objE2).b();
            anonymousClass1.h(fieldDescriptorLite, fieldDescriptorLite.t().o());
            return;
        }
        if (value instanceof byte[]) {
            byte[] bArr5 = (byte[]) value;
            byte[] bArr6 = new byte[bArr5.length];
            System.arraycopy(bArr5, 0, bArr6, 0, bArr5.length);
            value = bArr6;
        }
        anonymousClass1.h(fieldDescriptorLite, value);
        if (z) {
            this.f12938c = true;
        }
    }

    public final void l(FieldDescriptorLite fieldDescriptorLite, Object obj) {
        if (!fieldDescriptorLite.n()) {
            m(fieldDescriptorLite, obj);
        } else {
            if (!(obj instanceof List)) {
                md.n("Wrong object type used with protocol message reflection.");
                return;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                m(fieldDescriptorLite, it.next());
            }
            obj = arrayList;
        }
        if (obj instanceof LazyField) {
            this.f12938c = true;
        }
        this.f12936a.h(fieldDescriptorLite, obj);
    }

    public FieldSet() {
    }
}
