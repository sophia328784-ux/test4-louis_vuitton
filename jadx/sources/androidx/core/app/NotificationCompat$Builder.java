package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.LocusId;
import android.graphics.Bitmap;
import android.graphics.drawable.Icon;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.widget.RemoteViews;
import androidx.core.content.LocusIdCompat;
import androidx.core.graphics.drawable.IconCompat;
import defpackage.md;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class NotificationCompat$Builder {
    public final boolean A;
    public String B;
    public Bundle C;
    public int D;
    public int E;
    public final Notification F;
    public RemoteViews G;
    public RemoteViews H;
    public String I;
    public final int J;
    public final String K;
    public final LocusIdCompat L;
    public final long M;
    public int N;
    public final boolean O;
    public final NotificationCompat$BubbleMetadata P;
    public final Notification Q;
    public final boolean R;
    public final Icon S;
    public final ArrayList T;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f11907a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f11908b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f11909c;
    public final ArrayList d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CharSequence f11910e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public CharSequence f11911f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public PendingIntent f11912h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final PendingIntent f11913i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public IconCompat f11914j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public CharSequence f11915k;
    public int l;
    public int m;
    public boolean n;
    public boolean o;
    public NotificationCompat$Style p;
    public CharSequence q;
    public final CharSequence r;
    public int s;
    public int t;
    public boolean u;
    public String v;
    public boolean w;
    public final String x;
    public boolean y;
    public final boolean z;

    /* JADX WARN: Code duplicated, block: B:37:0x00f8  */
    public NotificationCompat$Builder(Context context, Notification notification) {
        LocusIdCompat locusIdCompat;
        NotificationCompat$BubbleMetadata notificationCompat$BubbleMetadataA;
        Bundle bundle;
        String str;
        String str2;
        NotificationCompat$Builder notificationCompat$Builder;
        Bundle bundle2;
        Bundle[] bundleArr;
        Bundle[] bundleArr2;
        this(context, notification.getChannelId());
        Bundle bundle3 = notification.extras;
        NotificationCompat$Style notificationCompat$StyleD = NotificationCompat$Style.d(notification);
        this.f11910e = e(notification.extras.getCharSequence("android.title"));
        this.f11911f = e(notification.extras.getCharSequence("android.text"));
        this.f11915k = e(notification.extras.getCharSequence("android.infoText"));
        this.q = e(notification.extras.getCharSequence("android.subText"));
        this.r = e(notification.getSettingsText());
        i(notificationCompat$StyleD);
        this.v = notification.getGroup();
        this.w = (notification.flags & 512) != 0;
        LocusId locusId = notification.getLocusId();
        if (locusId == null) {
            locusIdCompat = null;
        } else {
            String id = locusId.getId();
            if (TextUtils.isEmpty(id)) {
                md.n("id cannot be empty");
                throw null;
            }
            locusIdCompat = new LocusIdCompat(id);
        }
        this.L = locusIdCompat;
        this.Q.when = notification.when;
        this.n = notification.extras.getBoolean("android.showWhen");
        this.o = notification.extras.getBoolean("android.showChronometer");
        g(16, (notification.flags & 16) != 0);
        g(8, (notification.flags & 8) != 0);
        g(2, (notification.flags & 2) != 0);
        this.y = (notification.flags & 256) != 0;
        h(notification.largeIcon);
        this.J = notification.getBadgeIconType();
        this.B = notification.category;
        Notification.BubbleMetadata bubbleMetadata = notification.getBubbleMetadata();
        if (bubbleMetadata != null) {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 30) {
                notificationCompat$BubbleMetadataA = NotificationCompat$BubbleMetadata.Api30Impl.a(bubbleMetadata);
            } else if (i2 == 29) {
                notificationCompat$BubbleMetadataA = NotificationCompat$BubbleMetadata.Api29Impl.a(bubbleMetadata);
            } else {
                notificationCompat$BubbleMetadataA = null;
            }
        } else {
            notificationCompat$BubbleMetadataA = null;
        }
        this.P = notificationCompat$BubbleMetadataA;
        this.l = notification.number;
        this.Q.tickerText = e(notification.tickerText);
        this.f11912h = notification.contentIntent;
        this.Q.deleteIntent = notification.deleteIntent;
        PendingIntent pendingIntent = notification.fullScreenIntent;
        boolean z = (notification.flags & 128) != 0;
        this.f11913i = pendingIntent;
        g(128, z);
        Uri uri = notification.sound;
        int i3 = notification.audioStreamType;
        Notification notification2 = this.Q;
        notification2.sound = uri;
        notification2.audioStreamType = i3;
        notification2.audioAttributes = new AudioAttributes.Builder().setContentType(4).setLegacyStreamType(i3).build();
        this.R = "silent".equals(notification.getGroup()) || ((notification.flags & 512) == 0 ? notification.getGroupAlertBehavior() == 1 : notification.getGroupAlertBehavior() == 2);
        long[] jArr = notification.vibrate;
        Notification notification3 = this.Q;
        notification3.vibrate = jArr;
        int i4 = notification.ledARGB;
        int i5 = notification.ledOnMS;
        int i6 = notification.ledOffMS;
        notification3.ledARGB = i4;
        notification3.ledOnMS = i5;
        notification3.ledOffMS = i6;
        notification3.flags = ((i5 == 0 || i6 == 0) ? 0 : 1) | (notification3.flags & (-2));
        f(notification.defaults);
        this.m = notification.priority;
        this.D = notification.color;
        this.E = notification.visibility;
        this.F = notification.publicVersion;
        this.x = notification.getSortKey();
        this.M = notification.getTimeoutAfter();
        this.K = notification.getShortcutId();
        int i7 = bundle3.getInt("android.progressMax");
        int i8 = bundle3.getInt("android.progress");
        boolean z2 = bundle3.getBoolean("android.progressIndeterminate");
        this.s = i7;
        this.t = i8;
        this.u = z2;
        this.O = notification.getAllowSystemGeneratedContextualActions();
        int i9 = notification.icon;
        int i10 = notification.iconLevel;
        Notification notification4 = this.Q;
        notification4.icon = i9;
        notification4.iconLevel = i10;
        if (notification.extras == null) {
            str = "android.car.EXTENSIONS";
            str2 = "invisible_actions";
            bundle = null;
        } else {
            bundle = new Bundle(notification.extras);
            bundle.remove("android.title");
            bundle.remove("android.text");
            bundle.remove("android.infoText");
            bundle.remove("android.subText");
            if (Build.VERSION.SDK_INT >= 36) {
                bundle.remove("android.shortCriticalText");
            }
            bundle.remove("android.intent.extra.CHANNEL_ID");
            bundle.remove("android.intent.extra.CHANNEL_GROUP_ID");
            bundle.remove("android.showWhen");
            bundle.remove("android.progress");
            bundle.remove("android.progressMax");
            bundle.remove("android.progressIndeterminate");
            bundle.remove("android.chronometerCountDown");
            bundle.remove("android.colorized");
            bundle.remove("android.people.list");
            bundle.remove("android.people");
            bundle.remove("android.support.sortKey");
            bundle.remove("android.support.groupKey");
            bundle.remove("android.support.isGroupSummary");
            bundle.remove("android.support.localOnly");
            bundle.remove("android.support.actionExtras");
            str = "android.car.EXTENSIONS";
            Bundle bundle4 = bundle.getBundle(str);
            if (bundle4 != null) {
                Bundle bundle5 = new Bundle(bundle4);
                str2 = "invisible_actions";
                bundle5.remove(str2);
                bundle.putBundle(str, bundle5);
            } else {
                str2 = "invisible_actions";
            }
            if (notificationCompat$StyleD != null) {
                notificationCompat$StyleD.c(bundle);
            }
        }
        if (bundle != null) {
            notificationCompat$Builder = this;
            Bundle bundle6 = notificationCompat$Builder.C;
            if (bundle6 == null) {
                notificationCompat$Builder.C = new Bundle(bundle);
            } else {
                bundle6.putAll(bundle);
            }
        } else {
            notificationCompat$Builder = this;
        }
        notificationCompat$Builder.S = notification.getSmallIcon();
        Icon largeIcon = notification.getLargeIcon();
        if (largeIcon != null) {
            notificationCompat$Builder.f11914j = IconCompat.b(largeIcon);
        }
        Notification.Action[] actionArr = notification.actions;
        if (actionArr != null && actionArr.length != 0) {
            int length = actionArr.length;
            int i11 = 0;
            while (i11 < length) {
                Notification.Action action = actionArr[i11];
                NotificationCompat$Action.Builder builder = action.getIcon() != null ? new NotificationCompat$Action.Builder(IconCompat.c(action.getIcon()), action.title, action.actionIntent) : new NotificationCompat$Action.Builder(action.icon, action.title, action.actionIntent);
                android.app.RemoteInput[] remoteInputs = action.getRemoteInputs();
                if (remoteInputs != null && remoteInputs.length != 0) {
                    int length2 = remoteInputs.length;
                    int i12 = 0;
                    while (i12 < length2) {
                        android.app.RemoteInput remoteInput = remoteInputs[i12];
                        android.app.RemoteInput[] remoteInputArr = remoteInputs;
                        int i13 = length;
                        RemoteInput.Builder builder2 = new RemoteInput.Builder(remoteInput.getResultKey());
                        builder2.d = remoteInput.getLabel();
                        builder2.f12000e = remoteInput.getChoices();
                        builder2.f12001f = remoteInput.getAllowFreeFormInput();
                        Bundle extras = remoteInput.getExtras();
                        if (extras != null) {
                            builder2.f11999c.putAll(extras);
                        }
                        Set<String> allowedDataTypes = remoteInput.getAllowedDataTypes();
                        HashSet hashSet = builder2.f11998b;
                        if (allowedDataTypes != null) {
                            for (Iterator<String> it = allowedDataTypes.iterator(); it.hasNext(); it = it) {
                                hashSet.add(it.next());
                            }
                        }
                        RemoteInput remoteInput2 = new RemoteInput(builder2.f11997a, builder2.d, builder2.f12000e, builder2.f12001f, remoteInput.getEditChoicesBeforeSending(), builder2.f11999c, hashSet);
                        if (builder.f11889f == null) {
                            builder.f11889f = new ArrayList();
                        }
                        builder.f11889f.add(remoteInput2);
                        i12++;
                        remoteInputs = remoteInputArr;
                        length = i13;
                        i11 = i11;
                    }
                }
                int i14 = length;
                int i15 = i11;
                builder.d = NotificationCompat$Action.Builder.Api24Impl.a(action);
                builder.g = NotificationCompat$Action.Builder.Api28Impl.a(action);
                builder.f11891i = NotificationCompat$Action.Builder.Api29Impl.a(action);
                if (Build.VERSION.SDK_INT >= 31) {
                    builder.f11892j = NotificationCompat$Action.Builder.Api31Impl.a(action);
                }
                Bundle extras2 = action.getExtras();
                if (extras2 != null) {
                    builder.f11888e.putAll(extras2);
                }
                notificationCompat$Builder.b(builder.a());
                i11 = i15 + 1;
                actionArr = actionArr;
                length = i14;
            }
        }
        ArrayList<NotificationCompat$Action> arrayList = new ArrayList();
        Bundle bundle7 = notification.extras.getBundle(str);
        if (bundle7 != null && (bundle2 = bundle7.getBundle(str2)) != null) {
            for (int i16 = 0; i16 < bundle2.size(); i16++) {
                Bundle bundle8 = bundle2.getBundle(Integer.toString(i16));
                Bundle bundle9 = bundle8.getBundle("extras");
                boolean z3 = bundle9 != null ? bundle9.getBoolean("android.support.allowGeneratedReplies", false) : false;
                int i17 = bundle8.getInt("icon");
                CharSequence charSequence = bundle8.getCharSequence("title");
                PendingIntent pendingIntent2 = (PendingIntent) bundle8.getParcelable("actionIntent");
                Bundle bundle10 = bundle8.getBundle("extras");
                Parcelable[] parcelableArray = bundle8.getParcelableArray("remoteInputs");
                if ((parcelableArray instanceof Bundle[]) || parcelableArray == null) {
                    bundleArr = (Bundle[]) parcelableArray;
                } else {
                    bundleArr = (Bundle[]) Arrays.copyOf(parcelableArray, parcelableArray.length, Bundle[].class);
                    bundle8.putParcelableArray("remoteInputs", bundleArr);
                }
                RemoteInput[] remoteInputArrA = NotificationCompatJellybean.a(bundleArr);
                Parcelable[] parcelableArray2 = bundle8.getParcelableArray("dataOnlyRemoteInputs");
                if ((parcelableArray2 instanceof Bundle[]) || parcelableArray2 == null) {
                    bundleArr2 = (Bundle[]) parcelableArray2;
                } else {
                    bundleArr2 = (Bundle[]) Arrays.copyOf(parcelableArray2, parcelableArray2.length, Bundle[].class);
                    bundle8.putParcelableArray("dataOnlyRemoteInputs", bundleArr2);
                }
                NotificationCompatJellybean.a(bundleArr2);
                arrayList.add(new NotificationCompat$Action(i17 == 0 ? null : IconCompat.e(null, "", i17), charSequence, pendingIntent2, bundle10, remoteInputArrA, z3, bundle8.getInt("semanticAction"), bundle8.getBoolean("showsUserInterface"), false, false));
            }
        }
        if (!arrayList.isEmpty()) {
            for (NotificationCompat$Action notificationCompat$Action : arrayList) {
                if (notificationCompat$Action != null) {
                    notificationCompat$Builder.d.add(notificationCompat$Action);
                }
            }
        }
        String[] stringArray = notification.extras.getStringArray("android.people");
        if (stringArray != null && stringArray.length != 0) {
            for (String str3 : stringArray) {
                if (str3 != null && !str3.isEmpty()) {
                    notificationCompat$Builder.T.add(str3);
                }
            }
        }
        ArrayList parcelableArrayList = notification.extras.getParcelableArrayList("android.people.list");
        if (parcelableArrayList != null && !parcelableArrayList.isEmpty()) {
            Iterator it2 = parcelableArrayList.iterator();
            while (it2.hasNext()) {
                notificationCompat$Builder.f11909c.add(Person.a((android.app.Person) it2.next()));
            }
        }
        if (bundle3.containsKey("android.chronometerCountDown")) {
            notificationCompat$Builder.d().putBoolean("android.chronometerCountDown", bundle3.getBoolean("android.chronometerCountDown"));
        }
        if (bundle3.containsKey("android.colorized")) {
            notificationCompat$Builder.z = bundle3.getBoolean("android.colorized");
            notificationCompat$Builder.A = true;
        }
        int i18 = Build.VERSION.SDK_INT;
        if (i18 < 36 || !bundle3.containsKey("android.shortCriticalText")) {
            return;
        }
        String string = bundle3.getString("android.shortCriticalText");
        notificationCompat$Builder.g = string;
        if (i18 < 36) {
            notificationCompat$Builder.d().putString("android.shortCriticalText", string);
        }
    }

    public static CharSequence e(CharSequence charSequence) {
        return (charSequence != null && charSequence.length() > 5120) ? charSequence.subSequence(0, 5120) : charSequence;
    }

    public final void a(int i2, PendingIntent pendingIntent, String str) {
        this.f11908b.add(new NotificationCompat$Action(i2, str, pendingIntent));
    }

    public final void b(NotificationCompat$Action notificationCompat$Action) {
        if (notificationCompat$Action != null) {
            this.f11908b.add(notificationCompat$Action);
        }
    }

    public final Notification c() {
        Bundle bundle;
        NotificationCompatBuilder notificationCompatBuilder = new NotificationCompatBuilder(this);
        NotificationCompat$Builder notificationCompat$Builder = notificationCompatBuilder.f11949c;
        NotificationCompat$Style notificationCompat$Style = notificationCompat$Builder.p;
        if (notificationCompat$Style != null) {
            notificationCompat$Style.b(notificationCompatBuilder);
        }
        Notification notificationBuild = notificationCompatBuilder.f11948b.build();
        RemoteViews remoteViews = notificationCompat$Builder.G;
        if (remoteViews != null) {
            notificationBuild.contentView = remoteViews;
        }
        if (notificationCompat$Style != null) {
            notificationCompat$Builder.p.getClass();
        }
        if (notificationCompat$Style != null && (bundle = notificationBuild.extras) != null) {
            notificationCompat$Style.a(bundle);
        }
        return notificationBuild;
    }

    public final Bundle d() {
        if (this.C == null) {
            this.C = new Bundle();
        }
        return this.C;
    }

    public final void f(int i2) {
        Notification notification = this.Q;
        notification.defaults = i2;
        if ((i2 & 4) != 0) {
            notification.flags |= 1;
        }
    }

    public final void g(int i2, boolean z) {
        Notification notification = this.Q;
        if (z) {
            notification.flags = i2 | notification.flags;
        } else {
            notification.flags = (~i2) & notification.flags;
        }
    }

    public final void h(Bitmap bitmap) {
        this.f11914j = bitmap == null ? null : IconCompat.d(bitmap);
    }

    public final void i(NotificationCompat$Style notificationCompat$Style) {
        if (this.p != notificationCompat$Style) {
            this.p = notificationCompat$Style;
            if (notificationCompat$Style != null) {
                notificationCompat$Style.g(this);
            }
        }
    }

    @Deprecated
    public NotificationCompat$Builder(Context context) {
        this(context, (String) null);
    }

    public NotificationCompat$Builder(Context context, String str) {
        this.f11908b = new ArrayList();
        this.f11909c = new ArrayList();
        this.d = new ArrayList();
        this.n = true;
        this.y = false;
        this.D = 0;
        this.E = 0;
        this.J = 0;
        this.N = 0;
        Notification notification = new Notification();
        this.Q = notification;
        this.f11907a = context;
        this.I = str;
        notification.when = System.currentTimeMillis();
        notification.audioStreamType = -1;
        this.m = 0;
        this.T = new ArrayList();
        this.O = true;
    }
}
