package androidx.core.app;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import androidx.core.content.ContextCompat;
import defpackage.lc0;
import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class TaskStackBuilder implements Iterable<Intent> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f12006b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f12007c;

    public interface SupportParentable {
        Intent getSupportParentActivityIntent();
    }

    public TaskStackBuilder(Context context) {
        this.f12007c = context;
    }

    public final void a(ComponentName componentName) {
        Context context = this.f12007c;
        ArrayList arrayList = this.f12006b;
        int size = arrayList.size();
        try {
            for (Intent intentA = NavUtils.a(context, componentName); intentA != null; intentA = NavUtils.a(context, intentA.getComponent())) {
                arrayList.add(size, intentA);
            }
        } catch (PackageManager.NameNotFoundException e2) {
            lc0.u(e2);
        }
    }

    public final void f() {
        ArrayList arrayList = this.f12006b;
        if (arrayList.isEmpty()) {
            md.k("No intents added to TaskStackBuilder; cannot startActivities");
            return;
        }
        Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[0]);
        intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
        Context context = this.f12007c;
        if (ContextCompat.startActivities(context, intentArr, null)) {
            return;
        }
        Intent intent = new Intent(intentArr[intentArr.length - 1]);
        intent.addFlags(268435456);
        context.startActivity(intent);
    }

    @Override // java.lang.Iterable
    public final Iterator<Intent> iterator() {
        return this.f12006b.iterator();
    }
}
