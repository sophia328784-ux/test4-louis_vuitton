package androidx.compose.ui.platform;

import android.view.View;
import androidx.compose.foundation.text.input.internal.LegacyTextInputMethodRequest;
import androidx.compose.ui.SessionMutex;
import defpackage.md;
import defpackage.os;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"androidx/compose/ui/platform/ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1", "Landroidx/compose/ui/platform/PlatformTextInputSessionScope;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1 implements PlatformTextInputSessionScope {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PlatformTextInputSessionScope f9991b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PlatformTextInputSessionScope f9992c;
    public final /* synthetic */ AtomicReference d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ChainedPlatformTextInputInterceptor f9993e;

    public ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1(PlatformTextInputSessionScope platformTextInputSessionScope, AtomicReference atomicReference, ChainedPlatformTextInputInterceptor chainedPlatformTextInputInterceptor) {
        this.f9992c = platformTextInputSessionScope;
        this.d = atomicReference;
        this.f9993e = chainedPlatformTextInputInterceptor;
        this.f9991b = platformTextInputSessionScope;
    }

    @Override // androidx.compose.ui.platform.PlatformTextInputSession
    /* JADX INFO: renamed from: a */
    public final View getF9947b() {
        return this.f9991b.getF9947b();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.compose.ui.platform.PlatformTextInputSession
    public final CoroutineSingletons b(LegacyTextInputMethodRequest legacyTextInputMethodRequest, ContinuationImpl continuationImpl) {
        ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1 chainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1;
        if (continuationImpl instanceof ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1) {
            chainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1 = (ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1) continuationImpl;
            int i2 = chainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                chainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1.d = i2 - Integer.MIN_VALUE;
            } else {
                chainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1 = new ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1(this, continuationImpl);
            }
        } else {
            chainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1 = new ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1(this, continuationImpl);
        }
        Object obj = chainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1.f9994b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = chainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$2 chainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$2 = ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$2.f9996c;
            ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$3 chainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$3 = new ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$3(this.f9993e, legacyTextInputMethodRequest, this.f9992c, null);
            chainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1.d = 1;
            if (SessionMutex.b(this.d, chainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$2, chainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$3, chainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        os.d();
        return null;
    }

    @Override // kotlinx.coroutines.CoroutineScope
    /* JADX INFO: renamed from: getCoroutineContext */
    public final CoroutineContext getF8068c() {
        return this.f9991b.getF8068c();
    }
}
