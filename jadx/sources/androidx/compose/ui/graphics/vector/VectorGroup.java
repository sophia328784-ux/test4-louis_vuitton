package androidx.compose.ui.graphics.vector;

import defpackage.n00;
import defpackage.pq0;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00010\u0002By\b\u0000\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0005\u0012\b\b\u0002\u0010\t\u001a\u00020\u0005\u0012\b\b\u0002\u0010\n\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0005\u0012\b\b\u0002\u0010\f\u001a\u00020\u0005\u0012\u000e\b\u0002\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u000e\b\u0002\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00010\r¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Landroidx/compose/ui/graphics/vector/VectorGroup;", "Landroidx/compose/ui/graphics/vector/VectorNode;", "", "", "name", "", "rotation", "pivotX", "pivotY", "scaleX", "scaleY", "translationX", "translationY", "", "Landroidx/compose/ui/graphics/vector/PathNode;", "clipPathData", "children", "<init>", "(Ljava/lang/String;FFFFFFFLjava/util/List;Ljava/util/List;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class VectorGroup extends VectorNode implements Iterable<VectorNode>, KMappedMarker {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f9164b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f9165c;
    public final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f9166e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f9167f;
    public final float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f9168h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f9169i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f9170j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final List f9171k;

    /* JADX INFO: renamed from: androidx.compose.ui.graphics.vector.VectorGroup$iterator$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"androidx/compose/ui/graphics/vector/VectorGroup$iterator$1", "", "Landroidx/compose/ui/graphics/vector/VectorNode;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class AnonymousClass1 implements Iterator<VectorNode>, KMappedMarker {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Iterator f9172b;

        public AnonymousClass1(VectorGroup vectorGroup) {
            this.f9172b = vectorGroup.f9171k.iterator();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f9172b.hasNext();
        }

        @Override // java.util.Iterator
        public final VectorNode next() {
            return (VectorNode) this.f9172b.next();
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public VectorGroup(String str, float f2, float f3, float f4, float f5, float f6, float f7, float f8, List list, List list2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? 0.0f : f2, (i2 & 4) != 0 ? 0.0f : f3, (i2 & 8) != 0 ? 0.0f : f4, (i2 & 16) != 0 ? 1.0f : f5, (i2 & 32) != 0 ? 1.0f : f6, (i2 & 64) != 0 ? 0.0f : f7, (i2 & 128) != 0 ? 0.0f : f8, (i2 & 256) != 0 ? VectorKt.f9173a : list, (i2 & 512) != 0 ? EmptyList.f71768b : list2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof VectorGroup)) {
            VectorGroup vectorGroup = (VectorGroup) obj;
            return Intrinsics.c(this.f9164b, vectorGroup.f9164b) && this.f9165c == vectorGroup.f9165c && this.d == vectorGroup.d && this.f9166e == vectorGroup.f9166e && this.f9167f == vectorGroup.f9167f && this.g == vectorGroup.g && this.f9168h == vectorGroup.f9168h && this.f9169i == vectorGroup.f9169i && Intrinsics.c(this.f9170j, vectorGroup.f9170j) && Intrinsics.c(this.f9171k, vectorGroup.f9171k);
        }
        return false;
    }

    public final int hashCode() {
        return this.f9171k.hashCode() + n00.a(pq0.b(pq0.b(pq0.b(pq0.b(pq0.b(pq0.b(pq0.b(this.f9164b.hashCode() * 31, 31, this.f9165c), 31, this.d), 31, this.f9166e), 31, this.f9167f), 31, this.g), 31, this.f9168h), 31, this.f9169i), 31, this.f9170j);
    }

    @Override // java.lang.Iterable
    public final Iterator<VectorNode> iterator() {
        return new AnonymousClass1(this);
    }

    public VectorGroup(String str, float f2, float f3, float f4, float f5, float f6, float f7, float f8, List<? extends PathNode> list, List<? extends VectorNode> list2) {
        super(null);
        this.f9164b = str;
        this.f9165c = f2;
        this.d = f3;
        this.f9166e = f4;
        this.f9167f = f5;
        this.g = f6;
        this.f9168h = f7;
        this.f9169i = f8;
        this.f9170j = list;
        this.f9171k = list2;
    }

    public VectorGroup() {
        this(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, 1023, null);
    }
}
