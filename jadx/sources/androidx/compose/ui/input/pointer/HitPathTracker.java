package androidx.compose.ui.input.pointer;

import androidx.collection.LongSparseArray;
import androidx.collection.MutableLongObjectMap;
import androidx.collection.MutableObjectList;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutCoordinates;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/input/pointer/HitPathTracker;", "", "Landroidx/compose/ui/layout/LayoutCoordinates;", "rootCoordinates", "<init>", "(Landroidx/compose/ui/layout/LayoutCoordinates;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class HitPathTracker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LayoutCoordinates f9273a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f9274b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f9275c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f9276e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MutableObjectList f9277f = new MutableObjectList(0, 1, null);
    public final NodeParent g = new NodeParent();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MutableLongObjectMap f9278h = new MutableLongObjectMap(10);

    public HitPathTracker(LayoutCoordinates layoutCoordinates) {
        this.f9273a = layoutCoordinates;
    }

    public final void a(long j2, List list, boolean z) {
        MutableLongObjectMap mutableLongObjectMap;
        long[] jArr;
        Object obj;
        int size = list.size();
        NodeParent nodeParent = this.g;
        NodeParent nodeParent2 = nodeParent;
        boolean z2 = true;
        int i2 = 0;
        while (true) {
            mutableLongObjectMap = this.f9278h;
            if (i2 >= size) {
                break;
            }
            final Modifier.Node node = (Modifier.Node) list.get(i2);
            if (node.o) {
                node.n = new Function0<Unit>() { // from class: androidx.compose.ui.input.pointer.HitPathTracker$addHitPath$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        this.f9279c.d(node);
                        return Unit.f71739a;
                    }
                };
                if (z2) {
                    MutableVector mutableVector = nodeParent2.f9303a;
                    Object[] objArr = mutableVector.f8165b;
                    int i3 = mutableVector.d;
                    int i4 = 0;
                    while (true) {
                        if (i4 >= i3) {
                            obj = null;
                            break;
                        }
                        obj = objArr[i4];
                        if (Intrinsics.c(((Node) obj).f9297c, node)) {
                            break;
                        } else {
                            i4++;
                        }
                    }
                    Node node2 = (Node) obj;
                    if (node2 != null) {
                        node2.f9301i = true;
                        node2.d.a(j2);
                        if (z) {
                            Object objB = mutableLongObjectMap.b(j2);
                            if (objB == null) {
                                objB = new MutableObjectList(0, 1, null);
                                mutableLongObjectMap.g(j2, objB);
                            }
                            ((MutableObjectList) objB).g(node2);
                        }
                        nodeParent2 = node2;
                    } else {
                        z2 = false;
                    }
                }
                Node node3 = new Node(node);
                node3.d.a(j2);
                if (z) {
                    Object objB2 = mutableLongObjectMap.b(j2);
                    if (objB2 == null) {
                        objB2 = new MutableObjectList(0, 1, null);
                        mutableLongObjectMap.g(j2, objB2);
                    }
                    ((MutableObjectList) objB2).g(node3);
                }
                nodeParent2.f9303a.b(node3);
                nodeParent2 = node3;
            }
            i2++;
        }
        int i5 = 0;
        if (z) {
            long[] jArr2 = mutableLongObjectMap.f3278b;
            Object[] objArr2 = mutableLongObjectMap.f3279c;
            long[] jArr3 = mutableLongObjectMap.f3277a;
            int length = jArr3.length - 2;
            if (length >= 0) {
                int i6 = 0;
                while (true) {
                    long j3 = jArr3[i6];
                    if ((((~j3) << 7) & j3 & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i7 = 8;
                        int i8 = 8 - ((~(i6 - length)) >>> 31);
                        int i9 = i5;
                        while (i9 < i8) {
                            if ((255 & j3) < 128) {
                                int i10 = (i6 << 3) + i9;
                                long j4 = jArr2[i10];
                                MutableObjectList mutableObjectList = (MutableObjectList) objArr2[i10];
                                MutableVector mutableVector2 = nodeParent.f9303a;
                                Object[] objArr3 = mutableVector2.f8165b;
                                int i11 = mutableVector2.d;
                                for (int i12 = 0; i12 < i11; i12++) {
                                    ((Node) objArr3[i12]).f(j4, mutableObjectList);
                                }
                            }
                            j3 >>= i7;
                            i9++;
                            i7 = i7;
                            jArr2 = jArr2;
                        }
                        jArr = jArr2;
                        if (i8 != i7) {
                            break;
                        }
                    } else {
                        jArr = jArr2;
                    }
                    if (i6 == length) {
                        break;
                    }
                    i6++;
                    jArr2 = jArr;
                    i5 = 0;
                }
            }
        }
        mutableLongObjectMap.c();
    }

    public final boolean b(InternalPointerEvent internalPointerEvent, boolean z) {
        LongSparseArray longSparseArray = internalPointerEvent.f9284a;
        LayoutCoordinates layoutCoordinates = this.f9273a;
        NodeParent nodeParent = this.g;
        boolean zA = nodeParent.a(longSparseArray, layoutCoordinates, internalPointerEvent, z);
        MutableVector mutableVector = nodeParent.f9303a;
        if (!zA) {
            return false;
        }
        boolean z2 = true;
        this.f9274b = true;
        Object[] objArr = mutableVector.f8165b;
        int i2 = mutableVector.d;
        boolean z3 = false;
        for (int i3 = 0; i3 < i2; i3++) {
            z3 = ((Node) objArr[i3]).e(internalPointerEvent, z) || z3;
        }
        Object[] objArr2 = mutableVector.f8165b;
        int i4 = mutableVector.d;
        boolean z4 = false;
        for (int i5 = 0; i5 < i4; i5++) {
            z4 = ((Node) objArr2[i5]).d(internalPointerEvent) || z4;
        }
        nodeParent.b(internalPointerEvent);
        if (!z4 && !z3) {
            z2 = false;
        }
        this.f9274b = false;
        if (this.f9276e) {
            this.f9276e = false;
            MutableObjectList mutableObjectList = this.f9277f;
            int i6 = mutableObjectList.f3346b;
            for (int i7 = 0; i7 < i6; i7++) {
                d((Modifier.Node) mutableObjectList.b(i7));
            }
            mutableObjectList.k();
        }
        if (this.f9275c) {
            this.f9275c = false;
            c();
        }
        if (this.d) {
            this.d = false;
            nodeParent.f9303a.j();
        }
        return z2;
    }

    public final void c() {
        if (this.f9274b) {
            this.f9275c = true;
            return;
        }
        NodeParent nodeParent = this.g;
        MutableVector mutableVector = nodeParent.f9303a;
        Object[] objArr = mutableVector.f8165b;
        int i2 = mutableVector.d;
        for (int i3 = 0; i3 < i2; i3++) {
            ((Node) objArr[i3]).c();
        }
        if (this.d) {
            this.d = true;
        } else {
            nodeParent.f9303a.j();
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void d(Modifier.Node node) {
        if (this.f9274b) {
            this.f9276e = true;
            this.f9277f.g(node);
            return;
        }
        NodeParent nodeParent = this.g;
        MutableObjectList mutableObjectList = nodeParent.f9304b;
        mutableObjectList.k();
        mutableObjectList.g(nodeParent);
        while (mutableObjectList.e()) {
            NodeParent nodeParent2 = (NodeParent) mutableObjectList.m(mutableObjectList.f3346b - 1);
            int i2 = 0;
            while (true) {
                MutableVector mutableVector = nodeParent2.f9303a;
                if (i2 < mutableVector.d) {
                    Node node2 = (Node) mutableVector.f8165b[i2];
                    if (Intrinsics.c(node2.f9297c, node)) {
                        nodeParent2.f9303a.n(node2);
                        node2.c();
                    } else {
                        mutableObjectList.g(node2);
                        i2++;
                    }
                }
            }
        }
    }
}
