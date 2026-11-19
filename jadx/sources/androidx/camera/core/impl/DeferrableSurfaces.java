package androidx.camera.core.impl;

import android.view.Surface;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import com.sightcall.livetranslation.data.LiveTranslationEntity;
import defpackage.et;
import defpackage.r00;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public abstract class DeferrableSurfaces {
    public static void a(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((DeferrableSurface) it.next()).b();
        }
    }

    public static void b(List list) throws DeferrableSurface.SurfaceClosedException {
        if (list.isEmpty()) {
            return;
        }
        int i2 = 0;
        do {
            try {
                ((DeferrableSurface) list.get(i2)).d();
                i2++;
            } catch (DeferrableSurface.SurfaceClosedException e2) {
                for (int i3 = i2 - 1; i3 >= 0; i3--) {
                    ((DeferrableSurface) list.get(i3)).b();
                }
                throw e2;
            }
        } while (i2 < list.size());
    }

    public static ListenableFuture c(final List list, final Executor executor, ScheduledExecutorService scheduledExecutorService) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(Futures.h(((DeferrableSurface) it.next()).c()));
        }
        final ListenableFuture listenableFutureA = CallbackToFutureAdapter.a(new r00(Futures.k(arrayList), scheduledExecutorService, LiveTranslationEntity.DefaultSentenceTimeOut, 0));
        return CallbackToFutureAdapter.a(new CallbackToFutureAdapter.Resolver() { // from class: androidx.camera.core.impl.c
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object i(final CallbackToFutureAdapter.Completer completer) {
                ListenableFuture listenableFuture = listenableFutureA;
                et etVar = new et(listenableFuture, 3);
                Executor executor2 = executor;
                completer.a(etVar, executor2);
                Futures.a(listenableFuture, new FutureCallback<List<Surface>>() { // from class: androidx.camera.core.impl.DeferrableSurfaces.1
                    @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                    public final void onFailure(Throwable th) {
                        boolean z = th instanceof TimeoutException;
                        CallbackToFutureAdapter.Completer completer2 = completer;
                        if (z) {
                            completer2.d(th);
                        } else {
                            completer2.b(Collections.EMPTY_LIST);
                        }
                    }

                    @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                    public final void onSuccess(Object obj) {
                        List list2 = (List) obj;
                        list2.getClass();
                        completer.b(new ArrayList(list2));
                    }
                }, executor2);
                return "surfaceList[" + list + "]";
            }
        });
    }
}
