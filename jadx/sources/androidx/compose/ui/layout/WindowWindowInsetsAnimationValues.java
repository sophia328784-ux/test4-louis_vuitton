package androidx.compose.ui.layout;

import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableLongState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.runtime.SnapshotLongStateKt;
import androidx.compose.runtime.SnapshotStateKt;
import defpackage.d21;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/layout/WindowWindowInsetsAnimationValues;", "Landroidx/compose/ui/layout/PlatformWindowInsetsAnimation;", "", "name", "<init>", "(Ljava/lang/String;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class WindowWindowInsetsAnimationValues implements PlatformWindowInsetsAnimation {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final RectRulers f9606f;
    public final RectRulers g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableState f9602a = SnapshotStateKt.g(Boolean.TRUE);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableState f9603b = SnapshotStateKt.g(Boolean.FALSE);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableFloatState f9604c = PrimitiveSnapshotStateKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
    public final MutableLongState d = SnapshotLongStateKt.a(0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableFloatState f9605e = PrimitiveSnapshotStateKt.a(1.0f);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f9607h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f9608i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f9609j = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f9610k = -1;

    public WindowWindowInsetsAnimationValues(String str) {
        this.f9606f = new RectRulersImpl(d21.j(str, " source"));
        this.g = new RectRulersImpl(d21.j(str, " target"));
    }
}
