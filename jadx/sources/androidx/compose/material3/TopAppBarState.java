package androidx.compose.material3;

import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.saveable.ListSaverKt;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import defpackage.e31;
import defpackage.z21;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.RangesKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001:\u0001\bB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Landroidx/compose/material3/TopAppBarState;", "", "", "initialHeightOffsetLimit", "initialHeightOffset", "initialContentOffset", "<init>", "(FFF)V", "Companion", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class TopAppBarState {
    public static final Companion d = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final SaverKt$Saver$1 f7438e = ListSaverKt.a(new e31(7), new z21(26));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f7439a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableFloatState f7440b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableFloatState f7441c;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/material3/TopAppBarState$Companion;", "", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public TopAppBarState(float f2, float f3, float f4) {
        this.f7439a = f2;
        this.f7440b = PrimitiveSnapshotStateKt.a(f4);
        this.f7441c = PrimitiveSnapshotStateKt.a(f3);
    }

    public final float a() {
        return this.f7439a == Call.Parameters.DEFAULT_CAMERA_ZOOM ? Call.Parameters.DEFAULT_CAMERA_ZOOM : b() / this.f7439a;
    }

    public final float b() {
        return ((SnapshotMutableFloatStateImpl) this.f7441c).a();
    }

    public final void c(float f2) {
        ((SnapshotMutableFloatStateImpl) this.f7441c).w(RangesKt.c(f2, this.f7439a, Call.Parameters.DEFAULT_CAMERA_ZOOM));
    }
}
