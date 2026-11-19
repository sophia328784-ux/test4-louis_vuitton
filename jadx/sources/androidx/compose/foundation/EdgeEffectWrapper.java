package androidx.compose.foundation;

import android.content.Context;
import android.os.Build;
import android.widget.EdgeEffect;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.unit.IntSize;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/foundation/EdgeEffectWrapper;", "", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "", "glowColor", "<init>", "(Landroid/content/Context;I)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class EdgeEffectWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f4200a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f4201b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f4202c;
    public EdgeEffect d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public EdgeEffect f4203e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public EdgeEffect f4204f;
    public EdgeEffect g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public EdgeEffect f4205h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public EdgeEffect f4206i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public EdgeEffect f4207j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public EdgeEffect f4208k;

    public EdgeEffectWrapper(Context context, int i2) {
        this.f4200a = context;
        this.f4201b = i2;
        IntSize.f11020b.getClass();
        this.f4202c = 0L;
    }

    public static boolean f(EdgeEffect edgeEffect) {
        if (edgeEffect == null) {
            return false;
        }
        return !edgeEffect.isFinished();
    }

    public static boolean g(EdgeEffect edgeEffect) {
        if (edgeEffect == null) {
            return false;
        }
        return !(EdgeEffectCompat.b(edgeEffect) == Call.Parameters.DEFAULT_CAMERA_ZOOM);
    }

    public final EdgeEffect a(Orientation orientation) {
        int i2 = Build.VERSION.SDK_INT;
        Context context = this.f4200a;
        EdgeEffect edgeEffectA = i2 >= 31 ? Api31Impl.a(context) : new GlowEdgeEffectCompat(context);
        edgeEffectA.setColor(this.f4201b);
        long j2 = this.f4202c;
        IntSize.f11020b.getClass();
        if (!IntSize.b(j2, 0L)) {
            Orientation orientation2 = Orientation.Vertical;
            long j3 = this.f4202c;
            if (orientation == orientation2) {
                edgeEffectA.setSize((int) (j3 >> 32), (int) (j3 & BodyPartID.bodyIdMax));
                return edgeEffectA;
            }
            edgeEffectA.setSize((int) (BodyPartID.bodyIdMax & j3), (int) (j3 >> 32));
        }
        return edgeEffectA;
    }

    public final EdgeEffect b() {
        EdgeEffect edgeEffect = this.f4203e;
        if (edgeEffect != null) {
            return edgeEffect;
        }
        EdgeEffect edgeEffectA = a(Orientation.Vertical);
        this.f4203e = edgeEffectA;
        return edgeEffectA;
    }

    public final EdgeEffect c() {
        EdgeEffect edgeEffect = this.f4204f;
        if (edgeEffect != null) {
            return edgeEffect;
        }
        EdgeEffect edgeEffectA = a(Orientation.Horizontal);
        this.f4204f = edgeEffectA;
        return edgeEffectA;
    }

    public final EdgeEffect d() {
        EdgeEffect edgeEffect = this.g;
        if (edgeEffect != null) {
            return edgeEffect;
        }
        EdgeEffect edgeEffectA = a(Orientation.Horizontal);
        this.g = edgeEffectA;
        return edgeEffectA;
    }

    public final EdgeEffect e() {
        EdgeEffect edgeEffect = this.d;
        if (edgeEffect != null) {
            return edgeEffect;
        }
        EdgeEffect edgeEffectA = a(Orientation.Vertical);
        this.d = edgeEffectA;
        return edgeEffectA;
    }
}
