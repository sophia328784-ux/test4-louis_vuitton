package androidx.compose.runtime.composer.gapbuffer;

import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;
import androidx.collection.ObjectList;
import androidx.collection.ScatterMapKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MovableContentStateReference;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PreconditionsKt;
import androidx.compose.runtime.SlotStorage;
import androidx.compose.runtime.composer.RememberManager;
import androidx.compose.runtime.tooling.CompositionData;
import androidx.compose.runtime.tooling.CompositionGroup;
import defpackage.c;
import defpackage.md;
import defpackage.xo0;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u00012\u00020\u00022\b\u0012\u0004\u0012\u00020\u00040\u0003B\u0007¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/SlotTable;", "Landroidx/compose/runtime/SlotStorage;", "Landroidx/compose/runtime/tooling/CompositionData;", "", "Landroidx/compose/runtime/tooling/CompositionGroup;", "<init>", "()V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SlotTable extends SlotStorage implements CompositionData, Iterable<CompositionGroup>, KMappedMarker {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8209c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8210e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f8211f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f8212h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f8213i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public HashMap f8215k;
    public MutableIntObjectMap l;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f8208b = new int[0];
    public Object[] d = new Object[0];
    public final Object g = new Object();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ArrayList f8214j = new ArrayList();

    public static final void m(SlotWriter slotWriter, int i2) {
        while (slotWriter.v >= 0 && slotWriter.u <= i2) {
            slotWriter.O();
            slotWriter.j();
        }
    }

    @Override // androidx.compose.runtime.SlotStorage
    public final void a(RememberManager rememberManager) {
        SlotWriter slotWriterO = o();
        try {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            slotWriterO.n(slotWriterO.t, new c(rememberManager, 17));
            slotWriterO.J();
            boolean z = true;
        } finally {
            slotWriterO.e(false);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.runtime.SlotStorage
    public final MutableScatterMap f(Applier applier, ObjectList objectList) {
        int i2;
        int i3;
        int i4;
        int i5;
        Object[] objArr = objectList.f3345a;
        int i6 = objectList.f3346b;
        Object[] objArr2 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        boolean z = false;
        int i11 = 0;
        while (true) {
            i2 = 1;
            char c2 = 1;
            i5 = 1;
            i4 = 1;
            boolean z2 = true;
            if (i11 >= i6) {
                break;
            }
            if (!p(GapAnchorKt.a(((MovableContentStateReference) objArr[i11]).f8027e))) {
                MutableObjectList mutableObjectList = new MutableObjectList(objArr2 == true ? 1 : 0, c2 == true ? 1 : 0, null);
                Object[] objArr3 = objectList.f3345a;
                int i12 = objectList.f3346b;
                for (int i13 = i7; i13 < i12; i13++) {
                    Object obj = objArr3[i13];
                    if (p(GapAnchorKt.a(((MovableContentStateReference) obj).f8027e))) {
                        mutableObjectList.g(obj);
                    }
                }
                objectList = mutableObjectList;
                break;
            }
            i11++;
        }
        final xo0 xo0Var = new xo0(this, 21);
        if (objectList.f3346b > i2) {
            Comparable comparable = (Comparable) xo0Var.invoke(objectList.b(i9));
            int i14 = objectList.f3346b;
            int i15 = i4;
            while (i15 < i14) {
                Comparable comparable2 = (Comparable) xo0Var.invoke(objectList.b(i15));
                if (comparable.compareTo(comparable2) > 0) {
                    MutableObjectList mutableObjectList2 = new MutableObjectList(objectList.f3346b);
                    Object[] objArr4 = objectList.f3345a;
                    int i16 = objectList.f3346b;
                    for (int i17 = i8; i17 < i16; i17++) {
                        mutableObjectList2.g(objArr4[i17]);
                    }
                    List listJ = mutableObjectList2.j();
                    if (listJ.size() > i5) {
                        CollectionsKt.m0(new Comparator() { // from class: androidx.compose.runtime.collection.ExtensionsKt$sortBy$$inlined$sortBy$1
                            @Override // java.util.Comparator
                            public final int compare(Object obj2, Object obj3) {
                                Function1 function1 = xo0Var;
                                return ComparisonsKt.a((Comparable) function1.invoke(obj2), (Comparable) function1.invoke(obj3));
                            }
                        }, listJ);
                    }
                    objectList = mutableObjectList2;
                    break;
                }
                i15++;
                comparable = comparable2;
            }
        }
        if (objectList.d()) {
            MutableScatterMap mutableScatterMap = ScatterMapKt.f3366b;
            mutableScatterMap.getClass();
            return mutableScatterMap;
        }
        MutableScatterMap mutableScatterMapB = ScatterMapKt.b();
        SlotWriter slotWriterO = o();
        try {
            Object[] objArr5 = objectList.f3345a;
            int i18 = objectList.f3346b;
            for (int i19 = i10; i19 < i18; i19++) {
                MovableContentStateReference movableContentStateReference = (MovableContentStateReference) objArr5[i19];
                int iC = slotWriterO.c(GapAnchorKt.a(movableContentStateReference.f8027e));
                int iG = slotWriterO.G(iC, slotWriterO.f8219b);
                m(slotWriterO, iG);
                m(slotWriterO, iG);
                while (true) {
                    i3 = slotWriterO.t;
                    if (i3 == iG || i3 == slotWriterO.u) {
                        break;
                        break;
                    }
                    if (iG < slotWriterO.u(i3) + i3) {
                        slotWriterO.R();
                    } else {
                        slotWriterO.N();
                    }
                }
                if (i3 != iG) {
                    ComposerKt.a("Unexpected slot table structure");
                }
                slotWriterO.R();
                slotWriterO.a(iC - slotWriterO.t);
                mutableScatterMapB.o(movableContentStateReference, ComposerKt.c(movableContentStateReference.f8026c, movableContentStateReference, slotWriterO, applier));
            }
            m(slotWriterO, Integer.MAX_VALUE);
            return mutableScatterMapB;
        } finally {
            slotWriterO.e(z);
        }
    }

    public final int h(GapAnchor gapAnchor) {
        if (this.f8212h) {
            ComposerKt.a("Use active SlotWriter to determine anchor location instead");
        }
        if (!gapAnchor.a()) {
            PreconditionsKt.a("Anchor refers to a group that was removed");
        }
        return gapAnchor.f8187a;
    }

    public final void i() {
        this.f8215k = new HashMap();
    }

    @Override // java.lang.Iterable
    public final Iterator<CompositionGroup> iterator() {
        return new GroupIterator(this, 0, this.f8209c);
    }

    public final SlotReader n() {
        if (this.f8212h) {
            md.k("Cannot read while a writer is pending");
            return null;
        }
        this.f8211f++;
        return new SlotReader(this);
    }

    public final SlotWriter o() {
        if (this.f8212h) {
            ComposerKt.a("Cannot start a writer when another writer is pending");
        }
        if (this.f8211f > 0) {
            ComposerKt.a("Cannot start a writer when a reader is pending");
        }
        this.f8212h = true;
        this.f8213i++;
        return new SlotWriter(this);
    }

    public final boolean p(GapAnchor gapAnchor) {
        int iF;
        return gapAnchor.a() && (iF = SlotTableKt.f(this.f8214j, gapAnchor.f8187a, this.f8209c)) >= 0 && Intrinsics.c(this.f8214j.get(iF), gapAnchor);
    }

    public final GapGroupSourceInformation q(int i2) {
        int i3;
        ArrayList arrayList;
        int iF;
        HashMap map = this.f8215k;
        if (map != null) {
            if (this.f8212h) {
                ComposerKt.a("use active SlotWriter to crate an anchor for location instead");
            }
            GapAnchor gapAnchor = (i2 < 0 || i2 >= (i3 = this.f8209c) || (iF = SlotTableKt.f((arrayList = this.f8214j), i2, i3)) < 0) ? null : (GapAnchor) arrayList.get(iF);
            if (gapAnchor != null) {
                return (GapGroupSourceInformation) map.get(gapAnchor);
            }
        }
        return null;
    }
}
