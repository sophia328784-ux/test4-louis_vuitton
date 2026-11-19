package androidx.compose.ui.graphics.painter;

import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.FilterQuality;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import defpackage.fc;
import defpackage.md;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/ui/graphics/painter/BitmapPainter;", "Landroidx/compose/ui/graphics/painter/Painter;", "Landroidx/compose/ui/graphics/ImageBitmap;", "image", "Landroidx/compose/ui/unit/IntOffset;", "srcOffset", "Landroidx/compose/ui/unit/IntSize;", "srcSize", "<init>", "(Landroidx/compose/ui/graphics/ImageBitmap;JJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class BitmapPainter extends Painter {
    public final ImageBitmap g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f9047h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f9048i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f9049j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f9050k;
    public float l;
    public ColorFilter m;

    public BitmapPainter(ImageBitmap imageBitmap, long j2, long j3, DefaultConstructorMarker defaultConstructorMarker) {
        int i2;
        int i3;
        this.g = imageBitmap;
        this.f9047h = j2;
        this.f9048i = j3;
        FilterQuality.f8878a.getClass();
        this.f9049j = FilterQuality.f8879b;
        IntOffset.Companion companion = IntOffset.f11012b;
        if (((int) (j2 >> 32)) < 0 || ((int) (j2 & BodyPartID.bodyIdMax)) < 0 || (i2 = (int) (j3 >> 32)) < 0 || (i3 = (int) (BodyPartID.bodyIdMax & j3)) < 0 || i2 > imageBitmap.getWidth() || i3 > imageBitmap.getHeight()) {
            md.n("Failed requirement.");
            throw null;
        }
        this.f9050k = j3;
        this.l = 1.0f;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final boolean a(float f2) {
        this.l = f2;
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final boolean b(ColorFilter colorFilter) {
        this.m = colorFilter;
        return true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BitmapPainter)) {
            return false;
        }
        BitmapPainter bitmapPainter = (BitmapPainter) obj;
        if (!Intrinsics.c(this.g, bitmapPainter.g) || !IntOffset.b(this.f9047h, bitmapPainter.f9047h) || !IntSize.b(this.f9048i, bitmapPainter.f9048i)) {
            return false;
        }
        int i2 = this.f9049j;
        int i3 = bitmapPainter.f9049j;
        FilterQuality.Companion companion = FilterQuality.f8878a;
        return i2 == i3;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final long g() {
        return IntSizeKt.d(this.f9050k);
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final void h(DrawScope drawScope) {
        long jRound = (((long) Math.round(Float.intBitsToFloat((int) (drawScope.b() >> 32)))) << 32) | (((long) Math.round(Float.intBitsToFloat((int) (drawScope.b() & BodyPartID.bodyIdMax)))) & BodyPartID.bodyIdMax);
        IntSize.Companion companion = IntSize.f11020b;
        DrawScope.X(drawScope, this.g, this.f9047h, this.f9048i, 0L, jRound, this.l, null, this.m, 0, this.f9049j, 328);
    }

    public final int hashCode() {
        int iHashCode = this.g.hashCode() * 31;
        IntOffset.Companion companion = IntOffset.f11012b;
        int iA = fc.a(iHashCode, 31, this.f9047h);
        IntSize.Companion companion2 = IntSize.f11020b;
        int iA2 = fc.a(iA, 31, this.f9048i);
        int i2 = this.f9049j;
        FilterQuality.Companion companion3 = FilterQuality.f8878a;
        return Integer.hashCode(i2) + iA2;
    }

    public final String toString() {
        return "BitmapPainter(image=" + this.g + ", srcOffset=" + ((Object) IntOffset.e(this.f9047h)) + ", srcSize=" + ((Object) IntSize.c(this.f9048i)) + ", filterQuality=" + ((Object) FilterQuality.a(this.f9049j)) + ')';
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public BitmapPainter(ImageBitmap imageBitmap, long j2, long j3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 2) != 0) {
            IntOffset.f11012b.getClass();
            j2 = 0;
        }
        long j4 = j2;
        if ((i2 & 4) != 0) {
            j3 = (((long) imageBitmap.getWidth()) << 32) | (((long) imageBitmap.getHeight()) & BodyPartID.bodyIdMax);
            IntSize.Companion companion = IntSize.f11020b;
        }
        this(imageBitmap, j4, j3, null);
    }
}
