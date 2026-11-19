package androidx.compose.ui.text;

import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import defpackage.fc;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0010BG\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"Landroidx/compose/ui/text/Bullet;", "Landroidx/compose/ui/text/AnnotatedString$Annotation;", "Landroidx/compose/ui/graphics/Shape;", "shape", "Landroidx/compose/ui/unit/TextUnit;", "width", "height", "padding", "Landroidx/compose/ui/graphics/Brush;", "brush", "", "alpha", "Landroidx/compose/ui/graphics/drawscope/DrawStyle;", "drawStyle", "<init>", "(Landroidx/compose/ui/graphics/Shape;JJJLandroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Bullet implements AnnotatedString.Annotation {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Companion f10437h = new Companion(null);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final long f10438i = TextUnitKt.d(1.0f, 8589934592L);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Bullet f10439j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Shape f10440a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f10441b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f10442c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Brush f10443e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f10444f;
    public final DrawStyle g;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/text/Bullet$Companion;", "", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        long jD = TextUnitKt.d(0.25f, 8589934592L);
        f10439j = new Bullet(CircleShape.f10449a, jD, jD, TextUnitKt.d(0.25f, 8589934592L), null, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 112, null);
    }

    public /* synthetic */ Bullet(Shape shape, long j2, long j3, long j4, Brush brush, float f2, DrawStyle drawStyle, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(shape, j2, j3, j4, (i2 & 16) != 0 ? null : brush, (i2 & 32) != 0 ? Float.NaN : f2, (i2 & 64) != 0 ? Fill.f9010a : drawStyle, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof Bullet)) {
            Bullet bullet = (Bullet) obj;
            return Intrinsics.c(this.f10440a, bullet.f10440a) && TextUnit.a(this.f10441b, bullet.f10441b) && TextUnit.a(this.f10442c, bullet.f10442c) && TextUnit.a(this.d, bullet.d) && Intrinsics.c(this.f10443e, bullet.f10443e) && this.f10444f == bullet.f10444f && Intrinsics.c(this.g, bullet.g);
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.f10440a.hashCode() * 31;
        TextUnit.Companion companion = TextUnit.f11023b;
        int iA = fc.a(fc.a(fc.a(iHashCode, 31, this.f10441b), 31, this.f10442c), 31, this.d);
        Brush brush = this.f10443e;
        return this.g.hashCode() + pq0.b((iA + (brush != null ? brush.hashCode() : 0)) * 31, 31, this.f10444f);
    }

    public final String toString() {
        return "Bullet(shape=" + this.f10440a + ", size=(" + ((Object) TextUnit.e(this.f10441b)) + ", " + ((Object) TextUnit.e(this.f10442c)) + "), padding=" + ((Object) TextUnit.e(this.d)) + ", brush=" + this.f10443e + ", alpha=" + this.f10444f + ", drawStyle=" + this.g + ')';
    }

    public Bullet(Shape shape, long j2, long j3, long j4, Brush brush, float f2, DrawStyle drawStyle, DefaultConstructorMarker defaultConstructorMarker) {
        this.f10440a = shape;
        this.f10441b = j2;
        this.f10442c = j3;
        this.d = j4;
        this.f10443e = brush;
        this.f10444f = f2;
        this.g = drawStyle;
    }
}
