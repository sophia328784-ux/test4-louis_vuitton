package androidx.compose.animation;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/animation/EnterTransitionImpl;", "Landroidx/compose/animation/EnterTransition;", "Landroidx/compose/animation/TransitionData;", DbParams.KEY_DATA, "<init>", "(Landroidx/compose/animation/TransitionData;)V", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class EnterTransitionImpl extends EnterTransition {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TransitionData f3628c;

    public EnterTransitionImpl(TransitionData transitionData) {
        super(null);
        this.f3628c = transitionData;
    }

    @Override // androidx.compose.animation.EnterTransition
    /* JADX INFO: renamed from: a, reason: from getter */
    public final TransitionData getF3628c() {
        return this.f3628c;
    }
}
