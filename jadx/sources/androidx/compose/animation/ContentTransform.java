package androidx.compose.animation;

import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/compose/animation/ContentTransform;", "", "Landroidx/compose/animation/EnterTransition;", "targetContentEnter", "Landroidx/compose/animation/ExitTransition;", "initialContentExit", "", "targetContentZIndex", "Landroidx/compose/animation/SizeTransform;", "sizeTransform", "<init>", "(Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;FLandroidx/compose/animation/SizeTransform;)V", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ContentTransform {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EnterTransition f3552a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ExitTransition f3553b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableFloatState f3554c;
    public SizeTransform d;

    public /* synthetic */ ContentTransform(EnterTransition enterTransition, ExitTransition exitTransition, float f2, SizeTransform sizeTransform, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(enterTransition, exitTransition, (i2 & 4) != 0 ? Call.Parameters.DEFAULT_CAMERA_ZOOM : f2, (i2 & 8) != 0 ? AnimatedContentKt.d(3) : sizeTransform);
    }

    public ContentTransform(EnterTransition enterTransition, ExitTransition exitTransition, float f2, SizeTransform sizeTransform) {
        this.f3552a = enterTransition;
        this.f3553b = exitTransition;
        this.f3554c = PrimitiveSnapshotStateKt.a(f2);
        this.d = sizeTransform;
    }
}
