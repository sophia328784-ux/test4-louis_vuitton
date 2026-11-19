package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.PathFillType;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.StrokeJoin;
import defpackage.n00;
import defpackage.pq0;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001B\u009b\u0001\b\u0000\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\t\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0012\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u000b¢\u0006\u0004\b\u0018\u0010\u0019¨\u0006\u001a"}, d2 = {"Landroidx/compose/ui/graphics/vector/VectorPath;", "Landroidx/compose/ui/graphics/vector/VectorNode;", "", "name", "", "Landroidx/compose/ui/graphics/vector/PathNode;", "pathData", "Landroidx/compose/ui/graphics/PathFillType;", "pathFillType", "Landroidx/compose/ui/graphics/Brush;", "fill", "", "fillAlpha", "stroke", "strokeAlpha", "strokeLineWidth", "Landroidx/compose/ui/graphics/StrokeCap;", "strokeLineCap", "Landroidx/compose/ui/graphics/StrokeJoin;", "strokeLineJoin", "strokeLineMiter", "trimPathStart", "trimPathEnd", "trimPathOffset", "<init>", "(Ljava/lang/String;Ljava/util/List;ILandroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class VectorPath extends VectorNode {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f9179b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f9180c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Brush f9181e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f9182f;
    public final Brush g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f9183h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f9184i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f9185j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f9186k;
    public final float l;
    public final float m;
    public final float n;
    public final float o;

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ VectorPath(String str, List list, int i2, Brush brush, float f2, Brush brush2, float f3, float f4, int i3, int i4, float f5, float f6, float f7, float f8, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        int i6;
        int i7;
        String str2 = (i5 & 1) != 0 ? "" : str;
        Brush brush3 = (i5 & 8) != 0 ? null : brush;
        float f9 = (i5 & 16) != 0 ? 1.0f : f2;
        Brush brush4 = (i5 & 32) != 0 ? null : brush2;
        float f10 = (i5 & 64) != 0 ? 1.0f : f3;
        float f11 = (i5 & 128) != 0 ? 0.0f : f4;
        if ((i5 & 256) != 0) {
            EmptyList emptyList = VectorKt.f9173a;
            i6 = 0;
        } else {
            i6 = i3;
        }
        if ((i5 & 512) != 0) {
            EmptyList emptyList2 = VectorKt.f9173a;
            i7 = 0;
        } else {
            i7 = i4;
        }
        this(str2, list, i2, brush3, f9, brush4, f10, f11, i6, i7, (i5 & 1024) != 0 ? 4.0f : f5, (i5 & 2048) != 0 ? 0.0f : f6, (i5 & 4096) != 0 ? 1.0f : f7, (i5 & 8192) != 0 ? 0.0f : f8, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && VectorPath.class == obj.getClass()) {
            VectorPath vectorPath = (VectorPath) obj;
            if (Intrinsics.c(this.f9179b, vectorPath.f9179b) && Intrinsics.c(this.f9181e, vectorPath.f9181e) && this.f9182f == vectorPath.f9182f && Intrinsics.c(this.g, vectorPath.g) && this.f9183h == vectorPath.f9183h && this.f9184i == vectorPath.f9184i) {
                int i2 = vectorPath.f9185j;
                StrokeCap.Companion companion = StrokeCap.f8932a;
                if (this.f9185j == i2) {
                    int i3 = vectorPath.f9186k;
                    StrokeJoin.Companion companion2 = StrokeJoin.f8935a;
                    if (this.f9186k == i3 && this.l == vectorPath.l && this.m == vectorPath.m && this.n == vectorPath.n && this.o == vectorPath.o) {
                        int i4 = vectorPath.d;
                        PathFillType.Companion companion3 = PathFillType.f8908a;
                        return this.d == i4 && Intrinsics.c(this.f9180c, vectorPath.f9180c);
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int iA = n00.a(this.f9179b.hashCode() * 31, 31, this.f9180c);
        Brush brush = this.f9181e;
        int iB = pq0.b((iA + (brush != null ? brush.hashCode() : 0)) * 31, 31, this.f9182f);
        Brush brush2 = this.g;
        int iB2 = pq0.b(pq0.b((iB + (brush2 != null ? brush2.hashCode() : 0)) * 31, 31, this.f9183h), 31, this.f9184i);
        StrokeCap.Companion companion = StrokeCap.f8932a;
        int iB3 = tr.b(this.f9185j, iB2, 31);
        StrokeJoin.Companion companion2 = StrokeJoin.f8935a;
        int iB4 = pq0.b(pq0.b(pq0.b(pq0.b(tr.b(this.f9186k, iB3, 31), 31, this.l), 31, this.m), 31, this.n), 31, this.o);
        PathFillType.Companion companion3 = PathFillType.f8908a;
        return Integer.hashCode(this.d) + iB4;
    }

    public VectorPath(String str, List list, int i2, Brush brush, float f2, Brush brush2, float f3, float f4, int i3, int i4, float f5, float f6, float f7, float f8, DefaultConstructorMarker defaultConstructorMarker) {
        super(null);
        this.f9179b = str;
        this.f9180c = list;
        this.d = i2;
        this.f9181e = brush;
        this.f9182f = f2;
        this.g = brush2;
        this.f9183h = f3;
        this.f9184i = f4;
        this.f9185j = i3;
        this.f9186k = i4;
        this.l = f5;
        this.m = f6;
        this.n = f7;
        this.o = f8;
    }
}
