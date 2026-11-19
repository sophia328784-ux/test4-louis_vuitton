package androidx.compose.ui.graphics.drawscope;

import androidx.compose.ui.graphics.PathEffect;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.StrokeJoin;
import defpackage.pq0;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\rB;\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"Landroidx/compose/ui/graphics/drawscope/Stroke;", "Landroidx/compose/ui/graphics/drawscope/DrawStyle;", "", "width", "miter", "Landroidx/compose/ui/graphics/StrokeCap;", "cap", "Landroidx/compose/ui/graphics/StrokeJoin;", "join", "Landroidx/compose/ui/graphics/PathEffect;", "pathEffect", "<init>", "(FFIILandroidx/compose/ui/graphics/PathEffect;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Stroke extends DrawStyle {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Companion f9011f = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f9012a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f9013b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f9014c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final PathEffect f9015e;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/graphics/drawscope/Stroke$Companion;", "", "", "HairlineWidth", "F", "DefaultMiter", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        StrokeCap.f8932a.getClass();
        StrokeJoin.f8935a.getClass();
    }

    public /* synthetic */ Stroke(float f2, float f3, int i2, int i3, PathEffect pathEffect, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? Call.Parameters.DEFAULT_CAMERA_ZOOM : f2, (i4 & 2) != 0 ? 4.0f : f3, (i4 & 4) != 0 ? 0 : i2, (i4 & 8) != 0 ? 0 : i3, (i4 & 16) != 0 ? null : pathEffect, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Stroke)) {
            return false;
        }
        Stroke stroke = (Stroke) obj;
        if (this.f9012a == stroke.f9012a && this.f9013b == stroke.f9013b) {
            int i2 = stroke.f9014c;
            StrokeCap.Companion companion = StrokeCap.f8932a;
            if (this.f9014c == i2) {
                int i3 = stroke.d;
                StrokeJoin.Companion companion2 = StrokeJoin.f8935a;
                return this.d == i3 && Intrinsics.c(this.f9015e, stroke.f9015e);
            }
        }
        return false;
    }

    public final int hashCode() {
        int iB = pq0.b(Float.hashCode(this.f9012a) * 31, 31, this.f9013b);
        StrokeCap.Companion companion = StrokeCap.f8932a;
        int iB2 = tr.b(this.f9014c, iB, 31);
        StrokeJoin.Companion companion2 = StrokeJoin.f8935a;
        int iB3 = tr.b(this.d, iB2, 31);
        PathEffect pathEffect = this.f9015e;
        return iB3 + (pathEffect != null ? pathEffect.hashCode() : 0);
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("Stroke(width=");
        sb.append(this.f9012a);
        sb.append(", miter=");
        sb.append(this.f9013b);
        sb.append(", cap=");
        String str2 = "Unknown";
        int i2 = this.f9014c;
        if (i2 == 0) {
            StrokeCap.Companion companion = StrokeCap.f8932a;
            str = "Butt";
        } else if (i2 == StrokeCap.f8933b) {
            str = "Round";
        } else {
            str = i2 == StrokeCap.f8934c ? "Square" : "Unknown";
        }
        sb.append((Object) str);
        sb.append(", join=");
        int i3 = this.d;
        if (i3 == 0) {
            StrokeJoin.Companion companion2 = StrokeJoin.f8935a;
            str2 = "Miter";
        } else if (i3 == StrokeJoin.f8936b) {
            str2 = "Round";
        } else if (i3 == StrokeJoin.f8937c) {
            str2 = "Bevel";
        }
        sb.append((Object) str2);
        sb.append(", pathEffect=");
        sb.append(this.f9015e);
        sb.append(')');
        return sb.toString();
    }

    public Stroke(float f2, float f3, int i2, int i3, PathEffect pathEffect, DefaultConstructorMarker defaultConstructorMarker) {
        super(null);
        this.f9012a = f2;
        this.f9013b = f3;
        this.f9014c = i2;
        this.d = i3;
        this.f9015e = pathEffect;
    }
}
