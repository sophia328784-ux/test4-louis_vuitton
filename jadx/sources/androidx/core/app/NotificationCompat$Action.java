package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import androidx.core.graphics.drawable.IconCompat;
import defpackage.r81;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class NotificationCompat$Action {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Bundle f11876a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public IconCompat f11877b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RemoteInput[] f11878c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f11879e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f11880f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f11881h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public CharSequence f11882i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final PendingIntent f11883j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f11884k;

    public interface Extender {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface SemanticAction {
    }

    public NotificationCompat$Action(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, RemoteInput[] remoteInputArr, boolean z, int i2, boolean z2, boolean z3, boolean z4) {
        this.f11879e = true;
        this.f11877b = iconCompat;
        if (iconCompat != null) {
            int i3 = iconCompat.f12065a;
            if ((i3 == -1 ? ((Icon) iconCompat.f12066b).getType() : i3) == 2) {
                this.f11881h = iconCompat.f();
            }
        }
        this.f11882i = NotificationCompat$Builder.e(charSequence);
        this.f11883j = pendingIntent;
        this.f11876a = bundle == null ? new Bundle() : bundle;
        this.f11878c = remoteInputArr;
        this.d = z;
        this.f11880f = i2;
        this.f11879e = z2;
        this.g = z3;
        this.f11884k = z4;
    }

    public final IconCompat a() {
        int i2;
        if (this.f11877b == null && (i2 = this.f11881h) != 0) {
            this.f11877b = IconCompat.e(null, "", i2);
        }
        return this.f11877b;
    }

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final IconCompat f11885a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final CharSequence f11886b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final PendingIntent f11887c;
        public boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Bundle f11888e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public ArrayList f11889f;
        public int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final boolean f11890h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f11891i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f11892j;

        public static class Api24Impl {
            public static boolean a(Notification.Action action) {
                return action.getAllowGeneratedReplies();
            }
        }

        public static class Api28Impl {
            public static int a(Notification.Action action) {
                return action.getSemanticAction();
            }
        }

        public static class Api29Impl {
            public static boolean a(Notification.Action action) {
                return action.isContextual();
            }
        }

        public static class Api31Impl {
            public static boolean a(Notification.Action action) {
                return action.isAuthenticationRequired();
            }
        }

        public Builder(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, RemoteInput[] remoteInputArr, boolean z, int i2, boolean z2, boolean z3, boolean z4) {
            this.d = true;
            this.f11890h = true;
            this.f11885a = iconCompat;
            this.f11886b = NotificationCompat$Builder.e(charSequence);
            this.f11887c = pendingIntent;
            this.f11888e = bundle;
            this.f11889f = remoteInputArr == null ? null : new ArrayList(Arrays.asList(remoteInputArr));
            this.d = z;
            this.g = i2;
            this.f11890h = z2;
            this.f11891i = z3;
            this.f11892j = z4;
        }

        public final NotificationCompat$Action a() {
            CharSequence[] charSequenceArr;
            Set set;
            if (this.f11891i && this.f11887c == null) {
                r81.d("Contextual Actions must contain a valid PendingIntent");
                return null;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            ArrayList<RemoteInput> arrayList3 = this.f11889f;
            if (arrayList3 != null) {
                for (RemoteInput remoteInput : arrayList3) {
                    if (remoteInput.d || (!((charSequenceArr = remoteInput.f11994c) == null || charSequenceArr.length == 0) || (set = remoteInput.g) == null || set.isEmpty())) {
                        arrayList2.add(remoteInput);
                    } else {
                        arrayList.add(remoteInput);
                    }
                }
            }
            if (!arrayList.isEmpty()) {
            }
            return new NotificationCompat$Action(this.f11885a, this.f11886b, this.f11887c, this.f11888e, arrayList2.isEmpty() ? null : (RemoteInput[]) arrayList2.toArray(new RemoteInput[arrayList2.size()]), this.d, this.g, this.f11890h, this.f11891i, this.f11892j);
        }

        public Builder(int i2, CharSequence charSequence, PendingIntent pendingIntent) {
            this(i2 != 0 ? IconCompat.e(null, "", i2) : null, charSequence, pendingIntent, new Bundle(), null, true, 0, true, false, false);
        }

        public Builder(NotificationCompat$Action notificationCompat$Action) {
            this(notificationCompat$Action.a(), notificationCompat$Action.f11882i, notificationCompat$Action.f11883j, new Bundle(notificationCompat$Action.f11876a), notificationCompat$Action.f11878c, notificationCompat$Action.d, notificationCompat$Action.f11880f, notificationCompat$Action.f11879e, notificationCompat$Action.g, notificationCompat$Action.f11884k);
        }

        public Builder(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent) {
            this(iconCompat, charSequence, pendingIntent, new Bundle(), null, true, 0, true, false, false);
        }
    }

    public NotificationCompat$Action(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent) {
        this(iconCompat, charSequence, pendingIntent, new Bundle(), null, true, 0, true, false, false);
    }

    public NotificationCompat$Action(int i2, CharSequence charSequence, PendingIntent pendingIntent) {
        this(i2 != 0 ? IconCompat.e(null, "", i2) : null, charSequence, pendingIntent);
    }
}
