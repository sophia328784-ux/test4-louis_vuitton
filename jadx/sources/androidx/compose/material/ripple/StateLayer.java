package androidx.compose.material.ripple;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.foundation.interaction.Interaction;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/material/ripple/StateLayer;", "", "", "bounded", "Lkotlin/Function0;", "Landroidx/compose/material/ripple/RippleAlpha;", "rippleAlpha", "<init>", "(ZLkotlin/jvm/functions/Function0;)V", "material-ripple"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class StateLayer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f6538a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function0 f6539b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Animatable f6540c = AnimatableKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
    public final ArrayList d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Interaction f6541e;

    public StateLayer(boolean z, Function0<RippleAlpha> function0) {
        this.f6538a = z;
        this.f6539b = function0;
    }
}
