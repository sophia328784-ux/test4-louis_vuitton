package androidx.compose.foundation.lazy.layout;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.graphics.GraphicsContext;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.unit.IntOffset;
import defpackage.c70;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0001\u000bB+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;", "", "Lkotlinx/coroutines/CoroutineScope;", "coroutineScope", "Landroidx/compose/ui/graphics/GraphicsContext;", "graphicsContext", "Lkotlin/Function0;", "", "onLayerPropertyChanged", "<init>", "(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;Lkotlin/jvm/functions/Function0;)V", "Companion", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LazyLayoutItemAnimation {
    public static final Companion s = new Companion(null);
    public static final long t;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CoroutineScope f5423a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GraphicsContext f5424b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function0 f5425c;
    public FiniteAnimationSpec d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public FiniteAnimationSpec f5426e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public FiniteAnimationSpec f5427f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MutableState f5428h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MutableState f5429i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MutableState f5430j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MutableState f5431k;
    public long l;
    public long m;
    public GraphicsLayer n;
    public final Animatable o;
    public final Animatable p;
    public final MutableState q;
    public long r;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$Companion;", "", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        IntOffset.Companion companion = IntOffset.f11012b;
        t = 9223372034707292159L;
    }

    public LazyLayoutItemAnimation(CoroutineScope coroutineScope, GraphicsContext graphicsContext, Function0<Unit> function0) {
        this.f5423a = coroutineScope;
        this.f5424b = graphicsContext;
        this.f5425c = function0;
        Boolean bool = Boolean.FALSE;
        this.f5428h = SnapshotStateKt.g(bool);
        this.f5429i = SnapshotStateKt.g(bool);
        this.f5430j = SnapshotStateKt.g(bool);
        this.f5431k = SnapshotStateKt.g(bool);
        long j2 = t;
        this.l = j2;
        IntOffset.f11012b.getClass();
        this.m = 0L;
        this.n = graphicsContext != null ? graphicsContext.a() : null;
        String str = null;
        this.o = new Animatable(new IntOffset(0L), VectorConvertersKt.g, null, str, 12, null);
        this.p = new Animatable(Float.valueOf(1.0f), VectorConvertersKt.f4036a, str, null, 12, null);
        this.q = SnapshotStateKt.g(new IntOffset(0L));
        this.r = j2;
    }

    public final void a() {
        GraphicsLayer graphicsLayer = this.n;
        FiniteAnimationSpec finiteAnimationSpec = this.d;
        boolean zBooleanValue = ((Boolean) ((SnapshotMutableStateImpl) this.f5429i).getF10755b()).booleanValue();
        CoroutineScope coroutineScope = this.f5423a;
        if (zBooleanValue || finiteAnimationSpec == null || graphicsLayer == null) {
            if (c()) {
                if (graphicsLayer != null) {
                    graphicsLayer.g(1.0f);
                }
                BuildersKt.c(coroutineScope, null, null, new LazyLayoutItemAnimation$animateAppearance$1(this, null), 3);
                return;
            }
            return;
        }
        e(true);
        boolean zC = c();
        boolean z = !zC;
        if (!zC) {
            graphicsLayer.g(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        }
        BuildersKt.c(coroutineScope, null, null, new LazyLayoutItemAnimation$animateAppearance$2(z, this, finiteAnimationSpec, graphicsLayer, null), 3);
    }

    public final void b() {
        if (((Boolean) ((SnapshotMutableStateImpl) this.f5428h).getF10755b()).booleanValue()) {
            BuildersKt.c(this.f5423a, null, null, new LazyLayoutItemAnimation$cancelPlacementAnimation$1(this, null), 3);
        }
    }

    public final boolean c() {
        return ((Boolean) ((SnapshotMutableStateImpl) this.f5430j).getF10755b()).booleanValue();
    }

    public final void d() {
        GraphicsContext graphicsContext;
        boolean zBooleanValue = ((Boolean) ((SnapshotMutableStateImpl) this.f5428h).getF10755b()).booleanValue();
        CoroutineScope coroutineScope = this.f5423a;
        if (zBooleanValue) {
            g(false);
            BuildersKt.c(coroutineScope, null, null, new LazyLayoutItemAnimation$release$1(this, null), 3);
        }
        if (((Boolean) ((SnapshotMutableStateImpl) this.f5429i).getF10755b()).booleanValue()) {
            e(false);
            BuildersKt.c(coroutineScope, null, null, new LazyLayoutItemAnimation$release$2(this, null), 3);
        }
        if (c()) {
            f(false);
            BuildersKt.c(coroutineScope, null, null, new LazyLayoutItemAnimation$release$3(this, null), 3);
        }
        this.g = false;
        IntOffset.f11012b.getClass();
        h(0L);
        this.l = t;
        GraphicsLayer graphicsLayer = this.n;
        if (graphicsLayer != null && (graphicsContext = this.f5424b) != null) {
            graphicsContext.b(graphicsLayer);
        }
        this.n = null;
        this.d = null;
        this.f5427f = null;
        this.f5426e = null;
    }

    public final void e(boolean z) {
        ((SnapshotMutableStateImpl) this.f5429i).setValue(Boolean.valueOf(z));
    }

    public final void f(boolean z) {
        ((SnapshotMutableStateImpl) this.f5430j).setValue(Boolean.valueOf(z));
    }

    public final void g(boolean z) {
        ((SnapshotMutableStateImpl) this.f5428h).setValue(Boolean.valueOf(z));
    }

    public final void h(long j2) {
        ((SnapshotMutableStateImpl) this.q).setValue(new IntOffset(j2));
    }

    public /* synthetic */ LazyLayoutItemAnimation(CoroutineScope coroutineScope, GraphicsContext graphicsContext, Function0 function0, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(coroutineScope, (i2 & 2) != 0 ? null : graphicsContext, (i2 & 4) != 0 ? new c70(13) : function0);
    }
}
