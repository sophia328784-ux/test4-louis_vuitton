package androidx.compose.ui.semantics;

import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterMapKt;
import androidx.collection.ScatterSetKt;
import androidx.compose.ui.platform.JvmActuals_jvmKt;
import defpackage.mt;
import defpackage.o60;
import java.util.Iterator;
import java.util.Map;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0010&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u00012\u001a\u0012\u0016\u0012\u0014\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00030\u0002B\u0007¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/ui/semantics/SemanticsConfiguration;", "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;", "", "", "Landroidx/compose/ui/semantics/SemanticsPropertyKey;", "", "<init>", "()V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SemanticsConfiguration implements SemanticsPropertyReceiver, Iterable<Map.Entry<? extends SemanticsPropertyKey<?>, ? extends Object>>, KMappedMarker {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableScatterMap f10312b = ScatterMapKt.b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Map f10313c;
    public MutableScatterSet d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f10314e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f10315f;

    @Override // androidx.compose.ui.semantics.SemanticsPropertyReceiver
    public final void a(SemanticsPropertyKey semanticsPropertyKey, Object obj) {
        boolean z = obj instanceof AccessibilityAction;
        MutableScatterMap mutableScatterMap = this.f10312b;
        if (z && mutableScatterMap.c(semanticsPropertyKey)) {
            Object objE = mutableScatterMap.e(semanticsPropertyKey);
            objE.getClass();
            AccessibilityAction accessibilityAction = (AccessibilityAction) objE;
            AccessibilityAction accessibilityAction2 = (AccessibilityAction) obj;
            String str = accessibilityAction2.f10269a;
            if (str == null) {
                str = accessibilityAction.f10269a;
            }
            Function function = accessibilityAction2.f10270b;
            if (function == null) {
                function = accessibilityAction.f10270b;
            }
            mutableScatterMap.o(semanticsPropertyKey, new AccessibilityAction(str, function));
        } else {
            mutableScatterMap.o(semanticsPropertyKey, obj);
        }
        if (semanticsPropertyKey.d != null) {
            if (this.d == null) {
                this.d = ScatterSetKt.a();
            }
            MutableScatterSet mutableScatterSet = this.d;
            if (mutableScatterSet != null) {
                mutableScatterSet.d(semanticsPropertyKey);
            }
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SemanticsConfiguration)) {
            return false;
        }
        SemanticsConfiguration semanticsConfiguration = (SemanticsConfiguration) obj;
        return Intrinsics.c(this.f10312b, semanticsConfiguration.f10312b) && this.f10314e == semanticsConfiguration.f10314e && this.f10315f == semanticsConfiguration.f10315f;
    }

    public final Object f(SemanticsPropertyKey semanticsPropertyKey) {
        Object objE = this.f10312b.e(semanticsPropertyKey);
        if (objE != null) {
            return objE;
        }
        mt.j("Key not present: ", semanticsPropertyKey, " - consider getOrElse or getOrNull");
        return null;
    }

    public final Object h(SemanticsPropertyKey semanticsPropertyKey, Function0 function0) {
        Object objE = this.f10312b.e(semanticsPropertyKey);
        return objE == null ? function0.mo47invoke() : objE;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f10315f) + o60.b(this.f10312b.hashCode() * 31, 31, this.f10314e);
    }

    public final void i(SemanticsConfiguration semanticsConfiguration) {
        MutableScatterMap mutableScatterMap = semanticsConfiguration.f10312b;
        Object[] objArr = mutableScatterMap.f3362b;
        Object[] objArr2 = mutableScatterMap.f3363c;
        long[] jArr = mutableScatterMap.f3361a;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i2 = 0;
        while (true) {
            long j2 = jArr[i2];
            if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i3 = 8 - ((~(i2 - length)) >>> 31);
                for (int i4 = 0; i4 < i3; i4++) {
                    if ((255 & j2) < 128) {
                        int i5 = (i2 << 3) + i4;
                        Object obj = objArr[i5];
                        Object obj2 = objArr2[i5];
                        SemanticsPropertyKey semanticsPropertyKey = (SemanticsPropertyKey) obj;
                        MutableScatterMap mutableScatterMap2 = this.f10312b;
                        Object objE = mutableScatterMap2.e(semanticsPropertyKey);
                        semanticsPropertyKey.getClass();
                        Object objInvoke = semanticsPropertyKey.f10364b.invoke(objE, obj2);
                        if (objInvoke != null) {
                            mutableScatterMap2.o(semanticsPropertyKey, objInvoke);
                        }
                    }
                    j2 >>= 8;
                }
                if (i3 != 8) {
                    return;
                }
            }
            if (i2 == length) {
                return;
            } else {
                i2++;
            }
        }
    }

    @Override // java.lang.Iterable
    public final Iterator<Map.Entry<? extends SemanticsPropertyKey<?>, ? extends Object>> iterator() {
        Map mapA = this.f10313c;
        if (mapA == null) {
            mapA = this.f10312b.a();
            this.f10313c = mapA;
        }
        return mapA.entrySet().iterator();
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0078 A[DONT_INVERT, PHI: r2
      0x0078: PHI (r2v6 java.lang.String) = (r2v5 java.lang.String), (r2v7 java.lang.String) binds: [B:13:0x003f, B:20:0x0076] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:22:0x007a A[LOOP:0: B:12:0x0031->B:22:0x007a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:26:0x007d A[EDGE_INSN: B:26:0x007d->B:23:0x007d BREAK  A[LOOP:0: B:12:0x0031->B:22:0x007a], SYNTHETIC] */
    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        if (this.f10314e) {
            sb.append("mergeDescendants=true");
            str = ", ";
        } else {
            str = "";
        }
        if (this.f10315f) {
            sb.append(str);
            sb.append("isClearingSemantics=true");
            str = ", ";
        }
        MutableScatterMap mutableScatterMap = this.f10312b;
        Object[] objArr = mutableScatterMap.f3362b;
        Object[] objArr2 = mutableScatterMap.f3363c;
        long[] jArr = mutableScatterMap.f3361a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i2 = 0;
            while (true) {
                long j2 = jArr[i2];
                if ((((~j2) << 7) & j2 & (-9187201950435737472L)) == -9187201950435737472L) {
                    if (i2 != length) {
                        break;
                        break;
                    }
                    i2++;
                } else {
                    int i3 = 8 - ((~(i2 - length)) >>> 31);
                    for (int i4 = 0; i4 < i3; i4++) {
                        if ((255 & j2) < 128) {
                            int i5 = (i2 << 3) + i4;
                            Object obj = objArr[i5];
                            Object obj2 = objArr2[i5];
                            sb.append(str);
                            sb.append(((SemanticsPropertyKey) obj).f10363a);
                            sb.append(" : ");
                            sb.append(obj2);
                            str = ", ";
                        }
                        j2 >>= 8;
                    }
                    if (i3 != 8) {
                        break;
                    }
                    if (i2 != length) {
                        break;
                    }
                    i2++;
                }
            }
        }
        return JvmActuals_jvmKt.a(this) + "{ " + ((Object) sb) + " }";
    }
}
