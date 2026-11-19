package androidx.room;

import android.os.RemoteException;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"androidx/room/MultiInstanceInvalidationService$binder$1", "Landroidx/room/IMultiInstanceInvalidationService$Stub;", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class MultiInstanceInvalidationService$binder$1 extends IMultiInstanceInvalidationService.Stub {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MultiInstanceInvalidationService f19439b;

    public MultiInstanceInvalidationService$binder$1(MultiInstanceInvalidationService multiInstanceInvalidationService) {
        this.f19439b = multiInstanceInvalidationService;
    }

    @Override // androidx.room.IMultiInstanceInvalidationService
    public final void C0(int i2, String[] strArr) {
        strArr.getClass();
        MultiInstanceInvalidationService multiInstanceInvalidationService = this.f19439b;
        synchronized (multiInstanceInvalidationService.d) {
            try {
                String str = (String) multiInstanceInvalidationService.f19437c.get(Integer.valueOf(i2));
                if (str == null) {
                    return;
                }
                int iBeginBroadcast = multiInstanceInvalidationService.d.beginBroadcast();
                int i3 = 0;
                while (true) {
                    MultiInstanceInvalidationService$callbackList$1 multiInstanceInvalidationService$callbackList$1 = multiInstanceInvalidationService.d;
                    if (i3 >= iBeginBroadcast) {
                        multiInstanceInvalidationService$callbackList$1.finishBroadcast();
                        return;
                    }
                    try {
                        Object broadcastCookie = multiInstanceInvalidationService$callbackList$1.getBroadcastCookie(i3);
                        broadcastCookie.getClass();
                        Integer num = (Integer) broadcastCookie;
                        int iIntValue = num.intValue();
                        String str2 = (String) multiInstanceInvalidationService.f19437c.get(num);
                        if (i2 != iIntValue && str.equals(str2)) {
                            try {
                                multiInstanceInvalidationService.d.getBroadcastItem(i3).x(strArr);
                            } catch (RemoteException unused) {
                            }
                        }
                        i3++;
                    } catch (Throwable th) {
                        multiInstanceInvalidationService.d.finishBroadcast();
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // androidx.room.IMultiInstanceInvalidationService
    public final int m1(IMultiInstanceInvalidationCallback iMultiInstanceInvalidationCallback, String str) {
        iMultiInstanceInvalidationCallback.getClass();
        int i2 = 0;
        if (str == null) {
            return 0;
        }
        MultiInstanceInvalidationService multiInstanceInvalidationService = this.f19439b;
        synchronized (multiInstanceInvalidationService.d) {
            try {
                int i3 = multiInstanceInvalidationService.f19436b + 1;
                multiInstanceInvalidationService.f19436b = i3;
                if (multiInstanceInvalidationService.d.register(iMultiInstanceInvalidationCallback, Integer.valueOf(i3))) {
                    multiInstanceInvalidationService.f19437c.put(Integer.valueOf(i3), str);
                    i2 = i3;
                } else {
                    multiInstanceInvalidationService.f19436b--;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return i2;
    }

    @Override // androidx.room.IMultiInstanceInvalidationService
    public final void z2(IMultiInstanceInvalidationCallback iMultiInstanceInvalidationCallback, int i2) {
        iMultiInstanceInvalidationCallback.getClass();
        MultiInstanceInvalidationService multiInstanceInvalidationService = this.f19439b;
        synchronized (multiInstanceInvalidationService.d) {
            multiInstanceInvalidationService.d.unregister(iMultiInstanceInvalidationCallback);
        }
    }
}
