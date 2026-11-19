package androidx.compose.material3;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.DecayAnimationSpec;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bg\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/compose/material3/TopAppBarScrollBehavior;", "", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface TopAppBarScrollBehavior {
    /* JADX INFO: renamed from: a */
    ExitUntilCollapsedScrollBehavior$nestedScrollConnection$1 getF6907e();

    /* JADX INFO: renamed from: b */
    DecayAnimationSpec getF6906c();

    /* JADX INFO: renamed from: c */
    AnimationSpec getF6905b();

    /* JADX INFO: renamed from: getState */
    TopAppBarState getF6904a();
}
