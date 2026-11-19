package retrofit2.adapter.rxjava3;

import io.reactivex.rxjava3.core.BackpressureStrategy;
import io.reactivex.rxjava3.core.Observable;
import java.lang.reflect.Type;
import retrofit2.Call;
import retrofit2.CallAdapter;

/* JADX INFO: loaded from: classes5.dex */
final class RxJava3CallAdapter<R> implements CallAdapter<R, Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Type f79488a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f79489b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f79490c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f79491e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f79492f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f79493h;

    public RxJava3CallAdapter(Type type, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
        this.f79488a = type;
        this.f79489b = z;
        this.f79490c = z2;
        this.d = z3;
        this.f79491e = z4;
        this.f79492f = z5;
        this.g = z6;
        this.f79493h = z7;
    }

    @Override // retrofit2.CallAdapter
    public final Type a() {
        return this.f79488a;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0028  */
    /* JADX WARN: Code duplicated, block: B:17:0x002f  */
    /* JADX WARN: Code duplicated, block: B:19:0x0033  */
    /* JADX WARN: Code duplicated, block: B:21:0x0038  */
    /* JADX WARN: Code duplicated, block: B:23:0x003c  */
    /* JADX WARN: Code duplicated, block: B:25:0x0041  */
    /* JADX WARN: Code duplicated, block: B:27:0x0045  */
    /* JADX WARN: Code duplicated, block: B:29:0x004a A[RETURN] */
    @Override // retrofit2.CallAdapter
    public final Object b(Call call) {
        Observable bodyObservable;
        Observable callEnqueueObservable = this.f79489b ? new CallEnqueueObservable(call) : new CallExecuteObservable(call);
        if (!this.f79490c) {
            if (this.d) {
                bodyObservable = new BodyObservable(callEnqueueObservable);
            }
            if (this.f79491e) {
                return callEnqueueObservable.toFlowable(BackpressureStrategy.MISSING);
            }
            if (this.f79492f) {
                return callEnqueueObservable.singleOrError();
            }
            if (this.g) {
                return callEnqueueObservable.singleElement();
            }
            if (this.f79493h) {
                return callEnqueueObservable.ignoreElements();
            }
            return callEnqueueObservable;
        }
        bodyObservable = new ResultObservable(callEnqueueObservable);
        callEnqueueObservable = bodyObservable;
        if (this.f79491e) {
            return callEnqueueObservable.toFlowable(BackpressureStrategy.MISSING);
        }
        if (this.f79492f) {
            return callEnqueueObservable.singleOrError();
        }
        if (this.g) {
            return callEnqueueObservable.singleElement();
        }
        if (this.f79493h) {
            return callEnqueueObservable.ignoreElements();
        }
        return callEnqueueObservable;
    }
}
