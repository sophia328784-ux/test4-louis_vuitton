package defpackage;

import android.util.Range;
import androidx.camera.video.internal.encoder.EncoderImpl;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.batch.android.e.o0;
import com.batch.android.j1.b;
import com.batch.android.j1.c;
import com.perfectcorp.perfectlib.m3;
import com.perfectcorp.thirdparty.io.reactivex.functions.Action;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.e;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class rh implements CallbackToFutureAdapter.Resolver, Function, c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79525b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AtomicReference f79526c;

    public /* synthetic */ rh(AtomicReference atomicReference, int i2) {
        this.f79525b = i2;
        this.f79526c = atomicReference;
    }

    @Override // com.batch.android.j1.c
    public void a(b bVar) {
        o0.a(this.f79526c, bVar);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) {
        try {
            ((Action) this.f79526c.get()).run();
            return new e(new m3(2));
        } catch (Exception e2) {
            x1.m(e2);
            return null;
        }
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object i(CallbackToFutureAdapter.Completer completer) {
        int i2 = this.f79525b;
        AtomicReference atomicReference = this.f79526c;
        switch (i2) {
            case 0:
                atomicReference.set(completer);
                return "Data closed";
            case 1:
                atomicReference.set(new pi(completer, 0));
                return "OnScreenFlashUiApplied";
            case 2:
                atomicReference.set(completer);
                return "Data closed";
            case 3:
                Range range = EncoderImpl.H;
                atomicReference.set(completer);
                return "acquireInputBuffer";
            case 4:
                Range range2 = EncoderImpl.H;
                atomicReference.set(completer);
                return "mReleasedFuture";
            default:
                atomicReference.set(completer);
                return "Terminate InputBuffer";
        }
    }
}
