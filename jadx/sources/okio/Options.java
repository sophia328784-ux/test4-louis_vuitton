package okio;

import defpackage.md;
import defpackage.tg0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.collections.AbstractList;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00060\u0003j\u0002`\u0004:\u0001\u0005¨\u0006\u0006"}, d2 = {"Lokio/Options;", "Lkotlin/collections/AbstractList;", "Lokio/ByteString;", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "Companion", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Options extends AbstractList<ByteString> implements RandomAccess {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Companion f77428e = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ByteString[] f77429c;
    public final int[] d;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokio/Options$Companion;", "", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static void a(long j2, Buffer buffer, int i2, ArrayList arrayList, int i3, int i4, ArrayList arrayList2) {
            int i5;
            int i6;
            ArrayList arrayList3;
            long j3;
            int i7;
            int i8 = i2;
            ArrayList arrayList4 = arrayList;
            ArrayList arrayList5 = arrayList2;
            if (i3 >= i4) {
                md.n("Failed requirement.");
                return;
            }
            for (int i9 = i3; i9 < i4; i9++) {
                if (((ByteString) arrayList4.get(i9)).e() < i8) {
                    md.n("Failed requirement.");
                    return;
                }
            }
            ByteString byteString = (ByteString) arrayList.get(i3);
            ByteString byteString2 = (ByteString) arrayList4.get(i4 - 1);
            if (i8 == byteString.e()) {
                int iIntValue = ((Number) arrayList5.get(i3)).intValue();
                int i10 = i3 + 1;
                ByteString byteString3 = (ByteString) arrayList4.get(i10);
                i5 = i10;
                i6 = iIntValue;
                byteString = byteString3;
            } else {
                i5 = i3;
                i6 = -1;
            }
            if (byteString.j(i8) == byteString2.j(i8)) {
                int iMin = Math.min(byteString.e(), byteString2.e());
                int i11 = 0;
                for (int i12 = i8; i12 < iMin && byteString.j(i12) == byteString2.j(i12); i12++) {
                    i11++;
                }
                long j4 = (buffer.f77390c / 4) + j2 + 2 + ((long) i11) + 1;
                buffer.p0(-i11);
                buffer.p0(i6);
                int i13 = i8 + i11;
                while (i8 < i13) {
                    buffer.p0(byteString.j(i8) & 255);
                    i8++;
                }
                if (i5 + 1 == i4) {
                    if (i13 == ((ByteString) arrayList4.get(i5)).e()) {
                        buffer.p0(((Number) arrayList5.get(i5)).intValue());
                        return;
                    } else {
                        md.k("Check failed.");
                        return;
                    }
                }
                Buffer buffer2 = new Buffer();
                buffer.p0(((int) ((buffer2.f77390c / 4) + j4)) * (-1));
                a(j4, buffer2, i13, arrayList4, i5, i4, arrayList5);
                buffer.u0(buffer2);
                return;
            }
            int i14 = 1;
            for (int i15 = i5 + 1; i15 < i4; i15++) {
                if (((ByteString) arrayList4.get(i15 - 1)).j(i8) != ((ByteString) arrayList4.get(i15)).j(i8)) {
                    i14++;
                }
            }
            long j5 = (buffer.f77390c / 4) + j2 + 2 + ((long) (i14 * 2));
            buffer.p0(i14);
            buffer.p0(i6);
            for (int i16 = i5; i16 < i4; i16++) {
                int iJ = ((ByteString) arrayList4.get(i16)).j(i8);
                if (i16 == i5 || iJ != ((ByteString) arrayList4.get(i16 - 1)).j(i8)) {
                    buffer.p0(iJ & 255);
                }
            }
            Buffer buffer3 = new Buffer();
            int i17 = i5;
            while (i17 < i4) {
                byte bJ = ((ByteString) arrayList4.get(i17)).j(i8);
                int i18 = i17 + 1;
                int i19 = i18;
                while (true) {
                    if (i19 >= i4) {
                        i19 = i4;
                        break;
                    } else if (bJ != ((ByteString) arrayList4.get(i19)).j(i8)) {
                        break;
                    } else {
                        i19++;
                    }
                }
                if (i18 == i19 && i8 + 1 == ((ByteString) arrayList4.get(i17)).e()) {
                    buffer.p0(((Number) arrayList5.get(i17)).intValue());
                    arrayList3 = arrayList5;
                    j3 = j5;
                    i7 = i19;
                } else {
                    buffer.p0(((int) ((buffer3.f77390c / 4) + j5)) * (-1));
                    arrayList3 = arrayList5;
                    j3 = j5;
                    i7 = i19;
                    a(j3, buffer3, i8 + 1, arrayList, i17, i7, arrayList3);
                    arrayList4 = arrayList;
                }
                j5 = j3;
                i17 = i7;
                arrayList5 = arrayList3;
            }
            buffer.u0(buffer3);
        }

        public static Options b(ByteString... byteStringArr) {
            if (byteStringArr.length == 0) {
                return new Options(new ByteString[0], new int[]{0, -1}, null);
            }
            ArrayList arrayListY = ArraysKt.Y(byteStringArr);
            CollectionsKt.l0(arrayListY);
            int size = arrayListY.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i2 = 0; i2 < size; i2++) {
                arrayList.add(-1);
            }
            int length = byteStringArr.length;
            int i3 = 0;
            int i4 = 0;
            while (i3 < length) {
                arrayList.set(CollectionsKt.q(arrayListY, byteStringArr[i3]), Integer.valueOf(i4));
                i3++;
                i4++;
            }
            if (((ByteString) arrayListY.get(0)).e() <= 0) {
                md.n("the empty byte string is not a supported option");
                return null;
            }
            int i5 = 0;
            while (i5 < arrayListY.size()) {
                ByteString byteString = (ByteString) arrayListY.get(i5);
                int i6 = i5 + 1;
                int i7 = i6;
                while (i7 < arrayListY.size()) {
                    ByteString byteString2 = (ByteString) arrayListY.get(i7);
                    byteString2.getClass();
                    byteString.getClass();
                    if (!byteString2.w(0, byteString, byteString.e())) {
                        break;
                    }
                    if (byteString2.e() == byteString.e()) {
                        tg0.n(byteString2, "duplicate option: ");
                        return null;
                    }
                    if (((Number) arrayList.get(i7)).intValue() > ((Number) arrayList.get(i5)).intValue()) {
                        arrayListY.remove(i7);
                        ((Number) arrayList.remove(i7)).intValue();
                    } else {
                        i7++;
                    }
                }
                i5 = i6;
            }
            Buffer buffer = new Buffer();
            a(0L, buffer, 0, arrayListY, 0, arrayListY.size(), arrayList);
            int i8 = (int) (buffer.f77390c / 4);
            int[] iArr = new int[i8];
            for (int i9 = 0; i9 < i8; i9++) {
                iArr[i9] = buffer.readInt();
            }
            return new Options((ByteString[]) Arrays.copyOf(byteStringArr, byteStringArr.length), iArr, null);
        }
    }

    public Options(ByteString[] byteStringArr, int[] iArr, DefaultConstructorMarker defaultConstructorMarker) {
        this.f77429c = byteStringArr;
        this.d = iArr;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof ByteString) {
            return super.contains((ByteString) obj);
        }
        return false;
    }

    @Override // kotlin.collections.AbstractCollection
    /* JADX INFO: renamed from: f */
    public final int getF74608e() {
        return this.f77429c.length;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final Object get(int i2) {
        return this.f77429c[i2];
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof ByteString) {
            return super.indexOf((ByteString) obj);
        }
        return -1;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof ByteString) {
            return super.lastIndexOf((ByteString) obj);
        }
        return -1;
    }
}
