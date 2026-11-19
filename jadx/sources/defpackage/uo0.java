package defpackage;

import androidx.compose.runtime.MutableLongState;
import com.appsflyer.internal.AFj1sSDK;
import com.vuitton.android.presentation.screen.audioplayer.model.AudioPlayerEvent;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class uo0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80373b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f80374c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f80375e;

    public /* synthetic */ uo0(AFj1sSDK aFj1sSDK, String str, long j2) {
        this.d = aFj1sSDK;
        this.f80375e = str;
        this.f80374c = j2;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f80373b;
        long j2 = this.f80374c;
        Object obj = this.f80375e;
        Object obj2 = this.d;
        switch (i2) {
            case 0:
                Function1 function1 = (Function1) obj2;
                MutableLongState mutableLongState = (MutableLongState) obj;
                function1.invoke(new AudioPlayerEvent.SeekTo(mutableLongState.b()));
                if (mutableLongState.b() > j2) {
                    function1.invoke(AudioPlayerEvent.Reset.f53253a);
                }
                return Unit.f71739a;
            default:
                return AFj1sSDK.V_((AFj1sSDK) obj2, (String) obj, j2);
        }
    }

    public /* synthetic */ uo0(Function1 function1, long j2, MutableLongState mutableLongState) {
        this.d = function1;
        this.f80374c = j2;
        this.f80375e = mutableLongState;
    }
}
