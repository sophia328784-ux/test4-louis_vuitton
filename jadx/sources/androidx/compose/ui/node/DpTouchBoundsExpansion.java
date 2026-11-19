package androidx.compose.ui.node;

import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.unit.Dp;
import defpackage.d21;
import defpackage.fc;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001:\u0001\u000bB/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Landroidx/compose/ui/node/DpTouchBoundsExpansion;", "", "Landroidx/compose/ui/unit/Dp;", "start", "top", "end", "bottom", "", "isLayoutDirectionAware", "<init>", "(FFFFZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class DpTouchBoundsExpansion {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f9663a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f9664b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f9665c;
    public final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f9666e;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/node/DpTouchBoundsExpansion$Companion;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public DpTouchBoundsExpansion(float f2, float f3, float f4, float f5, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this.f9663a = f2;
        this.f9664b = f3;
        this.f9665c = f4;
        this.d = f5;
        this.f9666e = z;
        if (f2 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            InlineClassHelperKt.a("Left must be non-negative");
        }
        if (f3 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            InlineClassHelperKt.a("Top must be non-negative");
        }
        if (f4 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            InlineClassHelperKt.a("Right must be non-negative");
        }
        if (f5 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return;
        }
        InlineClassHelperKt.a("Bottom must be non-negative");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DpTouchBoundsExpansion)) {
            return false;
        }
        DpTouchBoundsExpansion dpTouchBoundsExpansion = (DpTouchBoundsExpansion) obj;
        return Dp.b(this.f9663a, dpTouchBoundsExpansion.f9663a) && Dp.b(this.f9664b, dpTouchBoundsExpansion.f9664b) && Dp.b(this.f9665c, dpTouchBoundsExpansion.f9665c) && Dp.b(this.d, dpTouchBoundsExpansion.d) && this.f9666e == dpTouchBoundsExpansion.f9666e;
    }

    public final int hashCode() {
        Dp.Companion companion = Dp.f11004c;
        return Boolean.hashCode(this.f9666e) + pq0.b(pq0.b(pq0.b(Float.hashCode(this.f9663a) * 31, 31, this.f9664b), 31, this.f9665c), 31, this.d);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("DpTouchBoundsExpansion(start=");
        fc.w(this.f9663a, ", top=", sb);
        fc.w(this.f9664b, ", end=", sb);
        fc.w(this.f9665c, ", bottom=", sb);
        fc.w(this.d, ", isLayoutDirectionAware=", sb);
        return d21.q(sb, this.f9666e, ')');
    }
}
