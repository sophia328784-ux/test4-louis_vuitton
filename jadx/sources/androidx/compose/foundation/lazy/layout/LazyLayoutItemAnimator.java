package androidx.compose.foundation.lazy.layout;

import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterMapKt;
import androidx.collection.ScatterSetKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsContext;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.layer.GraphicsLayerKt;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.DrawModifierNodeKt;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import defpackage.x60;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\b\u0001\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0003:\u0003\u0006\u0007\bB\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\t"}, d2 = {"Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;", "T", "", "<init>", "()V", "ItemInfo", "DisplayingDisappearingItemsElement", "DisplayingDisappearingItemsNode", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LazyLayoutItemAnimator<T extends LazyLayoutMeasuredItem> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public LazyLayoutKeyIndexMap f5455b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5456c;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public DrawModifierNode f5461j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableScatterMap f5454a = ScatterMapKt.b();
    public final MutableScatterSet d = ScatterSetKt.a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f5457e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f5458f = new ArrayList();
    public final ArrayList g = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayList f5459h = new ArrayList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ArrayList f5460i = new ArrayList();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Modifier f5462k = new DisplayingDisappearingItemsElement(this);

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0013\u0012\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$DisplayingDisappearingItemsElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$DisplayingDisappearingItemsNode;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;", "animator", "<init>", "(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class DisplayingDisappearingItemsElement extends ModifierNodeElement<DisplayingDisappearingItemsNode> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final LazyLayoutItemAnimator f5463b;

        public DisplayingDisappearingItemsElement(LazyLayoutItemAnimator<?> lazyLayoutItemAnimator) {
            this.f5463b = lazyLayoutItemAnimator;
        }

        @Override // androidx.compose.ui.node.ModifierNodeElement
        public final Modifier.Node a() {
            return new DisplayingDisappearingItemsNode(this.f5463b);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof DisplayingDisappearingItemsElement) && Intrinsics.c(this.f5463b, ((DisplayingDisappearingItemsElement) obj).f5463b);
        }

        @Override // androidx.compose.ui.node.ModifierNodeElement
        public final void g(Modifier.Node node) {
            DisplayingDisappearingItemsNode displayingDisappearingItemsNode = (DisplayingDisappearingItemsNode) node;
            LazyLayoutItemAnimator lazyLayoutItemAnimator = displayingDisappearingItemsNode.p;
            LazyLayoutItemAnimator lazyLayoutItemAnimator2 = this.f5463b;
            if (Intrinsics.c(lazyLayoutItemAnimator, lazyLayoutItemAnimator2) || !displayingDisappearingItemsNode.f8608b.o) {
                return;
            }
            LazyLayoutItemAnimator lazyLayoutItemAnimator3 = displayingDisappearingItemsNode.p;
            lazyLayoutItemAnimator3.e();
            lazyLayoutItemAnimator3.f5455b = null;
            lazyLayoutItemAnimator3.f5456c = -1;
            lazyLayoutItemAnimator2.f5461j = displayingDisappearingItemsNode;
            displayingDisappearingItemsNode.p = lazyLayoutItemAnimator2;
        }

        public final int hashCode() {
            return this.f5463b.hashCode();
        }

        public final String toString() {
            return "DisplayingDisappearingItemsElement(animator=" + this.f5463b + ')';
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\b\u0018\u00002\u00020\u00012\u00020\u0002B\u0013\u0012\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$DisplayingDisappearingItemsNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/node/DrawModifierNode;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;", "animator", "<init>", "(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class DisplayingDisappearingItemsNode extends Modifier.Node implements DrawModifierNode {
        public LazyLayoutItemAnimator p;

        public DisplayingDisappearingItemsNode(LazyLayoutItemAnimator<?> lazyLayoutItemAnimator) {
            this.p = lazyLayoutItemAnimator;
        }

        @Override // androidx.compose.ui.Modifier.Node
        public final void Z1() {
            this.p.f5461j = this;
        }

        @Override // androidx.compose.ui.Modifier.Node
        public final void a2() {
            LazyLayoutItemAnimator lazyLayoutItemAnimator = this.p;
            lazyLayoutItemAnimator.e();
            lazyLayoutItemAnimator.f5455b = null;
            lazyLayoutItemAnimator.f5456c = -1;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof DisplayingDisappearingItemsNode) && Intrinsics.c(this.p, ((DisplayingDisappearingItemsNode) obj).p);
        }

        public final int hashCode() {
            return this.p.hashCode();
        }

        @Override // androidx.compose.ui.node.DrawModifierNode
        public final void j(LayoutNodeDrawScope layoutNodeDrawScope) {
            CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.f9701b;
            ArrayList arrayList = this.p.f5460i;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                LazyLayoutItemAnimation lazyLayoutItemAnimation = (LazyLayoutItemAnimation) arrayList.get(i2);
                GraphicsLayer graphicsLayer = lazyLayoutItemAnimation.n;
                if (graphicsLayer != null) {
                    long j2 = lazyLayoutItemAnimation.m;
                    IntOffset.Companion companion = IntOffset.f11012b;
                    float f2 = (int) (j2 >> 32);
                    float f3 = (int) (j2 & BodyPartID.bodyIdMax);
                    long j3 = graphicsLayer.t;
                    float f4 = f2 - ((int) (j3 >> 32));
                    float f5 = f3 - ((int) (BodyPartID.bodyIdMax & j3));
                    canvasDrawScope.f8996c.f9001a.g(f4, f5);
                    try {
                        GraphicsLayerKt.a(layoutNodeDrawScope, graphicsLayer);
                        canvasDrawScope.f8996c.f9001a.g(-f4, -f5);
                    } catch (Throwable th) {
                        canvasDrawScope.f8996c.f9001a.g(-f4, -f5);
                        throw th;
                    }
                }
            }
            layoutNodeDrawScope.R1();
        }

        public final String toString() {
            return "DisplayingDisappearingItemsNode(animator=" + this.p + ')';
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$ItemInfo;", "", "<init>", "(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class ItemInfo {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Constraints f5465b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f5466c;
        public int d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f5468f;
        public int g;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public LazyLayoutItemAnimation[] f5464a = LazyLayoutItemAnimatorKt.f5474a;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f5467e = 1;

        public ItemInfo() {
        }

        public static void b(ItemInfo itemInfo, LazyLayoutMeasuredItem lazyLayoutMeasuredItem, CoroutineScope coroutineScope, GraphicsContext graphicsContext, int i2, int i3) {
            long j2;
            LazyLayoutItemAnimator.this.getClass();
            long jO = lazyLayoutMeasuredItem.o(0);
            if (lazyLayoutMeasuredItem.getF5214c()) {
                IntOffset.Companion companion = IntOffset.f11012b;
                j2 = jO >> 32;
            } else {
                IntOffset.Companion companion2 = IntOffset.f11012b;
                j2 = jO & BodyPartID.bodyIdMax;
            }
            itemInfo.a(lazyLayoutMeasuredItem, coroutineScope, graphicsContext, i2, i3, (int) j2);
        }

        public final void a(LazyLayoutMeasuredItem lazyLayoutMeasuredItem, CoroutineScope coroutineScope, GraphicsContext graphicsContext, int i2, int i3, int i4) {
            int i5;
            LazyLayoutItemAnimation[] lazyLayoutItemAnimationArr;
            LazyLayoutItemAnimation[] lazyLayoutItemAnimationArr2 = this.f5464a;
            int length = lazyLayoutItemAnimationArr2.length;
            int i6 = 0;
            while (true) {
                i5 = 1;
                if (i6 >= length) {
                    this.f5468f = i2;
                    this.g = i3;
                    break;
                } else {
                    LazyLayoutItemAnimation lazyLayoutItemAnimation = lazyLayoutItemAnimationArr2[i6];
                    if (lazyLayoutItemAnimation != null && lazyLayoutItemAnimation.g) {
                        break;
                    } else {
                        i6++;
                    }
                }
            }
            int iB = lazyLayoutMeasuredItem.b();
            int length2 = this.f5464a.length;
            while (true) {
                lazyLayoutItemAnimationArr = this.f5464a;
                if (iB >= length2) {
                    break;
                }
                LazyLayoutItemAnimation lazyLayoutItemAnimation2 = lazyLayoutItemAnimationArr[iB];
                if (lazyLayoutItemAnimation2 != null) {
                    lazyLayoutItemAnimation2.d();
                }
                iB++;
            }
            if (lazyLayoutItemAnimationArr.length != lazyLayoutMeasuredItem.b()) {
                this.f5464a = (LazyLayoutItemAnimation[]) Arrays.copyOf(this.f5464a, lazyLayoutMeasuredItem.b());
            }
            this.f5465b = new Constraints(lazyLayoutMeasuredItem.getO());
            this.f5466c = i4;
            this.d = lazyLayoutMeasuredItem.getF5646e();
            this.f5467e = lazyLayoutMeasuredItem.getF5647f();
            int iB2 = lazyLayoutMeasuredItem.b();
            for (int i7 = 0; i7 < iB2; i7++) {
                Object objM = lazyLayoutMeasuredItem.m(i7);
                LazyLayoutAnimationSpecsNode lazyLayoutAnimationSpecsNode = objM instanceof LazyLayoutAnimationSpecsNode ? (LazyLayoutAnimationSpecsNode) objM : null;
                LazyLayoutItemAnimation[] lazyLayoutItemAnimationArr3 = this.f5464a;
                if (lazyLayoutAnimationSpecsNode == null) {
                    LazyLayoutItemAnimation lazyLayoutItemAnimation3 = lazyLayoutItemAnimationArr3[i7];
                    if (lazyLayoutItemAnimation3 != null) {
                        lazyLayoutItemAnimation3.d();
                    }
                    this.f5464a[i7] = null;
                } else {
                    LazyLayoutItemAnimation lazyLayoutItemAnimation4 = lazyLayoutItemAnimationArr3[i7];
                    if (lazyLayoutItemAnimation4 == null) {
                        lazyLayoutItemAnimation4 = new LazyLayoutItemAnimation(coroutineScope, graphicsContext, new x60(LazyLayoutItemAnimator.this, i5));
                        this.f5464a[i7] = lazyLayoutItemAnimation4;
                    }
                    lazyLayoutItemAnimation4.d = lazyLayoutAnimationSpecsNode.p;
                    lazyLayoutItemAnimation4.f5426e = lazyLayoutAnimationSpecsNode.q;
                    lazyLayoutItemAnimation4.f5427f = lazyLayoutAnimationSpecsNode.r;
                }
            }
        }
    }

    public static void c(LazyLayoutMeasuredItem lazyLayoutMeasuredItem, int i2, ItemInfo itemInfo) {
        int i3 = 0;
        long jO = lazyLayoutMeasuredItem.o(0);
        long jA = lazyLayoutMeasuredItem.getF5214c() ? IntOffset.a(0, i2, 1, jO) : IntOffset.a(i2, 0, 2, jO);
        LazyLayoutItemAnimation[] lazyLayoutItemAnimationArr = itemInfo.f5464a;
        int length = lazyLayoutItemAnimationArr.length;
        int i4 = 0;
        while (i3 < length) {
            LazyLayoutItemAnimation lazyLayoutItemAnimation = lazyLayoutItemAnimationArr[i3];
            int i5 = i4 + 1;
            if (lazyLayoutItemAnimation != null) {
                lazyLayoutItemAnimation.l = IntOffset.d(jA, IntOffset.c(lazyLayoutMeasuredItem.o(i4), jO));
            }
            i3++;
            i4 = i5;
        }
    }

    public static int h(int[] iArr, LazyLayoutMeasuredItem lazyLayoutMeasuredItem) {
        int iE = lazyLayoutMeasuredItem.getF5646e();
        int iH = lazyLayoutMeasuredItem.getF5647f() + iE;
        int iMax = 0;
        while (iE < iH) {
            int iL = lazyLayoutMeasuredItem.getR() + iArr[iE];
            iArr[iE] = iL;
            iMax = Math.max(iMax, iL);
            iE++;
        }
        return iMax;
    }

    public final LazyLayoutItemAnimation a(int i2, Object obj) {
        ItemInfo itemInfo = (ItemInfo) this.f5454a.e(obj);
        if (itemInfo != null) {
            return itemInfo.f5464a[i2];
        }
        return null;
    }

    public final long b() {
        IntSize.f11020b.getClass();
        ArrayList arrayList = this.f5460i;
        int size = arrayList.size();
        long jMax = 0;
        for (int i2 = 0; i2 < size; i2++) {
            LazyLayoutItemAnimation lazyLayoutItemAnimation = (LazyLayoutItemAnimation) arrayList.get(i2);
            GraphicsLayer graphicsLayer = lazyLayoutItemAnimation.n;
            if (graphicsLayer != null) {
                long j2 = lazyLayoutItemAnimation.l;
                IntOffset.Companion companion = IntOffset.f11012b;
                int iMax = Math.max((int) (jMax >> 32), ((int) (j2 >> 32)) + ((int) (graphicsLayer.u >> 32)));
                jMax = (((long) Math.max((int) (jMax & BodyPartID.bodyIdMax), ((int) (lazyLayoutItemAnimation.l & BodyPartID.bodyIdMax)) + ((int) (graphicsLayer.u & BodyPartID.bodyIdMax)))) & BodyPartID.bodyIdMax) | (((long) iMax) << 32);
            }
        }
        return jMax;
    }

    /* JADX WARN: Code duplicated, block: B:258:0x00cd A[EDGE_INSN: B:258:0x00cd->B:49:0x00cd BREAK  A[LOOP:2: B:36:0x0091->B:48:0x00c8], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:47:0x00c6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:48:0x00c8 A[LOOP:2: B:36:0x0091->B:48:0x00c8, LOOP_END] */
    /* JADX WARN: Type inference failed for: r9v33, types: [kotlin.coroutines.Continuation, kotlin.coroutines.CoroutineContext, kotlinx.coroutines.CoroutineStart] */
    public final void d(int i2, int i3, int i4, ArrayList arrayList, LazyLayoutKeyIndexMap lazyLayoutKeyIndexMap, LazyLayoutMeasuredItemProvider lazyLayoutMeasuredItemProvider, boolean z, boolean z2, int i5, boolean z3, int i6, int i7, CoroutineScope coroutineScope, GraphicsContext graphicsContext) {
        MutableScatterMap mutableScatterMap;
        Object obj;
        long j2;
        ArrayList arrayList2;
        ArrayList arrayList3;
        ArrayList arrayList4;
        final LazyLayoutKeyIndexMap lazyLayoutKeyIndexMap2;
        int[] iArr;
        ArrayList arrayList5;
        ArrayList arrayList6;
        MutableScatterMap mutableScatterMap2;
        boolean z4;
        final LazyLayoutKeyIndexMap lazyLayoutKeyIndexMap3;
        int[] iArr2;
        MutableScatterMap mutableScatterMap3;
        int i8;
        long j3;
        ArrayList arrayList7;
        long[] jArr;
        int[] iArr3;
        int i9;
        long[] jArr2;
        long j4;
        MutableScatterMap mutableScatterMap4;
        boolean z5;
        ArrayList arrayList8;
        LazyLayoutMeasuredItem lazyLayoutMeasuredItem;
        LazyLayoutItemAnimation[] lazyLayoutItemAnimationArr;
        int i10;
        int i11;
        LazyLayoutKeyIndexMap lazyLayoutKeyIndexMap4;
        int i12;
        LazyLayoutItemAnimation[] lazyLayoutItemAnimationArr2;
        LazyLayoutKeyIndexMap lazyLayoutKeyIndexMap5;
        int i13;
        int i14;
        long j5;
        LazyLayoutKeyIndexMap lazyLayoutKeyIndexMap6 = this.f5455b;
        this.f5455b = lazyLayoutKeyIndexMap;
        int size = arrayList.size();
        int i15 = 0;
        loop0: while (true) {
            mutableScatterMap = this.f5454a;
            if (i15 >= size) {
                obj = null;
                if (!mutableScatterMap.f()) {
                    break;
                }
                e();
                return;
            }
            LazyLayoutMeasuredItem lazyLayoutMeasuredItem2 = (LazyLayoutMeasuredItem) arrayList.get(i15);
            int iB = lazyLayoutMeasuredItem2.b();
            for (int i16 = 0; i16 < iB; i16++) {
                obj = null;
                Object objM = lazyLayoutMeasuredItem2.m(i16);
                if ((objM instanceof LazyLayoutAnimationSpecsNode ? (LazyLayoutAnimationSpecsNode) objM : null) != null) {
                    break loop0;
                }
            }
            i15++;
        }
        int i17 = this.f5456c;
        LazyLayoutMeasuredItem lazyLayoutMeasuredItem3 = (LazyLayoutMeasuredItem) CollectionsKt.firstOrNull(arrayList);
        this.f5456c = lazyLayoutMeasuredItem3 != null ? lazyLayoutMeasuredItem3.getF5212a() : 0;
        if (z) {
            j2 = ((long) i2) & BodyPartID.bodyIdMax;
            IntOffset.Companion companion = IntOffset.f11012b;
        } else {
            j2 = ((long) i2) << 32;
            IntOffset.Companion companion2 = IntOffset.f11012b;
        }
        boolean z6 = z2 || !z3;
        Object[] objArr = mutableScatterMap.f3362b;
        long[] jArr3 = mutableScatterMap.f3361a;
        int length = jArr3.length - 2;
        MutableScatterSet mutableScatterSet = this.d;
        if (length >= 0) {
            int i18 = 0;
            while (true) {
                long j6 = jArr3[i18];
                if ((((~j6) << 7) & j6 & (-9187201950435737472L)) == -9187201950435737472L) {
                    if (i18 != length) {
                        break;
                        break;
                    }
                    i18++;
                } else {
                    int i19 = 8 - ((~(i18 - length)) >>> 31);
                    for (int i20 = 0; i20 < i19; i20++) {
                        if ((j6 & 255) < 128) {
                            mutableScatterSet.d(objArr[(i18 << 3) + i20]);
                        }
                        j6 >>= 8;
                    }
                    if (i19 != 8) {
                        break;
                    } else if (i18 != length) {
                        break;
                    } else {
                        i18++;
                    }
                }
            }
        }
        int size2 = arrayList.size();
        int i21 = 0;
        while (true) {
            arrayList2 = this.f5460i;
            arrayList3 = this.f5458f;
            arrayList4 = this.f5457e;
            if (i21 >= size2) {
                break;
            }
            LazyLayoutMeasuredItem lazyLayoutMeasuredItem4 = (LazyLayoutMeasuredItem) arrayList.get(i21);
            mutableScatterSet.m(lazyLayoutMeasuredItem4.getL());
            int iB2 = lazyLayoutMeasuredItem4.b();
            int i22 = size2;
            int i23 = 0;
            while (true) {
                if (i23 >= iB2) {
                    i11 = i21;
                    lazyLayoutKeyIndexMap4 = lazyLayoutKeyIndexMap6;
                    i12 = i17;
                    f(lazyLayoutMeasuredItem4.getL());
                    break;
                }
                i11 = i21;
                Object objM2 = lazyLayoutMeasuredItem4.m(i23);
                int i24 = i23;
                if ((objM2 instanceof LazyLayoutAnimationSpecsNode ? (LazyLayoutAnimationSpecsNode) objM2 : obj) != null) {
                    ItemInfo itemInfo = (ItemInfo) mutableScatterMap.e(lazyLayoutMeasuredItem4.getL());
                    int iC = lazyLayoutKeyIndexMap6 != null ? lazyLayoutKeyIndexMap6.c(lazyLayoutMeasuredItem4.getL()) : -1;
                    boolean z7 = iC == -1 && lazyLayoutKeyIndexMap6 != null;
                    if (itemInfo == null) {
                        ItemInfo itemInfo2 = new ItemInfo();
                        ItemInfo.b(itemInfo2, lazyLayoutMeasuredItem4, coroutineScope, graphicsContext, i6, i7);
                        mutableScatterMap.o(lazyLayoutMeasuredItem4.getL(), itemInfo2);
                        if (lazyLayoutMeasuredItem4.getF5212a() == iC || iC == -1) {
                            long jO = lazyLayoutMeasuredItem4.o(0);
                            if (lazyLayoutMeasuredItem4.getF5214c()) {
                                IntOffset.Companion companion3 = IntOffset.f11012b;
                                j5 = jO & BodyPartID.bodyIdMax;
                            } else {
                                IntOffset.Companion companion4 = IntOffset.f11012b;
                                j5 = jO >> 32;
                            }
                            c(lazyLayoutMeasuredItem4, (int) j5, itemInfo2);
                            if (z7) {
                                LazyLayoutItemAnimation[] lazyLayoutItemAnimationArr3 = itemInfo2.f5464a;
                                for (LazyLayoutItemAnimation lazyLayoutItemAnimation : lazyLayoutItemAnimationArr3) {
                                    if (lazyLayoutItemAnimation != null) {
                                        lazyLayoutItemAnimation.a();
                                    }
                                }
                            }
                        } else if (iC < i17) {
                            arrayList4.add(lazyLayoutMeasuredItem4);
                        } else {
                            arrayList3.add(lazyLayoutMeasuredItem4);
                        }
                    } else if (z6) {
                        ItemInfo.b(itemInfo, lazyLayoutMeasuredItem4, coroutineScope, graphicsContext, i6, i7);
                        LazyLayoutItemAnimation[] lazyLayoutItemAnimationArr4 = itemInfo.f5464a;
                        int length2 = lazyLayoutItemAnimationArr4.length;
                        int i25 = 0;
                        while (i25 < length2) {
                            boolean z8 = z7;
                            LazyLayoutItemAnimation lazyLayoutItemAnimation2 = lazyLayoutItemAnimationArr4[i25];
                            if (lazyLayoutItemAnimation2 != null) {
                                i13 = i17;
                                i14 = length2;
                                long j7 = lazyLayoutItemAnimation2.l;
                                LazyLayoutItemAnimation.s.getClass();
                                lazyLayoutItemAnimationArr2 = lazyLayoutItemAnimationArr4;
                                lazyLayoutKeyIndexMap5 = lazyLayoutKeyIndexMap6;
                                if (!IntOffset.b(j7, LazyLayoutItemAnimation.t)) {
                                    lazyLayoutItemAnimation2.l = IntOffset.d(lazyLayoutItemAnimation2.l, j2);
                                }
                            } else {
                                lazyLayoutItemAnimationArr2 = lazyLayoutItemAnimationArr4;
                                lazyLayoutKeyIndexMap5 = lazyLayoutKeyIndexMap6;
                                i13 = i17;
                                i14 = length2;
                            }
                            i25++;
                            z7 = z8;
                            length2 = i14;
                            i17 = i13;
                            lazyLayoutKeyIndexMap6 = lazyLayoutKeyIndexMap5;
                            lazyLayoutItemAnimationArr4 = lazyLayoutItemAnimationArr2;
                        }
                        lazyLayoutKeyIndexMap4 = lazyLayoutKeyIndexMap6;
                        i12 = i17;
                        if (z7) {
                            for (LazyLayoutItemAnimation lazyLayoutItemAnimation3 : itemInfo.f5464a) {
                                if (lazyLayoutItemAnimation3 != null) {
                                    if (lazyLayoutItemAnimation3.c()) {
                                        arrayList2.remove(lazyLayoutItemAnimation3);
                                        DrawModifierNode drawModifierNode = this.f5461j;
                                        if (drawModifierNode != null) {
                                            DrawModifierNodeKt.a(drawModifierNode);
                                        }
                                    }
                                    lazyLayoutItemAnimation3.a();
                                }
                            }
                        }
                        g(lazyLayoutMeasuredItem4, false);
                        break;
                    }
                    lazyLayoutKeyIndexMap4 = lazyLayoutKeyIndexMap6;
                    i12 = i17;
                    break;
                }
                i23 = i24 + 1;
                i21 = i11;
            }
            i21 = i11 + 1;
            i17 = i12;
            lazyLayoutKeyIndexMap6 = lazyLayoutKeyIndexMap4;
            size2 = i22;
        }
        int i26 = i5;
        LazyLayoutKeyIndexMap lazyLayoutKeyIndexMap7 = lazyLayoutKeyIndexMap6;
        int[] iArr4 = new int[i26];
        if (!z6 || lazyLayoutKeyIndexMap7 == null) {
            lazyLayoutKeyIndexMap2 = lazyLayoutKeyIndexMap7;
        } else {
            if (arrayList4.isEmpty()) {
                lazyLayoutKeyIndexMap2 = lazyLayoutKeyIndexMap7;
            } else {
                if (arrayList4.size() > 1) {
                    lazyLayoutKeyIndexMap2 = lazyLayoutKeyIndexMap7;
                    CollectionsKt.m0(new Comparator() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator$onMeasured$$inlined$sortByDescending$1
                        @Override // java.util.Comparator
                        public final int compare(Object obj2, Object obj3) {
                            Object l = ((LazyLayoutMeasuredItem) obj3).getL();
                            LazyLayoutKeyIndexMap lazyLayoutKeyIndexMap8 = lazyLayoutKeyIndexMap2;
                            return Integer.valueOf(lazyLayoutKeyIndexMap8.c(l)).compareTo(Integer.valueOf(lazyLayoutKeyIndexMap8.c(((LazyLayoutMeasuredItem) obj2).getL())));
                        }
                    }, arrayList4);
                } else {
                    lazyLayoutKeyIndexMap2 = lazyLayoutKeyIndexMap7;
                }
                int size3 = arrayList4.size();
                for (int i27 = 0; i27 < size3; i27++) {
                    LazyLayoutMeasuredItem lazyLayoutMeasuredItem5 = (LazyLayoutMeasuredItem) arrayList4.get(i27);
                    int iH = i6 - h(iArr4, lazyLayoutMeasuredItem5);
                    Object objE = mutableScatterMap.e(lazyLayoutMeasuredItem5.getL());
                    objE.getClass();
                    c(lazyLayoutMeasuredItem5, iH, (ItemInfo) objE);
                    g(lazyLayoutMeasuredItem5, false);
                }
                ArraysKt.s(0, 0, 6, iArr4);
            }
            if (!arrayList3.isEmpty()) {
                if (arrayList3.size() > 1) {
                    CollectionsKt.m0(new Comparator() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1
                        @Override // java.util.Comparator
                        public final int compare(Object obj2, Object obj3) {
                            Object l = ((LazyLayoutMeasuredItem) obj2).getL();
                            LazyLayoutKeyIndexMap lazyLayoutKeyIndexMap8 = lazyLayoutKeyIndexMap2;
                            return Integer.valueOf(lazyLayoutKeyIndexMap8.c(l)).compareTo(Integer.valueOf(lazyLayoutKeyIndexMap8.c(((LazyLayoutMeasuredItem) obj3).getL())));
                        }
                    }, arrayList3);
                }
                int size4 = arrayList3.size();
                for (int i28 = 0; i28 < size4; i28++) {
                    LazyLayoutMeasuredItem lazyLayoutMeasuredItem6 = (LazyLayoutMeasuredItem) arrayList3.get(i28);
                    int iH2 = (h(iArr4, lazyLayoutMeasuredItem6) + i7) - lazyLayoutMeasuredItem6.getR();
                    Object objE2 = mutableScatterMap.e(lazyLayoutMeasuredItem6.getL());
                    objE2.getClass();
                    c(lazyLayoutMeasuredItem6, iH2, (ItemInfo) objE2);
                    g(lazyLayoutMeasuredItem6, false);
                }
                ArraysKt.s(0, 0, 6, iArr4);
            }
        }
        Object[] objArr2 = mutableScatterSet.f3368b;
        long[] jArr4 = mutableScatterSet.f3367a;
        int length3 = jArr4.length - 2;
        ArrayList arrayList9 = this.f5459h;
        ArrayList arrayList10 = this.g;
        if (length3 >= 0) {
            arrayList5 = arrayList3;
            arrayList6 = arrayList4;
            int i29 = 0;
            while (true) {
                long j8 = jArr4[i29];
                Object[] objArr3 = objArr2;
                if ((((~j8) << 7) & j8 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i30 = 8 - ((~(i29 - length3)) >>> 31);
                    int i31 = 0;
                    while (i31 < i30) {
                        if ((j8 & 255) < 128) {
                            i9 = i31;
                            Object obj2 = objArr3[(i29 << 3) + i31];
                            jArr2 = jArr4;
                            ItemInfo itemInfo3 = (ItemInfo) mutableScatterMap.e(obj2);
                            if (itemInfo3 == null) {
                                iArr3 = iArr4;
                                j4 = j8;
                                mutableScatterMap4 = mutableScatterMap;
                                z5 = z6;
                            } else {
                                j4 = j8;
                                int iC2 = lazyLayoutKeyIndexMap.c(obj2);
                                z5 = z6;
                                int iMin = Math.min(i26, itemInfo3.f5467e);
                                itemInfo3.f5467e = iMin;
                                itemInfo3.d = Math.min(i26 - iMin, itemInfo3.d);
                                if (iC2 == -1) {
                                    LazyLayoutItemAnimation[] lazyLayoutItemAnimationArr5 = itemInfo3.f5464a;
                                    int length4 = lazyLayoutItemAnimationArr5.length;
                                    int i32 = 0;
                                    boolean z9 = false;
                                    int i33 = 0;
                                    while (i32 < length4) {
                                        int i34 = i32;
                                        LazyLayoutItemAnimation lazyLayoutItemAnimation4 = lazyLayoutItemAnimationArr5[i34];
                                        int i35 = i33 + 1;
                                        if (lazyLayoutItemAnimation4 != null) {
                                            if (lazyLayoutItemAnimation4.c()) {
                                                iArr4 = iArr4;
                                                lazyLayoutItemAnimationArr = lazyLayoutItemAnimationArr5;
                                                mutableScatterMap = mutableScatterMap;
                                                i10 = length4;
                                            } else {
                                                lazyLayoutItemAnimationArr = lazyLayoutItemAnimationArr5;
                                                if (((Boolean) ((SnapshotMutableStateImpl) lazyLayoutItemAnimation4.f5431k).getF10755b()).booleanValue()) {
                                                    lazyLayoutItemAnimation4.d();
                                                    itemInfo3.f5464a[i33] = obj;
                                                    arrayList2.remove(lazyLayoutItemAnimation4);
                                                    DrawModifierNode drawModifierNode2 = this.f5461j;
                                                    if (drawModifierNode2 != null) {
                                                        DrawModifierNodeKt.a(drawModifierNode2);
                                                    }
                                                } else {
                                                    GraphicsLayer graphicsLayer = lazyLayoutItemAnimation4.n;
                                                    if (graphicsLayer != null) {
                                                        i10 = length4;
                                                        FiniteAnimationSpec finiteAnimationSpec = lazyLayoutItemAnimation4.f5427f;
                                                        if (!lazyLayoutItemAnimation4.c() && finiteAnimationSpec != null) {
                                                            lazyLayoutItemAnimation4.f(true);
                                                            ?? r9 = obj;
                                                            BuildersKt.c(lazyLayoutItemAnimation4.f5423a, r9, r9, new LazyLayoutItemAnimation$animateDisappearance$1(lazyLayoutItemAnimation4, finiteAnimationSpec, graphicsLayer, r9), 3);
                                                        }
                                                    } else {
                                                        i10 = length4;
                                                    }
                                                    if (lazyLayoutItemAnimation4.c()) {
                                                        arrayList2.add(lazyLayoutItemAnimation4);
                                                        DrawModifierNode drawModifierNode3 = this.f5461j;
                                                        if (drawModifierNode3 != null) {
                                                            DrawModifierNodeKt.a(drawModifierNode3);
                                                        }
                                                        obj = null;
                                                    } else {
                                                        lazyLayoutItemAnimation4.d();
                                                        obj = null;
                                                        itemInfo3.f5464a[i33] = null;
                                                    }
                                                }
                                                i32 = i34 + 1;
                                                i33 = i35;
                                                lazyLayoutItemAnimationArr5 = lazyLayoutItemAnimationArr;
                                                length4 = i10;
                                                iArr4 = iArr4;
                                                mutableScatterMap = mutableScatterMap;
                                            }
                                            z9 = true;
                                            i32 = i34 + 1;
                                            i33 = i35;
                                            lazyLayoutItemAnimationArr5 = lazyLayoutItemAnimationArr;
                                            length4 = i10;
                                            iArr4 = iArr4;
                                            mutableScatterMap = mutableScatterMap;
                                        } else {
                                            lazyLayoutItemAnimationArr = lazyLayoutItemAnimationArr5;
                                        }
                                        mutableScatterMap = mutableScatterMap;
                                        i10 = length4;
                                        i32 = i34 + 1;
                                        i33 = i35;
                                        lazyLayoutItemAnimationArr5 = lazyLayoutItemAnimationArr;
                                        length4 = i10;
                                        iArr4 = iArr4;
                                        mutableScatterMap = mutableScatterMap;
                                    }
                                    iArr3 = iArr4;
                                    mutableScatterMap4 = mutableScatterMap;
                                    if (!z9) {
                                        f(obj2);
                                    }
                                } else {
                                    iArr3 = iArr4;
                                    mutableScatterMap4 = mutableScatterMap;
                                    Constraints constraints = itemInfo3.f5465b;
                                    constraints.getClass();
                                    arrayList8 = arrayList2;
                                    LazyLayoutMeasuredItem lazyLayoutMeasuredItemA = lazyLayoutMeasuredItemProvider.a(iC2, itemInfo3.d, itemInfo3.f5467e, constraints.f10999a);
                                    lazyLayoutMeasuredItemA.n();
                                    LazyLayoutItemAnimation[] lazyLayoutItemAnimationArr6 = itemInfo3.f5464a;
                                    int length5 = lazyLayoutItemAnimationArr6.length;
                                    int i36 = 0;
                                    while (true) {
                                        if (i36 >= length5) {
                                            lazyLayoutMeasuredItem = lazyLayoutMeasuredItemA;
                                            if (lazyLayoutKeyIndexMap2 != null && iC2 == lazyLayoutKeyIndexMap2.c(obj2)) {
                                                f(obj2);
                                            }
                                        } else {
                                            LazyLayoutItemAnimation lazyLayoutItemAnimation5 = lazyLayoutItemAnimationArr6[i36];
                                            if (lazyLayoutItemAnimation5 != null) {
                                                lazyLayoutMeasuredItem = lazyLayoutMeasuredItemA;
                                                if (((Boolean) ((SnapshotMutableStateImpl) lazyLayoutItemAnimation5.f5428h).getF10755b()).booleanValue()) {
                                                }
                                            } else {
                                                lazyLayoutMeasuredItem = lazyLayoutMeasuredItemA;
                                            }
                                            i36++;
                                            lazyLayoutMeasuredItemA = lazyLayoutMeasuredItem;
                                        }
                                        itemInfo3.a(lazyLayoutMeasuredItem, coroutineScope, graphicsContext, i6, i7, itemInfo3.f5466c);
                                        LazyLayoutMeasuredItem lazyLayoutMeasuredItem7 = lazyLayoutMeasuredItem;
                                        if (iC2 < this.f5456c) {
                                            arrayList10.add(lazyLayoutMeasuredItem7);
                                        } else {
                                            arrayList9.add(lazyLayoutMeasuredItem7);
                                        }
                                    }
                                }
                                arrayList2 = arrayList8;
                                j8 = j4 >> 8;
                                i31 = i9 + 1;
                                z6 = z5;
                                jArr4 = jArr2;
                                iArr4 = iArr3;
                                mutableScatterMap = mutableScatterMap4;
                                i26 = i5;
                            }
                        } else {
                            iArr3 = iArr4;
                            i9 = i31;
                            jArr2 = jArr4;
                            j4 = j8;
                            mutableScatterMap4 = mutableScatterMap;
                            z5 = z6;
                        }
                        arrayList8 = arrayList2;
                        arrayList2 = arrayList8;
                        j8 = j4 >> 8;
                        i31 = i9 + 1;
                        z6 = z5;
                        jArr4 = jArr2;
                        iArr4 = iArr3;
                        mutableScatterMap = mutableScatterMap4;
                        i26 = i5;
                    }
                    iArr = iArr4;
                    arrayList7 = arrayList2;
                    jArr = jArr4;
                    mutableScatterMap2 = mutableScatterMap;
                    z4 = z6;
                    if (i30 != 8) {
                        break;
                    }
                } else {
                    iArr = iArr4;
                    arrayList7 = arrayList2;
                    jArr = jArr4;
                    mutableScatterMap2 = mutableScatterMap;
                    z4 = z6;
                }
                if (i29 == length3) {
                    break;
                }
                i29++;
                i26 = i5;
                arrayList2 = arrayList7;
                objArr2 = objArr3;
                z6 = z4;
                jArr4 = jArr;
                iArr4 = iArr;
                mutableScatterMap = mutableScatterMap2;
            }
        } else {
            iArr = iArr4;
            arrayList5 = arrayList3;
            arrayList6 = arrayList4;
            mutableScatterMap2 = mutableScatterMap;
            z4 = z6;
        }
        if (arrayList10.isEmpty()) {
            lazyLayoutKeyIndexMap3 = lazyLayoutKeyIndexMap;
            iArr2 = iArr;
            mutableScatterMap3 = mutableScatterMap2;
        } else {
            if (arrayList10.size() > 1) {
                lazyLayoutKeyIndexMap3 = lazyLayoutKeyIndexMap;
                CollectionsKt.m0(new Comparator() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator$onMeasured$$inlined$sortByDescending$2
                    @Override // java.util.Comparator
                    public final int compare(Object obj3, Object obj4) {
                        Object l = ((LazyLayoutMeasuredItem) obj4).getL();
                        LazyLayoutKeyIndexMap lazyLayoutKeyIndexMap8 = lazyLayoutKeyIndexMap3;
                        return Integer.valueOf(lazyLayoutKeyIndexMap8.c(l)).compareTo(Integer.valueOf(lazyLayoutKeyIndexMap8.c(((LazyLayoutMeasuredItem) obj3).getL())));
                    }
                }, arrayList10);
            } else {
                lazyLayoutKeyIndexMap3 = lazyLayoutKeyIndexMap;
            }
            int size5 = arrayList10.size();
            int i37 = 0;
            while (i37 < size5) {
                LazyLayoutMeasuredItem lazyLayoutMeasuredItem8 = (LazyLayoutMeasuredItem) arrayList10.get(i37);
                MutableScatterMap mutableScatterMap5 = mutableScatterMap2;
                Object objE3 = mutableScatterMap5.e(lazyLayoutMeasuredItem8.getL());
                objE3.getClass();
                ItemInfo itemInfo4 = (ItemInfo) objE3;
                int[] iArr5 = iArr;
                int iH3 = h(iArr5, lazyLayoutMeasuredItem8);
                if (z2) {
                    LazyLayoutMeasuredItem lazyLayoutMeasuredItem9 = (LazyLayoutMeasuredItem) CollectionsKt.B(arrayList);
                    long jO2 = lazyLayoutMeasuredItem9.o(0);
                    if (lazyLayoutMeasuredItem9.getF5214c()) {
                        IntOffset.Companion companion5 = IntOffset.f11012b;
                        j3 = jO2 & BodyPartID.bodyIdMax;
                    } else {
                        IntOffset.Companion companion6 = IntOffset.f11012b;
                        j3 = jO2 >> 32;
                    }
                    i8 = (int) j3;
                } else {
                    i8 = itemInfo4.f5468f;
                }
                lazyLayoutMeasuredItem8.d(i8 - iH3, itemInfo4.f5466c, i3, i4);
                if (z4) {
                    g(lazyLayoutMeasuredItem8, true);
                }
                i37++;
                mutableScatterMap2 = mutableScatterMap5;
                iArr = iArr5;
            }
            iArr2 = iArr;
            mutableScatterMap3 = mutableScatterMap2;
            ArraysKt.s(0, 0, 6, iArr2);
        }
        if (!arrayList9.isEmpty()) {
            if (arrayList9.size() > 1) {
                CollectionsKt.m0(new Comparator() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$2
                    @Override // java.util.Comparator
                    public final int compare(Object obj3, Object obj4) {
                        Object l = ((LazyLayoutMeasuredItem) obj3).getL();
                        LazyLayoutKeyIndexMap lazyLayoutKeyIndexMap8 = lazyLayoutKeyIndexMap3;
                        return Integer.valueOf(lazyLayoutKeyIndexMap8.c(l)).compareTo(Integer.valueOf(lazyLayoutKeyIndexMap8.c(((LazyLayoutMeasuredItem) obj4).getL())));
                    }
                }, arrayList9);
            }
            int size6 = arrayList9.size();
            for (int i38 = 0; i38 < size6; i38++) {
                LazyLayoutMeasuredItem lazyLayoutMeasuredItem10 = (LazyLayoutMeasuredItem) arrayList9.get(i38);
                Object objE4 = mutableScatterMap3.e(lazyLayoutMeasuredItem10.getL());
                objE4.getClass();
                ItemInfo itemInfo5 = (ItemInfo) objE4;
                lazyLayoutMeasuredItem10.d((itemInfo5.g - lazyLayoutMeasuredItem10.getR()) + h(iArr2, lazyLayoutMeasuredItem10), itemInfo5.f5466c, i3, i4);
                if (z4) {
                    g(lazyLayoutMeasuredItem10, true);
                }
            }
        }
        Collections.reverse(arrayList10);
        arrayList.addAll(0, arrayList10);
        arrayList.addAll(arrayList9);
        arrayList6.clear();
        arrayList5.clear();
        arrayList10.clear();
        arrayList9.clear();
        mutableScatterSet.f();
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0055 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:22:0x0057 A[LOOP:0: B:7:0x0013->B:22:0x0057, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:26:0x005a A[EDGE_INSN: B:26:0x005a->B:23:0x005a BREAK  A[LOOP:0: B:7:0x0013->B:22:0x0057], SYNTHETIC] */
    public final void e() {
        MutableScatterMap mutableScatterMap = this.f5454a;
        if (mutableScatterMap.g()) {
            Object[] objArr = mutableScatterMap.f3363c;
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
                                for (LazyLayoutItemAnimation lazyLayoutItemAnimation : ((ItemInfo) objArr[(i2 << 3) + i4]).f5464a) {
                                    if (lazyLayoutItemAnimation != null) {
                                        lazyLayoutItemAnimation.d();
                                    }
                                }
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
            mutableScatterMap.h();
        }
    }

    public final void f(Object obj) {
        ItemInfo itemInfo = (ItemInfo) this.f5454a.m(obj);
        if (itemInfo != null) {
            for (LazyLayoutItemAnimation lazyLayoutItemAnimation : itemInfo.f5464a) {
                if (lazyLayoutItemAnimation != null) {
                    lazyLayoutItemAnimation.d();
                }
            }
        }
    }

    public final void g(LazyLayoutMeasuredItem lazyLayoutMeasuredItem, boolean z) {
        Object objE = this.f5454a.e(lazyLayoutMeasuredItem.getL());
        objE.getClass();
        LazyLayoutItemAnimation[] lazyLayoutItemAnimationArr = ((ItemInfo) objE).f5464a;
        int length = lazyLayoutItemAnimationArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            LazyLayoutItemAnimation lazyLayoutItemAnimation = lazyLayoutItemAnimationArr[i2];
            int i4 = i3 + 1;
            if (lazyLayoutItemAnimation != null) {
                long jO = lazyLayoutMeasuredItem.o(i3);
                long j2 = lazyLayoutItemAnimation.l;
                LazyLayoutItemAnimation.s.getClass();
                if (!IntOffset.b(j2, LazyLayoutItemAnimation.t) && !IntOffset.b(j2, jO)) {
                    long jC = IntOffset.c(jO, j2);
                    FiniteAnimationSpec finiteAnimationSpec = lazyLayoutItemAnimation.f5426e;
                    if (finiteAnimationSpec != null) {
                        long jC2 = IntOffset.c(((IntOffset) ((SnapshotMutableStateImpl) lazyLayoutItemAnimation.q).getF10755b()).f11014a, jC);
                        lazyLayoutItemAnimation.h(jC2);
                        lazyLayoutItemAnimation.g(true);
                        lazyLayoutItemAnimation.g = z;
                        BuildersKt.c(lazyLayoutItemAnimation.f5423a, null, null, new LazyLayoutItemAnimation$animatePlacementDelta$1(lazyLayoutItemAnimation, finiteAnimationSpec, jC2, null), 3);
                    }
                }
                lazyLayoutItemAnimation.l = jO;
            }
            i2++;
            i3 = i4;
        }
    }
}
