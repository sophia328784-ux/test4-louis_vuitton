package defpackage;

import androidx.datastore.core.MulticastFileObserver;
import java.util.LinkedHashMap;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.android.HandlerContext;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class h10 implements DisposableHandle {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69549b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f69550c;
    public final /* synthetic */ Object d;

    public /* synthetic */ h10(Object obj, Object obj2, int i2) {
        this.f69549b = i2;
        this.f69550c = obj;
        this.d = obj2;
    }

    @Override // kotlinx.coroutines.DisposableHandle
    public final void dispose() {
        switch (this.f69549b) {
            case 0:
                HandlerContext handlerContext = (HandlerContext) this.f69550c;
                handlerContext.f74724b.removeCallbacks((Runnable) this.d);
                return;
            default:
                String str = (String) this.f69550c;
                Function1 function1 = (Function1) this.d;
                synchronized (MulticastFileObserver.f12806c) {
                    MulticastFileObserver.f12805b.getClass();
                    LinkedHashMap linkedHashMap = MulticastFileObserver.d;
                    MulticastFileObserver multicastFileObserver = (MulticastFileObserver) linkedHashMap.get(str);
                    if (multicastFileObserver != null) {
                        multicastFileObserver.f12807a.remove(function1);
                        if (multicastFileObserver.f12807a.isEmpty()) {
                            linkedHashMap.remove(str);
                            multicastFileObserver.stopWatching();
                        }
                    }
                    break;
                }
                return;
        }
    }
}
