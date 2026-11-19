package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.RemoteViews;
import androidx.core.content.LocusIdCompat;
import androidx.core.graphics.drawable.IconCompat;
import com.vuitton.android.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
class NotificationCompatBuilder implements NotificationBuilderWithBuilderAccessor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f11947a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Notification.Builder f11948b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final NotificationCompat$Builder f11949c;
    public final Bundle d = new Bundle();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f11950e;

    public static class Api31Impl {
        public static void a(Notification.Action.Builder builder, boolean z) {
            builder.setAuthenticationRequired(z);
        }

        public static void b(Notification.Builder builder, int i2) {
            builder.setForegroundServiceBehavior(i2);
        }
    }

    public static final class Api36Impl {
        public static void a(Notification.Builder builder, String str) {
            builder.setShortCriticalText(str);
        }
    }

    /* JADX WARN: Code duplicated, block: B:135:0x03c9  */
    public NotificationCompatBuilder(NotificationCompat$Builder notificationCompat$Builder) {
        Notification.BubbleMetadata bubbleMetadataB;
        int i2;
        Bundle[] bundleArr;
        NotificationCompat$Action notificationCompat$ActionH;
        int i3;
        this.f11949c = notificationCompat$Builder;
        Context context = notificationCompat$Builder.f11907a;
        ArrayList arrayList = notificationCompat$Builder.d;
        this.f11947a = context;
        Notification.Builder builder = new Notification.Builder(context, notificationCompat$Builder.I);
        this.f11948b = builder;
        Notification notification = notificationCompat$Builder.Q;
        Bundle[] bundleArr2 = null;
        int i4 = 0;
        builder.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, null).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(notificationCompat$Builder.f11910e).setContentText(notificationCompat$Builder.f11911f).setContentInfo(notificationCompat$Builder.f11915k).setContentIntent(notificationCompat$Builder.f11912h).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(notificationCompat$Builder.f11913i, (notification.flags & 128) != 0).setNumber(notificationCompat$Builder.l).setProgress(notificationCompat$Builder.s, notificationCompat$Builder.t, notificationCompat$Builder.u);
        IconCompat iconCompat = notificationCompat$Builder.f11914j;
        builder.setLargeIcon(iconCompat == null ? null : iconCompat.h(context));
        builder.setSubText(notificationCompat$Builder.q).setUsesChronometer(notificationCompat$Builder.o).setPriority(notificationCompat$Builder.m);
        NotificationCompat$Style notificationCompat$Style = notificationCompat$Builder.p;
        if (notificationCompat$Style instanceof NotificationCompat$CallStyle) {
            NotificationCompat$CallStyle notificationCompat$CallStyle = (NotificationCompat$CallStyle) notificationCompat$Style;
            PendingIntent pendingIntent = notificationCompat$CallStyle.f11918h;
            Integer num = notificationCompat$CallStyle.l;
            NotificationCompat$Action notificationCompat$ActionH2 = pendingIntent == null ? notificationCompat$CallStyle.h(R.drawable.ic_call_decline, R.string.call_notification_hang_up_action, num, R.color.call_notification_decline_color, notificationCompat$CallStyle.f11919i) : notificationCompat$CallStyle.h(R.drawable.ic_call_decline, R.string.call_notification_decline_action, num, R.color.call_notification_decline_color, pendingIntent);
            PendingIntent pendingIntent2 = notificationCompat$CallStyle.g;
            if (pendingIntent2 == null) {
                notificationCompat$ActionH = null;
            } else {
                boolean z = notificationCompat$CallStyle.f11920j;
                notificationCompat$ActionH = notificationCompat$CallStyle.h(z ? R.drawable.ic_call_answer_video : R.drawable.ic_call_answer, z ? R.string.call_notification_answer_video_action : R.string.call_notification_answer_action, notificationCompat$CallStyle.f11921k, R.color.call_notification_answer_color, pendingIntent2);
            }
            ArrayList arrayList2 = new ArrayList(3);
            arrayList2.add(notificationCompat$ActionH2);
            ArrayList<NotificationCompat$Action> arrayList3 = notificationCompat$CallStyle.f11944a.f11908b;
            if (arrayList3 != null) {
                i3 = 2;
                for (NotificationCompat$Action notificationCompat$Action : arrayList3) {
                    if (notificationCompat$Action.g) {
                        arrayList2.add(notificationCompat$Action);
                    } else if (!notificationCompat$Action.f11876a.getBoolean("key_action_priority")) {
                        arrayList2.add(notificationCompat$Action);
                        i3--;
                    }
                    if (notificationCompat$ActionH != null && i3 == 1) {
                        arrayList2.add(notificationCompat$ActionH);
                        i3--;
                    }
                }
            } else {
                i3 = 2;
            }
            if (notificationCompat$ActionH != null && i3 >= 1) {
                arrayList2.add(notificationCompat$ActionH);
            }
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                b((NotificationCompat$Action) it.next());
            }
        } else {
            Iterator it2 = notificationCompat$Builder.f11908b.iterator();
            while (it2.hasNext()) {
                b((NotificationCompat$Action) it2.next());
            }
        }
        Bundle bundle = notificationCompat$Builder.C;
        if (bundle != null) {
            this.d.putAll(bundle);
        }
        this.f11948b.setShowWhen(notificationCompat$Builder.n);
        this.f11948b.setLocalOnly(notificationCompat$Builder.y);
        this.f11948b.setGroup(notificationCompat$Builder.v);
        this.f11948b.setSortKey(notificationCompat$Builder.x);
        this.f11948b.setGroupSummary(notificationCompat$Builder.w);
        this.f11950e = 0;
        this.f11948b.setCategory(notificationCompat$Builder.B);
        this.f11948b.setColor(notificationCompat$Builder.D);
        this.f11948b.setVisibility(notificationCompat$Builder.E);
        this.f11948b.setPublicVersion(notificationCompat$Builder.F);
        this.f11948b.setSound(notification.sound, notification.audioAttributes);
        ArrayList arrayList4 = notificationCompat$Builder.T;
        if (arrayList4 != null && !arrayList4.isEmpty()) {
            Iterator it3 = arrayList4.iterator();
            while (it3.hasNext()) {
                this.f11948b.addPerson((String) it3.next());
            }
        }
        if (arrayList.size() > 0) {
            Bundle bundle2 = notificationCompat$Builder.d().getBundle("android.car.EXTENSIONS");
            bundle2 = bundle2 == null ? new Bundle() : bundle2;
            Bundle bundle3 = new Bundle(bundle2);
            Bundle bundle4 = new Bundle();
            int i5 = 0;
            while (i5 < arrayList.size()) {
                String string = Integer.toString(i5);
                NotificationCompat$Action notificationCompat$Action2 = (NotificationCompat$Action) arrayList.get(i5);
                Bundle bundle5 = new Bundle();
                IconCompat iconCompatA = notificationCompat$Action2.a();
                Bundle bundle6 = notificationCompat$Action2.f11876a;
                bundle5.putInt("icon", iconCompatA != null ? iconCompatA.f() : i4);
                bundle5.putCharSequence("title", notificationCompat$Action2.f11882i);
                bundle5.putParcelable("actionIntent", notificationCompat$Action2.f11883j);
                Bundle bundle7 = bundle6 != null ? new Bundle(bundle6) : new Bundle();
                bundle7.putBoolean("android.support.allowGeneratedReplies", notificationCompat$Action2.d);
                bundle5.putBundle("extras", bundle7);
                RemoteInput[] remoteInputArr = notificationCompat$Action2.f11878c;
                if (remoteInputArr == null) {
                    bundleArr = bundleArr2;
                } else {
                    bundleArr = new Bundle[remoteInputArr.length];
                    int i6 = 0;
                    while (i6 < remoteInputArr.length) {
                        RemoteInput remoteInput = remoteInputArr[i6];
                        int i7 = i6;
                        Bundle bundle8 = new Bundle();
                        RemoteInput[] remoteInputArr2 = remoteInputArr;
                        Bundle[] bundleArr3 = bundleArr;
                        bundle8.putString("resultKey", remoteInput.f11992a);
                        bundle8.putCharSequence("label", remoteInput.f11993b);
                        bundle8.putCharSequenceArray("choices", remoteInput.f11994c);
                        bundle8.putBoolean("allowFreeFormInput", remoteInput.d);
                        bundle8.putBundle("extras", remoteInput.f11996f);
                        Set set = remoteInput.g;
                        if (set != null && !set.isEmpty()) {
                            ArrayList<String> arrayList5 = new ArrayList<>(set.size());
                            Iterator it4 = set.iterator();
                            while (it4.hasNext()) {
                                arrayList5.add((String) it4.next());
                            }
                            bundle8.putStringArrayList("allowedDataTypes", arrayList5);
                        }
                        bundleArr3[i7] = bundle8;
                        i6 = i7 + 1;
                        remoteInputArr = remoteInputArr2;
                        bundleArr = bundleArr3;
                    }
                }
                bundle5.putParcelableArray("remoteInputs", bundleArr);
                bundle5.putBoolean("showsUserInterface", notificationCompat$Action2.f11879e);
                bundle5.putInt("semanticAction", notificationCompat$Action2.f11880f);
                bundle4.putBundle(string, bundle5);
                i5++;
                arrayList = arrayList;
                bundleArr2 = null;
                i4 = 0;
            }
            bundle2.putBundle("invisible_actions", bundle4);
            bundle3.putBundle("invisible_actions", bundle4);
            notificationCompat$Builder.d().putBundle("android.car.EXTENSIONS", bundle2);
            this.d.putBundle("android.car.EXTENSIONS", bundle3);
        }
        Icon icon = notificationCompat$Builder.S;
        if (icon != null) {
            this.f11948b.setSmallIcon(icon);
        }
        this.f11948b.setExtras(notificationCompat$Builder.C);
        this.f11948b.setRemoteInputHistory(null);
        RemoteViews remoteViews = notificationCompat$Builder.G;
        if (remoteViews != null) {
            this.f11948b.setCustomContentView(remoteViews);
        }
        RemoteViews remoteViews2 = notificationCompat$Builder.H;
        if (remoteViews2 != null) {
            this.f11948b.setCustomBigContentView(remoteViews2);
        }
        this.f11948b.setBadgeIconType(notificationCompat$Builder.J);
        this.f11948b.setSettingsText(notificationCompat$Builder.r);
        this.f11948b.setShortcutId(notificationCompat$Builder.K);
        this.f11948b.setTimeoutAfter(notificationCompat$Builder.M);
        this.f11948b.setGroupAlertBehavior(0);
        if (notificationCompat$Builder.A) {
            this.f11948b.setColorized(notificationCompat$Builder.z);
        }
        if (!TextUtils.isEmpty(notificationCompat$Builder.I)) {
            this.f11948b.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
        }
        Iterator it5 = notificationCompat$Builder.f11909c.iterator();
        while (it5.hasNext()) {
            this.f11948b.addPerson(((Person) it5.next()).c());
        }
        this.f11948b.setAllowSystemGeneratedContextualActions(notificationCompat$Builder.O);
        Notification.Builder builder2 = this.f11948b;
        NotificationCompat$BubbleMetadata notificationCompat$BubbleMetadata = notificationCompat$Builder.P;
        if (notificationCompat$BubbleMetadata != null) {
            int i8 = Build.VERSION.SDK_INT;
            if (i8 >= 30) {
                bubbleMetadataB = NotificationCompat$BubbleMetadata.Api30Impl.b(notificationCompat$BubbleMetadata);
            } else if (i8 == 29) {
                bubbleMetadataB = NotificationCompat$BubbleMetadata.Api29Impl.b(notificationCompat$BubbleMetadata);
            } else {
                bubbleMetadataB = null;
            }
        } else {
            bubbleMetadataB = null;
        }
        builder2.setBubbleMetadata(bubbleMetadataB);
        LocusIdCompat locusIdCompat = notificationCompat$Builder.L;
        if (locusIdCompat != null) {
            this.f11948b.setLocusId(locusIdCompat.f12011b);
        }
        int i9 = Build.VERSION.SDK_INT;
        if (i9 >= 31 && (i2 = notificationCompat$Builder.N) != 0) {
            Api31Impl.b(this.f11948b, i2);
        }
        if (i9 >= 36) {
            Api36Impl.a(this.f11948b, notificationCompat$Builder.g);
        }
        if (notificationCompat$Builder.R) {
            if (this.f11949c.w) {
                this.f11950e = 2;
            } else {
                this.f11950e = 1;
            }
            this.f11948b.setVibrate(null);
            this.f11948b.setSound(null);
            int i10 = notification.defaults & (-4);
            notification.defaults = i10;
            this.f11948b.setDefaults(i10);
            if (TextUtils.isEmpty(this.f11949c.v)) {
                this.f11948b.setGroup("silent");
            }
            this.f11948b.setGroupAlertBehavior(this.f11950e);
        }
    }

    @Override // androidx.core.app.NotificationBuilderWithBuilderAccessor
    public final Notification.Builder a() {
        return this.f11948b;
    }

    public final void b(NotificationCompat$Action notificationCompat$Action) {
        IconCompat iconCompatA = notificationCompat$Action.a();
        int i2 = notificationCompat$Action.f11880f;
        boolean z = notificationCompat$Action.d;
        Bundle bundle = notificationCompat$Action.f11876a;
        Notification.Action.Builder builder = new Notification.Action.Builder(iconCompatA != null ? iconCompatA.h(null) : null, notificationCompat$Action.f11882i, notificationCompat$Action.f11883j);
        RemoteInput[] remoteInputArr = notificationCompat$Action.f11878c;
        if (remoteInputArr != null) {
            android.app.RemoteInput[] remoteInputArr2 = new android.app.RemoteInput[remoteInputArr.length];
            for (int i3 = 0; i3 < remoteInputArr.length; i3++) {
                RemoteInput remoteInput = remoteInputArr[i3];
                android.app.RemoteInput.Builder builderAddExtras = new android.app.RemoteInput.Builder(remoteInput.f11992a).setLabel(remoteInput.f11993b).setChoices(remoteInput.f11994c).setAllowFreeFormInput(remoteInput.d).addExtras(remoteInput.f11996f);
                Set set = remoteInput.g;
                if (set != null) {
                    Iterator it = set.iterator();
                    while (it.hasNext()) {
                        builderAddExtras.setAllowDataType((String) it.next(), true);
                    }
                }
                builderAddExtras.setEditChoicesBeforeSending(remoteInput.f11995e);
                remoteInputArr2[i3] = builderAddExtras.build();
            }
            for (android.app.RemoteInput remoteInput2 : remoteInputArr2) {
                builder.addRemoteInput(remoteInput2);
            }
        }
        Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
        bundle2.putBoolean("android.support.allowGeneratedReplies", z);
        builder.setAllowGeneratedReplies(z);
        bundle2.putInt("android.support.action.semanticAction", i2);
        builder.setSemanticAction(i2);
        builder.setContextual(notificationCompat$Action.g);
        if (Build.VERSION.SDK_INT >= 31) {
            Api31Impl.a(builder, notificationCompat$Action.f11884k);
        }
        bundle2.putBoolean("android.support.action.showsUserInterface", notificationCompat$Action.f11879e);
        builder.addExtras(bundle2);
        this.f11948b.addAction(builder.build());
    }
}
