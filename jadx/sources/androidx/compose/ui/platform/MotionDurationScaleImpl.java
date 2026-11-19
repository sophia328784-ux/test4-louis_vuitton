package androidx.compose.ui.platform;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import androidx.collection.MutableScatterMap;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.ui.MotionDurationScale;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.internal.ContextScope;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/platform/MotionDurationScaleImpl;", "Landroidx/compose/ui/MotionDurationScale;", "Landroid/content/Context;", "applicationContext", "<init>", "(Landroid/content/Context;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class MotionDurationScaleImpl implements MotionDurationScale {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f10121b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ContextScope f10122c;
    public final MutableFloatState d = PrimitiveSnapshotStateKt.a(1.0f);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Job f10123e;

    public MotionDurationScaleImpl(Context context) {
        this.f10121b = context;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final Object fold(Object obj, Function2 function2) {
        return CoroutineContext.Element.DefaultImpls.a(this, obj, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext.Element get(CoroutineContext.Key key) {
        return CoroutineContext.Element.DefaultImpls.b(this, key);
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [androidx.compose.ui.platform.WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1] */
    @Override // androidx.compose.ui.MotionDurationScale
    public final float m() {
        StateFlow stateFlow;
        if (this.f10123e == null) {
            Context context = this.f10121b;
            MutableScatterMap mutableScatterMap = WindowRecomposer_androidKt.f10186a;
            synchronized (mutableScatterMap) {
                try {
                    Object objE = mutableScatterMap.e(context);
                    if (objE == null) {
                        ContentResolver contentResolver = context.getContentResolver();
                        Uri uriFor = Settings.Global.getUriFor("animator_duration_scale");
                        final BufferedChannel bufferedChannelA = ChannelKt.a(-1, 6, null);
                        final Handler handlerCreateAsync = Handler.createAsync(Looper.getMainLooper());
                        objE = FlowKt.A(FlowKt.t(new WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1(contentResolver, uriFor, new ContentObserver(handlerCreateAsync) { // from class: androidx.compose.ui.platform.WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1
                            @Override // android.database.ContentObserver
                            public final void onChange(boolean z, Uri uri) {
                                bufferedChannelA.b(Unit.f71739a);
                            }
                        }, bufferedChannelA, context, null)), CoroutineScopeKt.b(), SharingStarted.Companion.a(SharingStarted.f74985a, 3), Float.valueOf(Settings.Global.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f)));
                        mutableScatterMap.o(context, objE);
                    }
                    stateFlow = (StateFlow) objE;
                } catch (Throwable th) {
                    throw th;
                }
            }
            ((SnapshotMutableFloatStateImpl) this.d).w(((Number) stateFlow.getValue()).floatValue());
            ContextScope contextScope = this.f10122c;
            if (contextScope == null) {
                md.k("MotionDurationScale scale factor requested before recomposer loop start");
                return Call.Parameters.DEFAULT_CAMERA_ZOOM;
            }
            this.f10123e = BuildersKt.c(contextScope, null, null, new MotionDurationScaleImpl$startObservingSystemScaleFactor$1(stateFlow, this, null), 3);
        }
        return ((SnapshotMutableFloatStateImpl) this.d).a();
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext minusKey(CoroutineContext.Key key) {
        return CoroutineContext.Element.DefaultImpls.c(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext plus(CoroutineContext coroutineContext) {
        return CoroutineContext.Element.DefaultImpls.d(coroutineContext, this);
    }
}
