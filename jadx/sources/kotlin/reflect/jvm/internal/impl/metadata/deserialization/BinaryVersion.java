package kotlin.reflect.jvm.internal.impl.metadata.deserialization;

import com.sightcall.universal.media.offline.FileUtils;
import defpackage.md;
import defpackage.tr;
import io.jsonwebtoken.JwtParser;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.ArraysKt;
import kotlin.collections.ArraysKt___ArraysJvmKt$asList$3;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BinaryVersion {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f73568a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f73569b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f73570c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f73571e;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public BinaryVersion(int... iArr) {
        List listY0;
        iArr.getClass();
        this.f73568a = iArr;
        Integer numB = ArraysKt.B(0, iArr);
        this.f73569b = numB != null ? numB.intValue() : -1;
        Integer numB2 = ArraysKt.B(1, iArr);
        this.f73570c = numB2 != null ? numB2.intValue() : -1;
        Integer numB3 = ArraysKt.B(2, iArr);
        this.d = numB3 != null ? numB3.intValue() : -1;
        if (iArr.length <= 3) {
            listY0 = EmptyList.f71768b;
        } else {
            if (iArr.length > 1024) {
                md.n(tr.k(new StringBuilder("BinaryVersion with length more than 1024 are not supported. Provided length "), iArr.length, JwtParser.SEPARATOR_CHAR));
                throw null;
            }
            listY0 = CollectionsKt.y0(new ArraysKt___ArraysJvmKt$asList$3(iArr).subList(3, iArr.length));
        }
        this.f73571e = listY0;
    }

    public final boolean a(int i2, int i3, int i4) {
        int i5 = this.f73569b;
        if (i5 > i2) {
            return true;
        }
        if (i5 < i2) {
            return false;
        }
        int i6 = this.f73570c;
        if (i6 > i3) {
            return true;
        }
        return i6 >= i3 && this.d >= i4;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !getClass().equals(obj.getClass())) {
            return false;
        }
        BinaryVersion binaryVersion = (BinaryVersion) obj;
        return this.f73569b == binaryVersion.f73569b && this.f73570c == binaryVersion.f73570c && this.d == binaryVersion.d && Intrinsics.c(this.f73571e, binaryVersion.f73571e);
    }

    public final int hashCode() {
        int i2 = this.f73569b;
        int i3 = (i2 * 31) + this.f73570c + i2;
        int i4 = (i3 * 31) + this.d + i3;
        return this.f73571e.hashCode() + (i4 * 31) + i4;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        for (int i2 : this.f73568a) {
            if (i2 == -1) {
                break;
            }
            arrayList.add(Integer.valueOf(i2));
        }
        return arrayList.isEmpty() ? "unknown" : CollectionsKt.K(arrayList, FileUtils.HIDDEN_PREFIX, null, null, null, 62);
    }
}
