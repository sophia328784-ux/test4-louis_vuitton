package androidx.compose.foundation.gestures;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import defpackage.p;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0014\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u001d\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/foundation/gestures/DefaultDraggableAnchors;", "T", "Landroidx/compose/foundation/gestures/DraggableAnchors;", "", "keys", "", "anchors", "<init>", "(Ljava/util/List;[F)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class DefaultDraggableAnchors<T> implements DraggableAnchors<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f4443a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float[] f4444b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f4445c;

    public DefaultDraggableAnchors(List<? extends T> list, float[] fArr) {
        this.f4443a = list;
        this.f4444b = fArr;
        if (!(list.size() == fArr.length)) {
            InlineClassHelperKt.a("DraggableAnchors were constructed with inconsistent key-value sizes. Keys: " + list + " | Anchors: " + ArraysKt.T(fArr));
        }
        this.f4445c = fArr.length;
    }

    @Override // androidx.compose.foundation.gestures.DraggableAnchors
    public final Object a(float f2, boolean z) {
        float[] fArr = this.f4444b;
        int length = fArr.length;
        int i2 = 0;
        int i3 = -1;
        float f3 = Float.POSITIVE_INFINITY;
        int i4 = 0;
        while (i2 < length) {
            float f4 = fArr[i2];
            int i5 = i4 + 1;
            float f5 = z ? f4 - f2 : f2 - f4;
            if (f5 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                f5 = Float.POSITIVE_INFINITY;
            }
            if (f5 <= f3) {
                i3 = i4;
                f3 = f5;
            }
            i2++;
            i4 = i5;
        }
        if (i3 == -1) {
            return null;
        }
        return this.f4443a.get(i3);
    }

    @Override // androidx.compose.foundation.gestures.DraggableAnchors
    public final Object b(float f2) {
        float[] fArr = this.f4444b;
        int length = fArr.length;
        float f3 = Float.POSITIVE_INFINITY;
        int i2 = 0;
        int i3 = -1;
        int i4 = 0;
        while (i2 < length) {
            int i5 = i4 + 1;
            float fAbs = Math.abs(f2 - fArr[i2]);
            if (fAbs <= f3) {
                i3 = i4;
                f3 = fAbs;
            }
            i2++;
            i4 = i5;
        }
        if (i3 == -1) {
            return null;
        }
        return this.f4443a.get(i3);
    }

    @Override // androidx.compose.foundation.gestures.DraggableAnchors
    public final float c(Object obj) {
        int iIndexOf = this.f4443a.indexOf(obj);
        p pVar = AnchoredDraggableKt.f4346b;
        if (iIndexOf >= 0) {
            float[] fArr = this.f4444b;
            if (iIndexOf < fArr.length) {
                return fArr[iIndexOf];
            }
        }
        pVar.invoke(Integer.valueOf(iIndexOf));
        return Float.NaN;
    }

    @Override // androidx.compose.foundation.gestures.DraggableAnchors
    public final boolean d(Object obj) {
        return this.f4443a.indexOf(obj) != -1;
    }

    @Override // androidx.compose.foundation.gestures.DraggableAnchors
    public final float e() {
        float[] fArr = this.f4444b;
        if (fArr.length == 0) {
            return Float.NaN;
        }
        float fMin = fArr[0];
        int i2 = 1;
        int length = fArr.length - 1;
        if (1 <= length) {
            while (true) {
                fMin = Math.min(fMin, fArr[i2]);
                if (i2 == length) {
                    break;
                }
                i2++;
            }
        }
        return fMin;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DefaultDraggableAnchors)) {
            return false;
        }
        DefaultDraggableAnchors defaultDraggableAnchors = (DefaultDraggableAnchors) obj;
        return Intrinsics.c(this.f4443a, defaultDraggableAnchors.f4443a) && Arrays.equals(this.f4444b, defaultDraggableAnchors.f4444b) && this.f4445c == defaultDraggableAnchors.f4445c;
    }

    @Override // androidx.compose.foundation.gestures.DraggableAnchors
    public final float f() {
        float[] fArr = this.f4444b;
        if (fArr.length == 0) {
            return Float.NaN;
        }
        float fMax = fArr[0];
        int i2 = 1;
        int length = fArr.length - 1;
        if (1 <= length) {
            while (true) {
                fMax = Math.max(fMax, fArr[i2]);
                if (i2 == length) {
                    break;
                }
                i2++;
            }
        }
        return fMax;
    }

    public final int hashCode() {
        return ((Arrays.hashCode(this.f4444b) + (this.f4443a.hashCode() * 31)) * 31) + this.f4445c;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x002b  */
    public final String toString() {
        float f2;
        StringBuilder sb = new StringBuilder("DraggableAnchors(anchors={");
        int i2 = 0;
        while (true) {
            int i3 = this.f4445c;
            if (i2 >= i3) {
                sb.append("})");
                return sb.toString();
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(CollectionsKt.G(i2, this.f4443a));
            sb2.append('=');
            p pVar = AnchoredDraggableKt.f4346b;
            if (i2 >= 0) {
                float[] fArr = this.f4444b;
                if (i2 < fArr.length) {
                    f2 = fArr[i2];
                } else {
                    pVar.invoke(Integer.valueOf(i2));
                    f2 = Float.NaN;
                }
            } else {
                pVar.invoke(Integer.valueOf(i2));
                f2 = Float.NaN;
            }
            sb2.append(f2);
            sb.append(sb2.toString());
            if (i2 < i3 - 1) {
                sb.append(", ");
            }
            i2++;
        }
    }
}
