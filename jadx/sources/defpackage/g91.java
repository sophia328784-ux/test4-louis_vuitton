package defpackage;

import android.util.Pair;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.ph.database.ymk.idsystem.a;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.j;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class g91 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69354b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Pair f69355c;

    public /* synthetic */ g91(Pair pair, int i2) {
        this.f69354b = i2;
        this.f69355c = pair;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        int i2 = this.f69354b;
        Pair pair = this.f69355c;
        switch (i2) {
            case 0:
                AtomicInteger atomicInteger = j.f41498a;
                TemplateUtils.j((TemplateUtils.c) pair.second);
                a.c(YMKDatabase.c(), (com.perfectcorp.perfectlib.ph.template.a) pair.first);
                break;
            default:
                AtomicInteger atomicInteger2 = j.f41498a;
                TemplateUtils.j((TemplateUtils.c) pair.second);
                Iterator it = ((List) pair.first).iterator();
                while (it.hasNext()) {
                    a.c(YMKDatabase.c(), (com.perfectcorp.perfectlib.ph.template.a) it.next());
                }
                break;
        }
    }
}
