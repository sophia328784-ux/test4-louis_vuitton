package com.airbnb.lottie.compose;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import com.airbnb.lottie.LottieComposition;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;", "Lcom/airbnb/lottie/compose/LottieCompositionResult;", "<init>", "()V", "lottie-compose_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class LottieCompositionResultImpl implements LottieCompositionResult {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CompletableDeferred f22008b = CompletableDeferredKt.a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableState f22009c = SnapshotStateKt.g(null);
    public final MutableState d = SnapshotStateKt.g(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final State f22010e = SnapshotStateKt.e(new Function0<Boolean>() { // from class: com.airbnb.lottie.compose.LottieCompositionResultImpl$isLoading$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: invoke */
        public final Object mo47invoke() {
            LottieCompositionResultImpl lottieCompositionResultImpl = this.f22015c;
            return Boolean.valueOf(lottieCompositionResultImpl.getF10755b() == null && ((Throwable) ((SnapshotMutableStateImpl) lottieCompositionResultImpl.d).getF10755b()) == null);
        }
    });

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final State f22011f = SnapshotStateKt.e(new Function0<Boolean>() { // from class: com.airbnb.lottie.compose.LottieCompositionResultImpl$isComplete$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: invoke */
        public final Object mo47invoke() {
            LottieCompositionResultImpl lottieCompositionResultImpl = this.f22013c;
            return Boolean.valueOf((lottieCompositionResultImpl.getF10755b() == null && ((Throwable) ((SnapshotMutableStateImpl) lottieCompositionResultImpl.d).getF10755b()) == null) ? false : true);
        }
    });
    public final State g = SnapshotStateKt.e(new Function0<Boolean>() { // from class: com.airbnb.lottie.compose.LottieCompositionResultImpl$isFailure$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: invoke */
        public final Object mo47invoke() {
            return Boolean.valueOf(((Throwable) ((SnapshotMutableStateImpl) this.f22014c.d).getF10755b()) != null);
        }
    });

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final State f22012h = SnapshotStateKt.e(new Function0<Boolean>() { // from class: com.airbnb.lottie.compose.LottieCompositionResultImpl$isSuccess$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: invoke */
        public final Object mo47invoke() {
            return Boolean.valueOf(this.f22016c.getF10755b() != null);
        }
    });

    @Override // androidx.compose.runtime.State
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public final LottieComposition getF10755b() {
        return (LottieComposition) ((SnapshotMutableStateImpl) this.f22009c).getF10755b();
    }
}
