package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.FieldSet.FieldDescriptorLite;
import defpackage.d20;
import defpackage.md;
import defpackage.tr;
import defpackage.v7;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes2.dex */
final class FieldSet<T extends FieldDescriptorLite<T>> {
    public static final FieldSet d = new FieldSet(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SmallSortedMap.AnonymousClass1 f34179a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f34180b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f34181c;

    /* JADX INFO: renamed from: com.google.crypto.tink.shaded.protobuf.FieldSet$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f34182a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f34183b;

        static {
            int[] iArr = new int[WireFormat$FieldType.values().length];
            f34183b = iArr;
            try {
                iArr[WireFormat$FieldType.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f34183b[WireFormat$FieldType.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f34183b[WireFormat$FieldType.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f34183b[WireFormat$FieldType.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f34183b[WireFormat$FieldType.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f34183b[WireFormat$FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f34183b[WireFormat$FieldType.FIXED32.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f34183b[WireFormat$FieldType.BOOL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f34183b[WireFormat$FieldType.GROUP.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f34183b[WireFormat$FieldType.MESSAGE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f34183b[WireFormat$FieldType.STRING.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f34183b[WireFormat$FieldType.BYTES.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f34183b[WireFormat$FieldType.UINT32.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f34183b[WireFormat$FieldType.SFIXED32.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f34183b[WireFormat$FieldType.SFIXED64.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f34183b[WireFormat$FieldType.SINT32.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f34183b[WireFormat$FieldType.SINT64.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f34183b[WireFormat$FieldType.ENUM.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            int[] iArr2 = new int[WireFormat$JavaType.values().length];
            f34182a = iArr2;
            try {
                iArr2[WireFormat$JavaType.INT.ordinal()] = 1;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f34182a[WireFormat$JavaType.LONG.ordinal()] = 2;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f34182a[WireFormat$JavaType.FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f34182a[WireFormat$JavaType.DOUBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f34182a[WireFormat$JavaType.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f34182a[WireFormat$JavaType.STRING.ordinal()] = 6;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f34182a[WireFormat$JavaType.BYTE_STRING.ordinal()] = 7;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f34182a[WireFormat$JavaType.ENUM.ordinal()] = 8;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f34182a[WireFormat$JavaType.MESSAGE.ordinal()] = 9;
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
        int i3 = SmallSortedMap.f34238i;
        this.f34179a = new SmallSortedMap.AnonymousClass1(0);
        j();
        j();
    }

    public static int b(WireFormat$FieldType wireFormat$FieldType, int i2, Object obj) {
        int i3 = CodedOutputStream.i(i2);
        if (wireFormat$FieldType == WireFormat$FieldType.GROUP) {
            i3 *= 2;
        }
        return i3 + c(wireFormat$FieldType, obj);
    }

    public static int c(WireFormat$FieldType wireFormat$FieldType, Object obj) {
        int iC;
        int iK;
        switch (AnonymousClass1.f34183b[wireFormat$FieldType.ordinal()]) {
            case 1:
                ((Double) obj).getClass();
                Logger logger = CodedOutputStream.f34165b;
                return 8;
            case 2:
                ((Float) obj).getClass();
                Logger logger2 = CodedOutputStream.f34165b;
                return 4;
            case 3:
                return CodedOutputStream.l(((Long) obj).longValue());
            case 4:
                return CodedOutputStream.l(((Long) obj).longValue());
            case 5:
                return CodedOutputStream.f(((Integer) obj).intValue());
            case 6:
                ((Long) obj).getClass();
                Logger logger3 = CodedOutputStream.f34165b;
                return 8;
            case 7:
                ((Integer) obj).getClass();
                Logger logger4 = CodedOutputStream.f34165b;
                return 4;
            case 8:
                ((Boolean) obj).getClass();
                Logger logger5 = CodedOutputStream.f34165b;
                return 1;
            case 9:
                Logger logger6 = CodedOutputStream.f34165b;
                return ((MessageLite) obj).c();
            case 10:
                if (obj instanceof LazyField) {
                    return CodedOutputStream.g((LazyField) obj);
                }
                Logger logger7 = CodedOutputStream.f34165b;
                iC = ((MessageLite) obj).c();
                iK = CodedOutputStream.k(iC);
                break;
            case 11:
                if (!(obj instanceof ByteString)) {
                    return CodedOutputStream.h((String) obj);
                }
                Logger logger8 = CodedOutputStream.f34165b;
                iC = ((ByteString) obj).size();
                iK = CodedOutputStream.k(iC);
                break;
                break;
            case 12:
                if (!(obj instanceof ByteString)) {
                    Logger logger9 = CodedOutputStream.f34165b;
                    iC = ((byte[]) obj).length;
                    iK = CodedOutputStream.k(iC);
                } else {
                    Logger logger10 = CodedOutputStream.f34165b;
                    iC = ((ByteString) obj).size();
                    iK = CodedOutputStream.k(iC);
                }
                break;
            case 13:
                return CodedOutputStream.k(((Integer) obj).intValue());
            case 14:
                ((Integer) obj).getClass();
                Logger logger11 = CodedOutputStream.f34165b;
                return 4;
            case 15:
                ((Long) obj).getClass();
                Logger logger12 = CodedOutputStream.f34165b;
                return 8;
            case 16:
                int iIntValue = ((Integer) obj).intValue();
                return CodedOutputStream.k((iIntValue >> 31) ^ (iIntValue << 1));
            case 17:
                long jLongValue = ((Long) obj).longValue();
                return CodedOutputStream.l((jLongValue >> 63) ^ (jLongValue << 1));
            case 18:
                return obj instanceof Internal.EnumLite ? CodedOutputStream.f(((Internal.EnumLite) obj).m()) : CodedOutputStream.f(((Integer) obj).intValue());
            default:
                v7.h("There is no way to get here, but the compiler thinks otherwise.");
                return 0;
        }
        return iK + iC;
    }

    public static int d(FieldDescriptorLite fieldDescriptorLite, Object obj) {
        WireFormat$FieldType wireFormat$FieldTypeO = fieldDescriptorLite.o();
        int iM = fieldDescriptorLite.m();
        if (!fieldDescriptorLite.n()) {
            return b(wireFormat$FieldTypeO, iM, obj);
        }
        int iB = 0;
        if (!fieldDescriptorLite.q()) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                iB += b(wireFormat$FieldTypeO, iM, it.next());
            }
            return iB;
        }
        Iterator it2 = ((List) obj).iterator();
        while (it2.hasNext()) {
            iB += c(wireFormat$FieldTypeO, it2.next());
        }
        return CodedOutputStream.k(iB) + CodedOutputStream.i(iM) + iB;
    }

    public static int f(Map.Entry entry) {
        int i2 = CodedOutputStream.i(3);
        int i3 = CodedOutputStream.i(1);
        FieldDescriptorLite fieldDescriptorLite = (FieldDescriptorLite) entry.getKey();
        Object value = entry.getValue();
        if (fieldDescriptorLite.p() != WireFormat$JavaType.MESSAGE || fieldDescriptorLite.n() || fieldDescriptorLite.q()) {
            return d(fieldDescriptorLite, value);
        }
        if (value instanceof LazyField) {
            return CodedOutputStream.g((LazyField) value) + i2 + CodedOutputStream.j(2, ((FieldDescriptorLite) entry.getKey()).m()) + (i3 * 2);
        }
        int iJ = CodedOutputStream.j(2, ((FieldDescriptorLite) entry.getKey()).m()) + (i3 * 2);
        int iC = ((MessageLite) value).c();
        return tr.c(iC, iC, i2, iJ);
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
            for (Object obj : (List) entry.getValue()) {
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
        Charset charset = Internal.f34190a;
        obj.getClass();
        boolean z = true;
        switch (AnonymousClass1.f34182a[wireFormat$FieldTypeO.a().ordinal()]) {
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

    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final FieldSet clone() {
        SmallSortedMap.AnonymousClass1 anonymousClass1;
        FieldSet fieldSet = new FieldSet();
        int i2 = 0;
        while (true) {
            anonymousClass1 = this.f34179a;
            if (i2 >= anonymousClass1.f34240c.size()) {
                break;
            }
            Map.Entry entryD = anonymousClass1.d(i2);
            fieldSet.l((FieldDescriptorLite) entryD.getKey(), entryD.getValue());
            i2++;
        }
        for (Map.Entry entry : anonymousClass1.e()) {
            fieldSet.l((FieldDescriptorLite) entry.getKey(), entry.getValue());
        }
        fieldSet.f34181c = this.f34181c;
        return fieldSet;
    }

    public final Object e(FieldDescriptorLite fieldDescriptorLite) {
        Object obj = this.f34179a.get(fieldDescriptorLite);
        if (!(obj instanceof LazyField)) {
            return obj;
        }
        LazyField lazyField = (LazyField) obj;
        return lazyField.a(lazyField.f34193e);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FieldSet) {
            return this.f34179a.equals(((FieldSet) obj).f34179a);
        }
        return false;
    }

    public final boolean g() {
        int i2 = 0;
        while (true) {
            SmallSortedMap.AnonymousClass1 anonymousClass1 = this.f34179a;
            if (i2 >= anonymousClass1.f34240c.size()) {
                Iterator it = anonymousClass1.e().iterator();
                while (it.hasNext()) {
                    if (!h((Map.Entry) it.next())) {
                        break;
                    }
                }
                return true;
            }
            if (!h(anonymousClass1.d(i2))) {
                break;
            }
            i2++;
        }
        return false;
    }

    public final int hashCode() {
        return this.f34179a.hashCode();
    }

    public final Iterator i() {
        boolean z = this.f34181c;
        SmallSortedMap.AnonymousClass1 anonymousClass1 = this.f34179a;
        return z ? new LazyField.LazyIterator(((SmallSortedMap.EntrySet) anonymousClass1.entrySet()).iterator()) : ((SmallSortedMap.EntrySet) anonymousClass1.entrySet()).iterator();
    }

    public final void j() {
        SmallSortedMap.AnonymousClass1 anonymousClass1;
        if (this.f34180b) {
            return;
        }
        int i2 = 0;
        while (true) {
            anonymousClass1 = this.f34179a;
            if (i2 >= anonymousClass1.f34240c.size()) {
                break;
            }
            Map.Entry entryD = anonymousClass1.d(i2);
            if (entryD.getValue() instanceof GeneratedMessageLite) {
                GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) entryD.getValue();
                generatedMessageLite.getClass();
                Protobuf protobuf = Protobuf.f34227c;
                protobuf.getClass();
                protobuf.a(generatedMessageLite.getClass()).c(generatedMessageLite);
                generatedMessageLite.w();
            }
            i2++;
        }
        if (!anonymousClass1.f34241e) {
            for (int i3 = 0; i3 < anonymousClass1.f34240c.size(); i3++) {
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
        if (!anonymousClass1.f34241e) {
            anonymousClass1.d = anonymousClass1.d.isEmpty() ? Collections.EMPTY_MAP : Collections.unmodifiableMap(anonymousClass1.d);
            anonymousClass1.g = anonymousClass1.g.isEmpty() ? Collections.EMPTY_MAP : Collections.unmodifiableMap(anonymousClass1.g);
            anonymousClass1.f34241e = true;
        }
        this.f34180b = true;
    }

    public final void k(Map.Entry entry) {
        FieldDescriptorLite fieldDescriptorLite = (FieldDescriptorLite) entry.getKey();
        Object value = entry.getValue();
        if (value instanceof LazyField) {
            LazyField lazyField = (LazyField) value;
            value = lazyField.a(lazyField.f34193e);
        }
        boolean zN = fieldDescriptorLite.n();
        SmallSortedMap.AnonymousClass1 anonymousClass1 = this.f34179a;
        if (zN) {
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
            anonymousClass1.g(fieldDescriptorLite, objE);
            return;
        }
        if (fieldDescriptorLite.p() != WireFormat$JavaType.MESSAGE) {
            if (value instanceof byte[]) {
                byte[] bArr3 = (byte[]) value;
                byte[] bArr4 = new byte[bArr3.length];
                System.arraycopy(bArr3, 0, bArr4, 0, bArr3.length);
                value = bArr4;
            }
            anonymousClass1.g(fieldDescriptorLite, value);
            return;
        }
        Object objE2 = e(fieldDescriptorLite);
        if (objE2 != null) {
            ((MessageLite) objE2).b();
            anonymousClass1.g(fieldDescriptorLite, fieldDescriptorLite.t().build());
        } else {
            if (value instanceof byte[]) {
                byte[] bArr5 = (byte[]) value;
                byte[] bArr6 = new byte[bArr5.length];
                System.arraycopy(bArr5, 0, bArr6, 0, bArr5.length);
                value = bArr6;
            }
            anonymousClass1.g(fieldDescriptorLite, value);
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
            this.f34181c = true;
        }
        this.f34179a.g(fieldDescriptorLite, obj);
    }

    public FieldSet() {
        this.f34179a = new SmallSortedMap.AnonymousClass1(16);
    }
}
