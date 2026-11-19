package androidx.media3.common.util;

import android.os.Handler;
import android.os.Message;
import androidx.media3.common.FlagSet;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements Handler.Callback {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f14260b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f14261c;

    public /* synthetic */ a(Object obj, int i2) {
        this.f14260b = i2;
        this.f14261c = obj;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i2 = this.f14260b;
        Object obj = this.f14261c;
        switch (i2) {
            case 0:
                ListenerSet listenerSet = (ListenerSet) obj;
                ListenerSet.IterationFinishedEvent iterationFinishedEvent = listenerSet.d;
                iterationFinishedEvent.getClass();
                for (ListenerSet.ListenerHolder listenerHolder : listenerSet.f14162e) {
                    if (!listenerHolder.d && listenerHolder.f14169c) {
                        FlagSet flagSetC = listenerHolder.f14168b.c();
                        listenerHolder.f14168b = new FlagSet.Builder();
                        listenerHolder.f14169c = false;
                        iterationFinishedEvent.a(listenerHolder.f14167a, flagSetC);
                    }
                    HandlerWrapper handlerWrapper = listenerSet.f14161c;
                    handlerWrapper.getClass();
                    if (handlerWrapper.d(1)) {
                        return true;
                    }
                }
                return true;
            default:
                StuckPlayerDetector stuckPlayerDetector = (StuckPlayerDetector) obj;
                int i3 = message.what;
                if (i3 == 1) {
                    stuckPlayerDetector.g.a();
                } else if (i3 == 2) {
                    stuckPlayerDetector.f14205h.a();
                } else if (i3 == 3) {
                    stuckPlayerDetector.f14206i.a();
                } else {
                    if (i3 != 4) {
                        return false;
                    }
                    stuckPlayerDetector.f14207j.a();
                }
                return true;
        }
    }
}
