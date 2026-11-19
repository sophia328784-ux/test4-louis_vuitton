package androidx.core.app;

import android.app.Notification;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class NotificationCompat$InboxStyle extends NotificationCompat$Style {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f11922e = new ArrayList();

    public NotificationCompat$InboxStyle(NotificationCompat$Builder notificationCompat$Builder) {
        g(notificationCompat$Builder);
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final void b(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        Notification.InboxStyle bigContentTitle = new Notification.InboxStyle(((NotificationCompatBuilder) notificationBuilderWithBuilderAccessor).f11948b).setBigContentTitle(this.f11945b);
        if (this.d) {
            bigContentTitle.setSummaryText(this.f11946c);
        }
        Iterator it = this.f11922e.iterator();
        while (it.hasNext()) {
            bigContentTitle.addLine((CharSequence) it.next());
        }
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final void c(Bundle bundle) {
        super.c(bundle);
        bundle.remove("android.textLines");
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final String e() {
        return "androidx.core.app.NotificationCompat$InboxStyle";
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final void f(Bundle bundle) {
        super.f(bundle);
        ArrayList arrayList = this.f11922e;
        arrayList.clear();
        if (bundle.containsKey("android.textLines")) {
            Collections.addAll(arrayList, bundle.getCharSequenceArray("android.textLines"));
        }
    }

    public NotificationCompat$InboxStyle() {
    }
}
