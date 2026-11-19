package defpackage;

import androidx.fragment.app.FragmentTransition;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.ph.database.ymk.idsystem.a;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.j;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ys implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81428b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ArrayList f81429c;

    public /* synthetic */ ys(int i2, ArrayList arrayList) {
        this.f81428b = i2;
        this.f81429c = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f81428b;
        ArrayList arrayList = this.f81429c;
        switch (i2) {
            case 0:
                FragmentTransition.c(4, arrayList);
                break;
            default:
                AtomicInteger atomicInteger = j.f41498a;
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    a.c(YMKDatabase.c(), (com.perfectcorp.perfectlib.ph.template.a) it.next());
                }
                break;
        }
    }
}
