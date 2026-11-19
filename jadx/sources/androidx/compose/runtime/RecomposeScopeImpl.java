package androidx.compose.runtime;

import androidx.collection.MutableObjectIntMap;
import androidx.collection.MutableScatterMap;
import androidx.compose.runtime.composer.gapbuffer.GapAnchor;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.tooling.IdentifiableRecomposeScope;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\bB\u0011\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Landroidx/compose/runtime/RecomposeScopeImpl;", "Landroidx/compose/runtime/ScopeUpdateScope;", "Landroidx/compose/runtime/RecomposeScope;", "Landroidx/compose/runtime/tooling/IdentifiableRecomposeScope;", "Landroidx/compose/runtime/RecomposeScopeOwner;", "owner", "<init>", "(Landroidx/compose/runtime/RecomposeScopeOwner;)V", "Companion", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RecomposeScopeImpl implements ScopeUpdateScope, RecomposeScope, IdentifiableRecomposeScope {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Companion f8075h = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public RecomposeScopeOwner f8076a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8077b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public GapAnchor f8078c;
    public Function2 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8079e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public MutableObjectIntMap f8080f;
    public MutableScatterMap g;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/runtime/RecomposeScopeImpl$Companion;", "", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static void a(SlotWriter slotWriter, List list, RecomposeScopeOwner recomposeScopeOwner) {
            List list2 = list;
            if (list2.isEmpty()) {
                return;
            }
            int size = list2.size();
            for (int i2 = 0; i2 < size; i2++) {
                int iC = slotWriter.c((GapAnchor) list.get(i2));
                int iP = slotWriter.P(slotWriter.r(iC), slotWriter.f8219b);
                Object obj = iP < slotWriter.g(slotWriter.r(iC + 1), slotWriter.f8219b) ? slotWriter.f8220c[slotWriter.h(iP)] : Composer.Companion.f7939a;
                RecomposeScopeImpl recomposeScopeImpl = obj instanceof RecomposeScopeImpl ? (RecomposeScopeImpl) obj : null;
                if (recomposeScopeImpl != null) {
                    recomposeScopeImpl.f8076a = recomposeScopeOwner;
                }
            }
        }
    }

    public RecomposeScopeImpl(RecomposeScopeOwner recomposeScopeOwner) {
        this.f8076a = recomposeScopeOwner;
    }

    public final boolean a() {
        if (this.f8076a != null) {
            GapAnchor gapAnchor = this.f8078c;
            if (gapAnchor != null ? gapAnchor.a() : false) {
                return true;
            }
        }
        return false;
    }

    public final InvalidationResult b(Object obj) {
        InvalidationResult invalidationResultP;
        RecomposeScopeOwner recomposeScopeOwner = this.f8076a;
        return (recomposeScopeOwner == null || (invalidationResultP = recomposeScopeOwner.p(this, obj)) == null) ? InvalidationResult.IGNORED : invalidationResultP;
    }

    public final void c() {
        RecomposeScopeOwner recomposeScopeOwner = this.f8076a;
        if (recomposeScopeOwner != null) {
            recomposeScopeOwner.l(this);
        }
        this.f8076a = null;
        this.f8080f = null;
        this.g = null;
        this.d = null;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0053 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:23:0x0055 A[LOOP:0: B:10:0x001b->B:23:0x0055, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:32:0x0058 A[EDGE_INSN: B:32:0x0058->B:24:0x0058 BREAK  A[LOOP:0: B:10:0x001b->B:23:0x0055], SYNTHETIC] */
    public final void d() {
        MutableObjectIntMap mutableObjectIntMap;
        RecomposeScopeOwner recomposeScopeOwner = this.f8076a;
        if (recomposeScopeOwner == null || (mutableObjectIntMap = this.f8080f) == null) {
            return;
        }
        e(true);
        try {
            Object[] objArr = mutableObjectIntMap.f3341b;
            int[] iArr = mutableObjectIntMap.f3342c;
            long[] jArr = mutableObjectIntMap.f3340a;
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
                                int i6 = iArr[i5];
                                recomposeScopeOwner.a(obj);
                            }
                            j2 >>= 8;
                        }
                        if (i3 != 8) {
                            break;
                        } else if (i2 != length) {
                            break;
                        } else {
                            i2++;
                        }
                    }
                }
            }
        } finally {
            e(false);
        }
    }

    public final void e(boolean z) {
        int i2 = this.f8077b;
        this.f8077b = z ? i2 | 32 : i2 & (-33);
    }

    public final void f(Function2 function2) {
        this.d = function2;
    }

    @Override // androidx.compose.runtime.RecomposeScope
    public final void invalidate() {
        RecomposeScopeOwner recomposeScopeOwner = this.f8076a;
        if (recomposeScopeOwner != null) {
            recomposeScopeOwner.p(this, null);
        }
    }
}
