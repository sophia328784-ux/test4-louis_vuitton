package defpackage;

import android.os.Trace;
import androidx.compose.foundation.text.BasicText_androidKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.snapshots.MutableSnapshot;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.TextStyleKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.platform.AndroidParagraphIntrinsics;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.lifecycle.MutableLiveData;
import androidx.work.Operation;
import androidx.work.Tracer;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class gd implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69368b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f69369c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f69370e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f69371f;
    public final /* synthetic */ Object g;

    public /* synthetic */ gd(TextStyle textStyle, LayoutDirection layoutDirection, String str, Density density, FontFamily.Resolver resolver) {
        this.d = textStyle;
        this.f69370e = layoutDirection;
        this.f69369c = str;
        this.f69371f = density;
        this.g = resolver;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f69368b;
        Object obj = this.g;
        Object obj2 = this.f69371f;
        Object obj3 = this.f69370e;
        Object obj4 = this.d;
        switch (i2) {
            case 0:
                TextStyle textStyle = (TextStyle) obj4;
                LayoutDirection layoutDirection = (LayoutDirection) obj3;
                String str = this.f69369c;
                Density density = (Density) obj2;
                FontFamily.Resolver resolver = (FontFamily.Resolver) obj;
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = BasicText_androidKt.f5855a;
                Trace.beginSection("BackgroundTextMeasurement");
                try {
                    Snapshot.f8462e.getClass();
                    MutableSnapshot mutableSnapshotG = Snapshot.Companion.g(null, null);
                    try {
                        Snapshot snapshotJ = mutableSnapshotG.j();
                        try {
                            TextStyle textStyleA = TextStyleKt.a(textStyle, layoutDirection);
                            EmptyList emptyList = EmptyList.f71768b;
                            AndroidParagraphIntrinsics androidParagraphIntrinsics = new AndroidParagraphIntrinsics(str, textStyleA, emptyList, emptyList, resolver, density);
                            androidParagraphIntrinsics.b();
                            androidParagraphIntrinsics.c();
                            Snapshot.q(snapshotJ);
                            mutableSnapshotG.w().a();
                            mutableSnapshotG.c();
                            Trace.endSection();
                            return;
                        } catch (Throwable th) {
                            Snapshot.q(snapshotJ);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        try {
                            throw th2;
                        } catch (Throwable th3) {
                            mutableSnapshotG.c();
                            throw th3;
                        }
                    }
                } catch (Throwable th4) {
                    Trace.endSection();
                    throw th4;
                }
            default:
                Tracer tracer = (Tracer) obj4;
                String str2 = this.f69369c;
                Function0 function0 = (Function0) obj3;
                MutableLiveData mutableLiveData = (MutableLiveData) obj2;
                CallbackToFutureAdapter.Completer completer = (CallbackToFutureAdapter.Completer) obj;
                boolean zIsEnabled = tracer.isEnabled();
                if (zIsEnabled) {
                    try {
                        tracer.a(str2);
                    } catch (Throwable th5) {
                        if (!zIsEnabled) {
                            throw th5;
                        }
                        tracer.c();
                        throw th5;
                    }
                }
                try {
                    function0.mo47invoke();
                    Operation.State.SUCCESS success = Operation.f20265a;
                    mutableLiveData.postValue(success);
                    completer.b(success);
                    break;
                } catch (Throwable th6) {
                    mutableLiveData.postValue(new Operation.State.FAILURE(th6));
                    completer.d(th6);
                    break;
                }
                if (zIsEnabled) {
                    tracer.c();
                    return;
                }
                return;
        }
    }

    public /* synthetic */ gd(Tracer tracer, String str, Function0 function0, MutableLiveData mutableLiveData, CallbackToFutureAdapter.Completer completer) {
        this.d = tracer;
        this.f69369c = str;
        this.f69370e = function0;
        this.f69371f = mutableLiveData;
        this.g = completer;
    }
}
