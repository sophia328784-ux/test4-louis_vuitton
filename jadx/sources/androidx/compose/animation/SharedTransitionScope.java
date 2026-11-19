package androidx.compose.animation;

import androidx.collection.MutableScatterMap;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.ContentScale$Companion$FillWidth$1;
import androidx.compose.ui.layout.LookaheadScope;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\bg\u0018\u00002\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0007À\u0006\u0001"}, d2 = {"Landroidx/compose/animation/SharedTransitionScope;", "Landroidx/compose/ui/layout/LookaheadScope;", "PlaceholderSize", "ResizeMode", "OverlayClip", "SharedContentState", "SharedContentConfig", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface SharedTransitionScope extends LookaheadScope {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/compose/animation/SharedTransitionScope$OverlayClip;", "", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface OverlayClip {
        Path a(SharedContentState sharedContentState);
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bæ\u0080\u0001\u0018\u00002\u00020\u0001:\u0001\u0002ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0003À\u0006\u0001"}, d2 = {"Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;", "", "Companion", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface PlaceholderSize {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Companion f3675a = Companion.f3676a;

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize$Companion;", "", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ Companion f3676a = new Companion();

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public static final PlaceholderSize f3677b = null;
        }

        long a(long j2, long j3);
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0001\u0002\u0082\u0001\u0001\u0003ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0004À\u0006\u0001"}, d2 = {"Landroidx/compose/animation/SharedTransitionScope$ResizeMode;", "", "Companion", "Landroidx/compose/animation/ScaleToBoundsImpl;", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface ResizeMode {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/animation/SharedTransitionScope$ResizeMode$Companion;", "", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            public static ScaleToBoundsImpl a() {
                ContentScale.f9447a.getClass();
                ContentScale.Companion companion = ContentScale.Companion.f9448a;
                Alignment.f8582a.getClass();
                BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                ContentScale$Companion$FillWidth$1 contentScale$Companion$FillWidth$1 = ContentScale.Companion.f9451e;
                SpringSpec springSpec = SharedTransitionScopeKt.f3704a;
                ContentScale.f9447a.getClass();
                Alignment.f8582a.getClass();
                if (biasAlignment != Alignment.Companion.f8584b && biasAlignment != Alignment.Companion.f8585c && biasAlignment != Alignment.Companion.d && biasAlignment != Alignment.Companion.f8586e && biasAlignment != Alignment.Companion.f8587f && biasAlignment != Alignment.Companion.g && biasAlignment != Alignment.Companion.f8588h && biasAlignment != Alignment.Companion.f8589i && biasAlignment != Alignment.Companion.f8590j) {
                    return new ScaleToBoundsImpl(contentScale$Companion$FillWidth$1, biasAlignment);
                }
                MutableScatterMap mutableScatterMap = SharedTransitionScopeKt.f3706c;
                Object objE = mutableScatterMap.e(contentScale$Companion$FillWidth$1);
                if (objE == null) {
                    objE = new MutableScatterMap(0, 1, null);
                    mutableScatterMap.o(contentScale$Companion$FillWidth$1, objE);
                }
                MutableScatterMap mutableScatterMap2 = (MutableScatterMap) objE;
                Object objE2 = mutableScatterMap2.e(biasAlignment);
                if (objE2 == null) {
                    objE2 = new ScaleToBoundsImpl(contentScale$Companion$FillWidth$1, biasAlignment);
                    mutableScatterMap2.o(biasAlignment, objE2);
                }
                return (ScaleToBoundsImpl) objE2;
            }
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/compose/animation/SharedTransitionScope$SharedContentConfig;", "", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface SharedContentConfig {
    }

    static SharedContentState B(Object obj, Composer composer, int i2) {
        composer.L(800730162);
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        composer.L(-148945892);
        boolean zK = composer.K(obj);
        Object objX = composer.x();
        SharedTransitionDefaults.SharedContentConfig sharedContentConfig = SharedTransitionDefaults.SharedContentConfig.f3674a;
        if (zK || objX == Composer.Companion.f7939a) {
            objX = new SharedContentState(obj, sharedContentConfig);
            composer.q(objX);
        }
        SharedContentState sharedContentState = (SharedContentState) objX;
        ((SnapshotMutableStateImpl) sharedContentState.f3680b).setValue(sharedContentConfig);
        composer.F();
        composer.F();
        return sharedContentState;
    }

    static /* synthetic */ Modifier f(SharedTransitionScope sharedTransitionScope, Modifier modifier, SharedContentState sharedContentState, AnimatedVisibilityScope animatedVisibilityScope) {
        PlaceholderSize.f3675a.getClass();
        return sharedTransitionScope.h(modifier, sharedContentState, animatedVisibilityScope, SharedTransitionScopeKt.f3705b);
    }

    static Modifier u(SharedTransitionScope sharedTransitionScope, Modifier modifier, SharedContentState sharedContentState, AnimatedVisibilityScope animatedVisibilityScope, EnterTransition enterTransition, ExitTransition exitTransition, ScaleToBoundsImpl scaleToBoundsImpl, int i2) {
        if ((i2 & 4) != 0) {
            enterTransition = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
        }
        EnterTransition enterTransition2 = enterTransition;
        ExitTransition exitTransitionH = (i2 & 8) != 0 ? EnterExitTransitionKt.h(null, 3) : exitTransition;
        PlaceholderSize.f3675a.getClass();
        return sharedTransitionScope.z(modifier, sharedContentState, animatedVisibilityScope, enterTransition2, exitTransitionH, scaleToBoundsImpl, SharedTransitionScopeKt.f3705b);
    }

    Modifier h(Modifier modifier, SharedContentState sharedContentState, AnimatedVisibilityScope animatedVisibilityScope, SharedTransitionScopeKt$ParentClip$1 sharedTransitionScopeKt$ParentClip$1);

    boolean j();

    Modifier l(Modifier modifier, Function0 function0);

    Modifier z(Modifier modifier, SharedContentState sharedContentState, AnimatedVisibilityScope animatedVisibilityScope, EnterTransition enterTransition, ExitTransition exitTransition, ScaleToBoundsImpl scaleToBoundsImpl, SharedTransitionScopeKt$ParentClip$1 sharedTransitionScopeKt$ParentClip$1);

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u001b\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/animation/SharedTransitionScope$SharedContentState;", "", ConfigurationName.KEY, "Landroidx/compose/animation/SharedTransitionScope$SharedContentConfig;", "config", "<init>", "(Ljava/lang/Object;Landroidx/compose/animation/SharedTransitionScope$SharedContentConfig;)V", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class SharedContentState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f3679a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final MutableState f3680b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final MutableState f3681c;

        public SharedContentState(Object obj, SharedContentConfig sharedContentConfig) {
            this.f3679a = obj;
            this.f3680b = SnapshotStateKt.g(sharedContentConfig);
            this.f3681c = SnapshotStateKt.g(null);
        }

        public /* synthetic */ SharedContentState(Object obj, SharedContentConfig sharedContentConfig, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(obj, (i2 & 2) != 0 ? SharedTransitionDefaults.SharedContentConfig.f3674a : sharedContentConfig);
        }
    }
}
