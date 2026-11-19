package androidx.core.app;

import android.app.Notification;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.core.graphics.drawable.IconCompat;
import androidx.core.os.BundleCompat;
import com.batch.android.s.b;
import defpackage.th;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class NotificationCompat$Style {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public NotificationCompat$Builder f11944a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public CharSequence f11945b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public CharSequence f11946c;
    public boolean d = false;

    /* JADX WARN: Code duplicated, block: B:47:0x0092  */
    /* JADX WARN: Code duplicated, block: B:97:0x0177  */
    public static NotificationCompat$Style d(Notification notification) {
        NotificationCompat$Style notificationCompat$MessagingStyle;
        Bundle bundle = notification.extras;
        if (bundle != null) {
            String string = bundle.getString("androidx.core.app.extra.COMPAT_TEMPLATE");
            if (string != null) {
                switch (string) {
                    case "androidx.core.app.NotificationCompat$ProgressStyle":
                        notificationCompat$MessagingStyle = new NotificationCompat$Style() { // from class: androidx.core.app.NotificationCompat$ProgressStyle

                            /* JADX INFO: renamed from: h, reason: collision with root package name */
                            public boolean f11934h;

                            /* JADX INFO: renamed from: j, reason: collision with root package name */
                            public IconCompat f11936j;

                            /* JADX INFO: renamed from: k, reason: collision with root package name */
                            public IconCompat f11937k;
                            public IconCompat l;

                            /* JADX INFO: renamed from: e, reason: collision with root package name */
                            public ArrayList f11932e = new ArrayList();

                            /* JADX INFO: renamed from: f, reason: collision with root package name */
                            public ArrayList f11933f = new ArrayList();
                            public int g = 0;

                            /* JADX INFO: renamed from: i, reason: collision with root package name */
                            public boolean f11935i = true;

                            public static final class Api36Impl {
                                public static void a(Notification.ProgressStyle progressStyle, int i2) {
                                    progressStyle.setProgress(i2);
                                }

                                public static void b(Notification.ProgressStyle progressStyle, Icon icon) {
                                    progressStyle.setProgressEndIcon(icon);
                                }

                                public static void c(Notification.ProgressStyle progressStyle, boolean z) {
                                    progressStyle.setProgressIndeterminate(z);
                                }

                                public static void d(Notification.ProgressStyle progressStyle, List<Point> list) {
                                    for (Point point : list) {
                                        progressStyle.addProgressPoint(new Notification.ProgressStyle.Point(point.f11938a).setColor(point.f11940c).setId(point.f11939b));
                                    }
                                }

                                public static void e(Notification.ProgressStyle progressStyle, List<Segment> list) {
                                    for (Segment segment : list) {
                                        progressStyle.addProgressSegment(new Notification.ProgressStyle.Segment(segment.f11941a).setColor(segment.f11943c).setId(segment.f11942b));
                                    }
                                }

                                public static void f(Notification.ProgressStyle progressStyle, Icon icon) {
                                    progressStyle.setProgressStartIcon(icon);
                                }

                                public static void g(Notification.ProgressStyle progressStyle, Icon icon) {
                                    progressStyle.setProgressTrackerIcon(icon);
                                }

                                public static void h(Notification.ProgressStyle progressStyle, boolean z) {
                                    progressStyle.setStyledByProgress(z);
                                }
                            }

                            public static final class Point {

                                /* JADX INFO: renamed from: a, reason: collision with root package name */
                                public final int f11938a;

                                /* JADX INFO: renamed from: b, reason: collision with root package name */
                                public int f11939b = 0;

                                /* JADX INFO: renamed from: c, reason: collision with root package name */
                                public int f11940c = 0;

                                public Point(int i2) {
                                    this.f11938a = i2;
                                }
                            }

                            public static final class Segment {

                                /* JADX INFO: renamed from: a, reason: collision with root package name */
                                public final int f11941a;

                                /* JADX INFO: renamed from: b, reason: collision with root package name */
                                public int f11942b = 0;

                                /* JADX INFO: renamed from: c, reason: collision with root package name */
                                public int f11943c = 0;

                                public Segment(int i2) {
                                    this.f11941a = i2;
                                }
                            }

                            public static IconCompat h(Parcelable parcelable) {
                                if (parcelable == null) {
                                    return null;
                                }
                                if (parcelable instanceof Icon) {
                                    return IconCompat.b((Icon) parcelable);
                                }
                                if (parcelable instanceof Bitmap) {
                                    return IconCompat.d((Bitmap) parcelable);
                                }
                                return null;
                            }

                            @Override // androidx.core.app.NotificationCompat$Style
                            public final void a(Bundle bundle2) {
                                super.a(bundle2);
                                if (Build.VERSION.SDK_INT < 36) {
                                    ArrayList arrayList = this.f11932e;
                                    ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>();
                                    if (arrayList != null && !arrayList.isEmpty()) {
                                        for (int i2 = 0; i2 < arrayList.size(); i2++) {
                                            Segment segment = (Segment) arrayList.get(i2);
                                            if (segment.f11941a > 0) {
                                                Bundle bundle3 = new Bundle();
                                                bundle3.putInt("length", segment.f11941a);
                                                bundle3.putInt(b.a.f24015b, segment.f11942b);
                                                bundle3.putInt("colorInt", segment.f11943c);
                                                arrayList2.add(bundle3);
                                            }
                                        }
                                    }
                                    bundle2.putParcelableArrayList("android.progressSegments", arrayList2);
                                    ArrayList arrayList3 = this.f11933f;
                                    ArrayList<? extends Parcelable> arrayList4 = new ArrayList<>();
                                    if (arrayList3 != null && !arrayList3.isEmpty()) {
                                        for (int i3 = 0; i3 < arrayList3.size(); i3++) {
                                            Point point = (Point) arrayList3.get(i3);
                                            if (point.f11938a >= 0) {
                                                Bundle bundle4 = new Bundle();
                                                bundle4.putInt("position", point.f11938a);
                                                bundle4.putInt(b.a.f24015b, point.f11939b);
                                                bundle4.putInt("colorInt", point.f11940c);
                                                arrayList4.add(bundle4);
                                            }
                                        }
                                    }
                                    bundle2.putParcelableArrayList("android.progressPoints", arrayList4);
                                    bundle2.putInt("android.progress", this.g);
                                    bundle2.putBoolean("android.progressIndeterminate", this.f11934h);
                                    bundle2.putInt("android.progressMax", i());
                                    bundle2.putBoolean("android.styledByProgress", this.f11935i);
                                    NotificationCompat$Builder notificationCompat$Builder = this.f11944a;
                                    Context context = notificationCompat$Builder != null ? notificationCompat$Builder.f11907a : null;
                                    if (context == null) {
                                        return;
                                    }
                                    IconCompat iconCompat = this.f11936j;
                                    if (iconCompat != null) {
                                        bundle2.putParcelable("android.progressTrackerIcon", iconCompat.h(context));
                                    } else {
                                        bundle2.remove("android.progressTrackerIcon");
                                    }
                                    IconCompat iconCompat2 = this.f11937k;
                                    if (iconCompat2 != null) {
                                        bundle2.putParcelable("android.progressStartIcon", iconCompat2.h(context));
                                    } else {
                                        bundle2.remove("android.progressStartIcon");
                                    }
                                    IconCompat iconCompat3 = this.l;
                                    if (iconCompat3 != null) {
                                        bundle2.putParcelable("android.progressEndIcon", iconCompat3.h(context));
                                    } else {
                                        bundle2.remove("android.progressEndIcon");
                                    }
                                }
                            }

                            @Override // androidx.core.app.NotificationCompat$Style
                            public final void b(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
                                Notification.Builder builder = ((NotificationCompatBuilder) notificationBuilderWithBuilderAccessor).f11948b;
                                if (Build.VERSION.SDK_INT < 36) {
                                    int i2 = i();
                                    builder.setProgress(i2, Math.min(this.g, i2), this.f11934h);
                                    return;
                                }
                                Context context = ((NotificationCompatBuilder) notificationBuilderWithBuilderAccessor).f11947a;
                                Notification.ProgressStyle progressStyleB = th.b();
                                Api36Impl.h(progressStyleB, this.f11935i);
                                Api36Impl.a(progressStyleB, this.g);
                                Api36Impl.c(progressStyleB, this.f11934h);
                                IconCompat iconCompat = this.f11937k;
                                Api36Impl.f(progressStyleB, iconCompat != null ? iconCompat.h(context) : null);
                                IconCompat iconCompat2 = this.l;
                                Api36Impl.b(progressStyleB, iconCompat2 != null ? iconCompat2.h(context) : null);
                                IconCompat iconCompat3 = this.f11936j;
                                Api36Impl.g(progressStyleB, iconCompat3 != null ? iconCompat3.h(context) : null);
                                Api36Impl.d(progressStyleB, this.f11933f);
                                Api36Impl.e(progressStyleB, this.f11932e);
                                builder.setStyle(progressStyleB);
                            }

                            @Override // androidx.core.app.NotificationCompat$Style
                            public final void c(Bundle bundle2) {
                                super.c(bundle2);
                                bundle2.remove("android.progressSegments");
                                bundle2.remove("android.progress");
                                bundle2.remove("android.styledByProgress");
                                bundle2.remove("android.progressTrackerIcon");
                                bundle2.remove("android.progressStartIcon");
                                bundle2.remove("android.progressEndIcon");
                                bundle2.remove("android.progressPoints");
                                bundle2.remove("android.progressIndeterminate");
                            }

                            @Override // androidx.core.app.NotificationCompat$Style
                            public final String e() {
                                return "androidx.core.app.NotificationCompat$ProgressStyle";
                            }

                            @Override // androidx.core.app.NotificationCompat$Style
                            public final void f(Bundle bundle2) {
                                super.f(bundle2);
                                ArrayList arrayListC = BundleCompat.c(bundle2, "android.progressSegments", Bundle.class);
                                ArrayList arrayList = new ArrayList();
                                if (arrayListC != null && !arrayListC.isEmpty()) {
                                    for (int i2 = 0; i2 < arrayListC.size(); i2++) {
                                        Bundle bundle3 = (Bundle) arrayListC.get(i2);
                                        int i3 = bundle3.getInt("length");
                                        if (i3 > 0) {
                                            int i4 = bundle3.getInt(b.a.f24015b);
                                            int i5 = bundle3.getInt("colorInt", 0);
                                            Segment segment = new Segment(i3);
                                            segment.f11942b = i4;
                                            segment.f11943c = i5;
                                            arrayList.add(segment);
                                        }
                                    }
                                }
                                this.f11932e = arrayList;
                                this.g = bundle2.getInt("android.progress", 0);
                                this.f11934h = bundle2.getBoolean("android.progressIndeterminate", false);
                                this.f11935i = bundle2.getBoolean("android.styledByProgress", true);
                                ArrayList arrayListC2 = BundleCompat.c(bundle2, "android.progressPoints", Bundle.class);
                                ArrayList arrayList2 = new ArrayList();
                                if (arrayListC2 != null && !arrayListC2.isEmpty()) {
                                    for (int i6 = 0; i6 < arrayListC2.size(); i6++) {
                                        Bundle bundle4 = (Bundle) arrayListC2.get(i6);
                                        int i7 = bundle4.getInt("position");
                                        if (i7 >= 0) {
                                            int i8 = bundle4.getInt(b.a.f24015b);
                                            int i9 = bundle4.getInt("colorInt", 0);
                                            Point point = new Point(i7);
                                            point.f11939b = i8;
                                            point.f11940c = i9;
                                            arrayList2.add(point);
                                        }
                                    }
                                }
                                this.f11933f = arrayList2;
                                this.f11936j = h((Parcelable) BundleCompat.a(bundle2, "android.progressTrackerIcon", Icon.class));
                                this.f11937k = h((Parcelable) BundleCompat.a(bundle2, "android.progressStartIcon", Icon.class));
                                this.l = h((Parcelable) BundleCompat.a(bundle2, "android.progressEndIcon", Icon.class));
                            }

                            public final int i() {
                                ArrayList arrayList = this.f11932e;
                                if (arrayList != null && !arrayList.isEmpty()) {
                                    int i2 = 0;
                                    int iAddExact = 0;
                                    for (int i3 = 0; i3 < arrayList.size(); i3++) {
                                        int i4 = ((Segment) arrayList.get(i3)).f11941a;
                                        if (i4 > 0) {
                                            try {
                                                iAddExact = Math.addExact(iAddExact, i4);
                                                i2++;
                                            } catch (ArithmeticException unused) {
                                                return 100;
                                            }
                                        }
                                    }
                                    if (i2 != 0) {
                                        return iAddExact;
                                    }
                                }
                                return 100;
                            }
                        };
                        break;
                    case "androidx.core.app.NotificationCompat$DecoratedCustomViewStyle":
                        notificationCompat$MessagingStyle = new NotificationCompat$DecoratedCustomViewStyle();
                        break;
                    case "androidx.core.app.NotificationCompat$BigPictureStyle":
                        notificationCompat$MessagingStyle = new NotificationCompat$BigPictureStyle();
                        break;
                    case "androidx.core.app.NotificationCompat$CallStyle":
                        notificationCompat$MessagingStyle = new NotificationCompat$CallStyle();
                        break;
                    case "androidx.core.app.NotificationCompat$InboxStyle":
                        notificationCompat$MessagingStyle = new NotificationCompat$InboxStyle();
                        break;
                    case "androidx.core.app.NotificationCompat$BigTextStyle":
                        notificationCompat$MessagingStyle = new NotificationCompat$BigTextStyle();
                        break;
                    case "androidx.core.app.NotificationCompat$MessagingStyle":
                        notificationCompat$MessagingStyle = new NotificationCompat$MessagingStyle();
                        break;
                    default:
                        notificationCompat$MessagingStyle = null;
                        break;
                }
            } else {
                notificationCompat$MessagingStyle = null;
            }
            if (notificationCompat$MessagingStyle == null) {
                if (bundle.containsKey("android.selfDisplayName") || bundle.containsKey("android.messagingStyleUser")) {
                    notificationCompat$MessagingStyle = new NotificationCompat$MessagingStyle();
                } else if (bundle.containsKey("android.picture") || bundle.containsKey("android.pictureIcon")) {
                    notificationCompat$MessagingStyle = new NotificationCompat$BigPictureStyle();
                } else if (bundle.containsKey("android.bigText")) {
                    notificationCompat$MessagingStyle = new NotificationCompat$BigTextStyle();
                } else if (bundle.containsKey("android.textLines")) {
                    notificationCompat$MessagingStyle = new NotificationCompat$InboxStyle();
                } else if (bundle.containsKey("android.callType")) {
                    notificationCompat$MessagingStyle = new NotificationCompat$CallStyle();
                } else if (bundle.containsKey("android.progressSegments") || bundle.containsKey("android.progressPoints")) {
                    notificationCompat$MessagingStyle = new NotificationCompat$Style() { // from class: androidx.core.app.NotificationCompat$ProgressStyle

                        /* JADX INFO: renamed from: h, reason: collision with root package name */
                        public boolean f11934h;

                        /* JADX INFO: renamed from: j, reason: collision with root package name */
                        public IconCompat f11936j;

                        /* JADX INFO: renamed from: k, reason: collision with root package name */
                        public IconCompat f11937k;
                        public IconCompat l;

                        /* JADX INFO: renamed from: e, reason: collision with root package name */
                        public ArrayList f11932e = new ArrayList();

                        /* JADX INFO: renamed from: f, reason: collision with root package name */
                        public ArrayList f11933f = new ArrayList();
                        public int g = 0;

                        /* JADX INFO: renamed from: i, reason: collision with root package name */
                        public boolean f11935i = true;

                        public static final class Api36Impl {
                            public static void a(Notification.ProgressStyle progressStyle, int i2) {
                                progressStyle.setProgress(i2);
                            }

                            public static void b(Notification.ProgressStyle progressStyle, Icon icon) {
                                progressStyle.setProgressEndIcon(icon);
                            }

                            public static void c(Notification.ProgressStyle progressStyle, boolean z) {
                                progressStyle.setProgressIndeterminate(z);
                            }

                            public static void d(Notification.ProgressStyle progressStyle, List<Point> list) {
                                for (Point point : list) {
                                    progressStyle.addProgressPoint(new Notification.ProgressStyle.Point(point.f11938a).setColor(point.f11940c).setId(point.f11939b));
                                }
                            }

                            public static void e(Notification.ProgressStyle progressStyle, List<Segment> list) {
                                for (Segment segment : list) {
                                    progressStyle.addProgressSegment(new Notification.ProgressStyle.Segment(segment.f11941a).setColor(segment.f11943c).setId(segment.f11942b));
                                }
                            }

                            public static void f(Notification.ProgressStyle progressStyle, Icon icon) {
                                progressStyle.setProgressStartIcon(icon);
                            }

                            public static void g(Notification.ProgressStyle progressStyle, Icon icon) {
                                progressStyle.setProgressTrackerIcon(icon);
                            }

                            public static void h(Notification.ProgressStyle progressStyle, boolean z) {
                                progressStyle.setStyledByProgress(z);
                            }
                        }

                        public static final class Point {

                            /* JADX INFO: renamed from: a, reason: collision with root package name */
                            public final int f11938a;

                            /* JADX INFO: renamed from: b, reason: collision with root package name */
                            public int f11939b = 0;

                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                            public int f11940c = 0;

                            public Point(int i2) {
                                this.f11938a = i2;
                            }
                        }

                        public static final class Segment {

                            /* JADX INFO: renamed from: a, reason: collision with root package name */
                            public final int f11941a;

                            /* JADX INFO: renamed from: b, reason: collision with root package name */
                            public int f11942b = 0;

                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                            public int f11943c = 0;

                            public Segment(int i2) {
                                this.f11941a = i2;
                            }
                        }

                        public static IconCompat h(Parcelable parcelable) {
                            if (parcelable == null) {
                                return null;
                            }
                            if (parcelable instanceof Icon) {
                                return IconCompat.b((Icon) parcelable);
                            }
                            if (parcelable instanceof Bitmap) {
                                return IconCompat.d((Bitmap) parcelable);
                            }
                            return null;
                        }

                        @Override // androidx.core.app.NotificationCompat$Style
                        public final void a(Bundle bundle2) {
                            super.a(bundle2);
                            if (Build.VERSION.SDK_INT < 36) {
                                ArrayList arrayList = this.f11932e;
                                ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>();
                                if (arrayList != null && !arrayList.isEmpty()) {
                                    for (int i2 = 0; i2 < arrayList.size(); i2++) {
                                        Segment segment = (Segment) arrayList.get(i2);
                                        if (segment.f11941a > 0) {
                                            Bundle bundle3 = new Bundle();
                                            bundle3.putInt("length", segment.f11941a);
                                            bundle3.putInt(b.a.f24015b, segment.f11942b);
                                            bundle3.putInt("colorInt", segment.f11943c);
                                            arrayList2.add(bundle3);
                                        }
                                    }
                                }
                                bundle2.putParcelableArrayList("android.progressSegments", arrayList2);
                                ArrayList arrayList3 = this.f11933f;
                                ArrayList<? extends Parcelable> arrayList4 = new ArrayList<>();
                                if (arrayList3 != null && !arrayList3.isEmpty()) {
                                    for (int i3 = 0; i3 < arrayList3.size(); i3++) {
                                        Point point = (Point) arrayList3.get(i3);
                                        if (point.f11938a >= 0) {
                                            Bundle bundle4 = new Bundle();
                                            bundle4.putInt("position", point.f11938a);
                                            bundle4.putInt(b.a.f24015b, point.f11939b);
                                            bundle4.putInt("colorInt", point.f11940c);
                                            arrayList4.add(bundle4);
                                        }
                                    }
                                }
                                bundle2.putParcelableArrayList("android.progressPoints", arrayList4);
                                bundle2.putInt("android.progress", this.g);
                                bundle2.putBoolean("android.progressIndeterminate", this.f11934h);
                                bundle2.putInt("android.progressMax", i());
                                bundle2.putBoolean("android.styledByProgress", this.f11935i);
                                NotificationCompat$Builder notificationCompat$Builder = this.f11944a;
                                Context context = notificationCompat$Builder != null ? notificationCompat$Builder.f11907a : null;
                                if (context == null) {
                                    return;
                                }
                                IconCompat iconCompat = this.f11936j;
                                if (iconCompat != null) {
                                    bundle2.putParcelable("android.progressTrackerIcon", iconCompat.h(context));
                                } else {
                                    bundle2.remove("android.progressTrackerIcon");
                                }
                                IconCompat iconCompat2 = this.f11937k;
                                if (iconCompat2 != null) {
                                    bundle2.putParcelable("android.progressStartIcon", iconCompat2.h(context));
                                } else {
                                    bundle2.remove("android.progressStartIcon");
                                }
                                IconCompat iconCompat3 = this.l;
                                if (iconCompat3 != null) {
                                    bundle2.putParcelable("android.progressEndIcon", iconCompat3.h(context));
                                } else {
                                    bundle2.remove("android.progressEndIcon");
                                }
                            }
                        }

                        @Override // androidx.core.app.NotificationCompat$Style
                        public final void b(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
                            Notification.Builder builder = ((NotificationCompatBuilder) notificationBuilderWithBuilderAccessor).f11948b;
                            if (Build.VERSION.SDK_INT < 36) {
                                int i2 = i();
                                builder.setProgress(i2, Math.min(this.g, i2), this.f11934h);
                                return;
                            }
                            Context context = ((NotificationCompatBuilder) notificationBuilderWithBuilderAccessor).f11947a;
                            Notification.ProgressStyle progressStyleB = th.b();
                            Api36Impl.h(progressStyleB, this.f11935i);
                            Api36Impl.a(progressStyleB, this.g);
                            Api36Impl.c(progressStyleB, this.f11934h);
                            IconCompat iconCompat = this.f11937k;
                            Api36Impl.f(progressStyleB, iconCompat != null ? iconCompat.h(context) : null);
                            IconCompat iconCompat2 = this.l;
                            Api36Impl.b(progressStyleB, iconCompat2 != null ? iconCompat2.h(context) : null);
                            IconCompat iconCompat3 = this.f11936j;
                            Api36Impl.g(progressStyleB, iconCompat3 != null ? iconCompat3.h(context) : null);
                            Api36Impl.d(progressStyleB, this.f11933f);
                            Api36Impl.e(progressStyleB, this.f11932e);
                            builder.setStyle(progressStyleB);
                        }

                        @Override // androidx.core.app.NotificationCompat$Style
                        public final void c(Bundle bundle2) {
                            super.c(bundle2);
                            bundle2.remove("android.progressSegments");
                            bundle2.remove("android.progress");
                            bundle2.remove("android.styledByProgress");
                            bundle2.remove("android.progressTrackerIcon");
                            bundle2.remove("android.progressStartIcon");
                            bundle2.remove("android.progressEndIcon");
                            bundle2.remove("android.progressPoints");
                            bundle2.remove("android.progressIndeterminate");
                        }

                        @Override // androidx.core.app.NotificationCompat$Style
                        public final String e() {
                            return "androidx.core.app.NotificationCompat$ProgressStyle";
                        }

                        @Override // androidx.core.app.NotificationCompat$Style
                        public final void f(Bundle bundle2) {
                            super.f(bundle2);
                            ArrayList arrayListC = BundleCompat.c(bundle2, "android.progressSegments", Bundle.class);
                            ArrayList arrayList = new ArrayList();
                            if (arrayListC != null && !arrayListC.isEmpty()) {
                                for (int i2 = 0; i2 < arrayListC.size(); i2++) {
                                    Bundle bundle3 = (Bundle) arrayListC.get(i2);
                                    int i3 = bundle3.getInt("length");
                                    if (i3 > 0) {
                                        int i4 = bundle3.getInt(b.a.f24015b);
                                        int i5 = bundle3.getInt("colorInt", 0);
                                        Segment segment = new Segment(i3);
                                        segment.f11942b = i4;
                                        segment.f11943c = i5;
                                        arrayList.add(segment);
                                    }
                                }
                            }
                            this.f11932e = arrayList;
                            this.g = bundle2.getInt("android.progress", 0);
                            this.f11934h = bundle2.getBoolean("android.progressIndeterminate", false);
                            this.f11935i = bundle2.getBoolean("android.styledByProgress", true);
                            ArrayList arrayListC2 = BundleCompat.c(bundle2, "android.progressPoints", Bundle.class);
                            ArrayList arrayList2 = new ArrayList();
                            if (arrayListC2 != null && !arrayListC2.isEmpty()) {
                                for (int i6 = 0; i6 < arrayListC2.size(); i6++) {
                                    Bundle bundle4 = (Bundle) arrayListC2.get(i6);
                                    int i7 = bundle4.getInt("position");
                                    if (i7 >= 0) {
                                        int i8 = bundle4.getInt(b.a.f24015b);
                                        int i9 = bundle4.getInt("colorInt", 0);
                                        Point point = new Point(i7);
                                        point.f11939b = i8;
                                        point.f11940c = i9;
                                        arrayList2.add(point);
                                    }
                                }
                            }
                            this.f11933f = arrayList2;
                            this.f11936j = h((Parcelable) BundleCompat.a(bundle2, "android.progressTrackerIcon", Icon.class));
                            this.f11937k = h((Parcelable) BundleCompat.a(bundle2, "android.progressStartIcon", Icon.class));
                            this.l = h((Parcelable) BundleCompat.a(bundle2, "android.progressEndIcon", Icon.class));
                        }

                        public final int i() {
                            ArrayList arrayList = this.f11932e;
                            if (arrayList != null && !arrayList.isEmpty()) {
                                int i2 = 0;
                                int iAddExact = 0;
                                for (int i3 = 0; i3 < arrayList.size(); i3++) {
                                    int i4 = ((Segment) arrayList.get(i3)).f11941a;
                                    if (i4 > 0) {
                                        try {
                                            iAddExact = Math.addExact(iAddExact, i4);
                                            i2++;
                                        } catch (ArithmeticException unused) {
                                            return 100;
                                        }
                                    }
                                }
                                if (i2 != 0) {
                                    return iAddExact;
                                }
                            }
                            return 100;
                        }
                    };
                } else {
                    String string2 = bundle.getString("android.template");
                    if (string2 == null) {
                        notificationCompat$MessagingStyle = null;
                    } else if (string2.equals(Notification.BigPictureStyle.class.getName())) {
                        notificationCompat$MessagingStyle = new NotificationCompat$BigPictureStyle();
                    } else if (string2.equals(Notification.BigTextStyle.class.getName())) {
                        notificationCompat$MessagingStyle = new NotificationCompat$BigTextStyle();
                    } else if (string2.equals(Notification.InboxStyle.class.getName())) {
                        notificationCompat$MessagingStyle = new NotificationCompat$InboxStyle();
                    } else if (Build.VERSION.SDK_INT >= 36 && string2.equals(Notification.ProgressStyle.class.getName())) {
                        notificationCompat$MessagingStyle = new NotificationCompat$Style() { // from class: androidx.core.app.NotificationCompat$ProgressStyle

                            /* JADX INFO: renamed from: h, reason: collision with root package name */
                            public boolean f11934h;

                            /* JADX INFO: renamed from: j, reason: collision with root package name */
                            public IconCompat f11936j;

                            /* JADX INFO: renamed from: k, reason: collision with root package name */
                            public IconCompat f11937k;
                            public IconCompat l;

                            /* JADX INFO: renamed from: e, reason: collision with root package name */
                            public ArrayList f11932e = new ArrayList();

                            /* JADX INFO: renamed from: f, reason: collision with root package name */
                            public ArrayList f11933f = new ArrayList();
                            public int g = 0;

                            /* JADX INFO: renamed from: i, reason: collision with root package name */
                            public boolean f11935i = true;

                            public static final class Api36Impl {
                                public static void a(Notification.ProgressStyle progressStyle, int i2) {
                                    progressStyle.setProgress(i2);
                                }

                                public static void b(Notification.ProgressStyle progressStyle, Icon icon) {
                                    progressStyle.setProgressEndIcon(icon);
                                }

                                public static void c(Notification.ProgressStyle progressStyle, boolean z) {
                                    progressStyle.setProgressIndeterminate(z);
                                }

                                public static void d(Notification.ProgressStyle progressStyle, List<Point> list) {
                                    for (Point point : list) {
                                        progressStyle.addProgressPoint(new Notification.ProgressStyle.Point(point.f11938a).setColor(point.f11940c).setId(point.f11939b));
                                    }
                                }

                                public static void e(Notification.ProgressStyle progressStyle, List<Segment> list) {
                                    for (Segment segment : list) {
                                        progressStyle.addProgressSegment(new Notification.ProgressStyle.Segment(segment.f11941a).setColor(segment.f11943c).setId(segment.f11942b));
                                    }
                                }

                                public static void f(Notification.ProgressStyle progressStyle, Icon icon) {
                                    progressStyle.setProgressStartIcon(icon);
                                }

                                public static void g(Notification.ProgressStyle progressStyle, Icon icon) {
                                    progressStyle.setProgressTrackerIcon(icon);
                                }

                                public static void h(Notification.ProgressStyle progressStyle, boolean z) {
                                    progressStyle.setStyledByProgress(z);
                                }
                            }

                            public static final class Point {

                                /* JADX INFO: renamed from: a, reason: collision with root package name */
                                public final int f11938a;

                                /* JADX INFO: renamed from: b, reason: collision with root package name */
                                public int f11939b = 0;

                                /* JADX INFO: renamed from: c, reason: collision with root package name */
                                public int f11940c = 0;

                                public Point(int i2) {
                                    this.f11938a = i2;
                                }
                            }

                            public static final class Segment {

                                /* JADX INFO: renamed from: a, reason: collision with root package name */
                                public final int f11941a;

                                /* JADX INFO: renamed from: b, reason: collision with root package name */
                                public int f11942b = 0;

                                /* JADX INFO: renamed from: c, reason: collision with root package name */
                                public int f11943c = 0;

                                public Segment(int i2) {
                                    this.f11941a = i2;
                                }
                            }

                            public static IconCompat h(Parcelable parcelable) {
                                if (parcelable == null) {
                                    return null;
                                }
                                if (parcelable instanceof Icon) {
                                    return IconCompat.b((Icon) parcelable);
                                }
                                if (parcelable instanceof Bitmap) {
                                    return IconCompat.d((Bitmap) parcelable);
                                }
                                return null;
                            }

                            @Override // androidx.core.app.NotificationCompat$Style
                            public final void a(Bundle bundle2) {
                                super.a(bundle2);
                                if (Build.VERSION.SDK_INT < 36) {
                                    ArrayList arrayList = this.f11932e;
                                    ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>();
                                    if (arrayList != null && !arrayList.isEmpty()) {
                                        for (int i2 = 0; i2 < arrayList.size(); i2++) {
                                            Segment segment = (Segment) arrayList.get(i2);
                                            if (segment.f11941a > 0) {
                                                Bundle bundle3 = new Bundle();
                                                bundle3.putInt("length", segment.f11941a);
                                                bundle3.putInt(b.a.f24015b, segment.f11942b);
                                                bundle3.putInt("colorInt", segment.f11943c);
                                                arrayList2.add(bundle3);
                                            }
                                        }
                                    }
                                    bundle2.putParcelableArrayList("android.progressSegments", arrayList2);
                                    ArrayList arrayList3 = this.f11933f;
                                    ArrayList<? extends Parcelable> arrayList4 = new ArrayList<>();
                                    if (arrayList3 != null && !arrayList3.isEmpty()) {
                                        for (int i3 = 0; i3 < arrayList3.size(); i3++) {
                                            Point point = (Point) arrayList3.get(i3);
                                            if (point.f11938a >= 0) {
                                                Bundle bundle4 = new Bundle();
                                                bundle4.putInt("position", point.f11938a);
                                                bundle4.putInt(b.a.f24015b, point.f11939b);
                                                bundle4.putInt("colorInt", point.f11940c);
                                                arrayList4.add(bundle4);
                                            }
                                        }
                                    }
                                    bundle2.putParcelableArrayList("android.progressPoints", arrayList4);
                                    bundle2.putInt("android.progress", this.g);
                                    bundle2.putBoolean("android.progressIndeterminate", this.f11934h);
                                    bundle2.putInt("android.progressMax", i());
                                    bundle2.putBoolean("android.styledByProgress", this.f11935i);
                                    NotificationCompat$Builder notificationCompat$Builder = this.f11944a;
                                    Context context = notificationCompat$Builder != null ? notificationCompat$Builder.f11907a : null;
                                    if (context == null) {
                                        return;
                                    }
                                    IconCompat iconCompat = this.f11936j;
                                    if (iconCompat != null) {
                                        bundle2.putParcelable("android.progressTrackerIcon", iconCompat.h(context));
                                    } else {
                                        bundle2.remove("android.progressTrackerIcon");
                                    }
                                    IconCompat iconCompat2 = this.f11937k;
                                    if (iconCompat2 != null) {
                                        bundle2.putParcelable("android.progressStartIcon", iconCompat2.h(context));
                                    } else {
                                        bundle2.remove("android.progressStartIcon");
                                    }
                                    IconCompat iconCompat3 = this.l;
                                    if (iconCompat3 != null) {
                                        bundle2.putParcelable("android.progressEndIcon", iconCompat3.h(context));
                                    } else {
                                        bundle2.remove("android.progressEndIcon");
                                    }
                                }
                            }

                            @Override // androidx.core.app.NotificationCompat$Style
                            public final void b(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
                                Notification.Builder builder = ((NotificationCompatBuilder) notificationBuilderWithBuilderAccessor).f11948b;
                                if (Build.VERSION.SDK_INT < 36) {
                                    int i2 = i();
                                    builder.setProgress(i2, Math.min(this.g, i2), this.f11934h);
                                    return;
                                }
                                Context context = ((NotificationCompatBuilder) notificationBuilderWithBuilderAccessor).f11947a;
                                Notification.ProgressStyle progressStyleB = th.b();
                                Api36Impl.h(progressStyleB, this.f11935i);
                                Api36Impl.a(progressStyleB, this.g);
                                Api36Impl.c(progressStyleB, this.f11934h);
                                IconCompat iconCompat = this.f11937k;
                                Api36Impl.f(progressStyleB, iconCompat != null ? iconCompat.h(context) : null);
                                IconCompat iconCompat2 = this.l;
                                Api36Impl.b(progressStyleB, iconCompat2 != null ? iconCompat2.h(context) : null);
                                IconCompat iconCompat3 = this.f11936j;
                                Api36Impl.g(progressStyleB, iconCompat3 != null ? iconCompat3.h(context) : null);
                                Api36Impl.d(progressStyleB, this.f11933f);
                                Api36Impl.e(progressStyleB, this.f11932e);
                                builder.setStyle(progressStyleB);
                            }

                            @Override // androidx.core.app.NotificationCompat$Style
                            public final void c(Bundle bundle2) {
                                super.c(bundle2);
                                bundle2.remove("android.progressSegments");
                                bundle2.remove("android.progress");
                                bundle2.remove("android.styledByProgress");
                                bundle2.remove("android.progressTrackerIcon");
                                bundle2.remove("android.progressStartIcon");
                                bundle2.remove("android.progressEndIcon");
                                bundle2.remove("android.progressPoints");
                                bundle2.remove("android.progressIndeterminate");
                            }

                            @Override // androidx.core.app.NotificationCompat$Style
                            public final String e() {
                                return "androidx.core.app.NotificationCompat$ProgressStyle";
                            }

                            @Override // androidx.core.app.NotificationCompat$Style
                            public final void f(Bundle bundle2) {
                                super.f(bundle2);
                                ArrayList arrayListC = BundleCompat.c(bundle2, "android.progressSegments", Bundle.class);
                                ArrayList arrayList = new ArrayList();
                                if (arrayListC != null && !arrayListC.isEmpty()) {
                                    for (int i2 = 0; i2 < arrayListC.size(); i2++) {
                                        Bundle bundle3 = (Bundle) arrayListC.get(i2);
                                        int i3 = bundle3.getInt("length");
                                        if (i3 > 0) {
                                            int i4 = bundle3.getInt(b.a.f24015b);
                                            int i5 = bundle3.getInt("colorInt", 0);
                                            Segment segment = new Segment(i3);
                                            segment.f11942b = i4;
                                            segment.f11943c = i5;
                                            arrayList.add(segment);
                                        }
                                    }
                                }
                                this.f11932e = arrayList;
                                this.g = bundle2.getInt("android.progress", 0);
                                this.f11934h = bundle2.getBoolean("android.progressIndeterminate", false);
                                this.f11935i = bundle2.getBoolean("android.styledByProgress", true);
                                ArrayList arrayListC2 = BundleCompat.c(bundle2, "android.progressPoints", Bundle.class);
                                ArrayList arrayList2 = new ArrayList();
                                if (arrayListC2 != null && !arrayListC2.isEmpty()) {
                                    for (int i6 = 0; i6 < arrayListC2.size(); i6++) {
                                        Bundle bundle4 = (Bundle) arrayListC2.get(i6);
                                        int i7 = bundle4.getInt("position");
                                        if (i7 >= 0) {
                                            int i8 = bundle4.getInt(b.a.f24015b);
                                            int i9 = bundle4.getInt("colorInt", 0);
                                            Point point = new Point(i7);
                                            point.f11939b = i8;
                                            point.f11940c = i9;
                                            arrayList2.add(point);
                                        }
                                    }
                                }
                                this.f11933f = arrayList2;
                                this.f11936j = h((Parcelable) BundleCompat.a(bundle2, "android.progressTrackerIcon", Icon.class));
                                this.f11937k = h((Parcelable) BundleCompat.a(bundle2, "android.progressStartIcon", Icon.class));
                                this.l = h((Parcelable) BundleCompat.a(bundle2, "android.progressEndIcon", Icon.class));
                            }

                            public final int i() {
                                ArrayList arrayList = this.f11932e;
                                if (arrayList != null && !arrayList.isEmpty()) {
                                    int i2 = 0;
                                    int iAddExact = 0;
                                    for (int i3 = 0; i3 < arrayList.size(); i3++) {
                                        int i4 = ((Segment) arrayList.get(i3)).f11941a;
                                        if (i4 > 0) {
                                            try {
                                                iAddExact = Math.addExact(iAddExact, i4);
                                                i2++;
                                            } catch (ArithmeticException unused) {
                                                return 100;
                                            }
                                        }
                                    }
                                    if (i2 != 0) {
                                        return iAddExact;
                                    }
                                }
                                return 100;
                            }
                        };
                    } else if (string2.equals(Notification.MessagingStyle.class.getName())) {
                        notificationCompat$MessagingStyle = new NotificationCompat$MessagingStyle();
                    } else if (string2.equals(Notification.DecoratedCustomViewStyle.class.getName())) {
                        notificationCompat$MessagingStyle = new NotificationCompat$DecoratedCustomViewStyle();
                    } else {
                        notificationCompat$MessagingStyle = null;
                    }
                }
            }
            if (notificationCompat$MessagingStyle != null) {
                try {
                    notificationCompat$MessagingStyle.f(bundle);
                    return notificationCompat$MessagingStyle;
                } catch (ClassCastException unused) {
                    return null;
                }
            }
        }
        return null;
    }

    public void a(Bundle bundle) {
        if (this.d) {
            bundle.putCharSequence("android.summaryText", this.f11946c);
        }
        CharSequence charSequence = this.f11945b;
        if (charSequence != null) {
            bundle.putCharSequence("android.title.big", charSequence);
        }
        String strE = e();
        if (strE != null) {
            bundle.putString("androidx.core.app.extra.COMPAT_TEMPLATE", strE);
        }
    }

    public void b(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
    }

    public void c(Bundle bundle) {
        bundle.remove("android.summaryText");
        bundle.remove("android.title.big");
        bundle.remove("androidx.core.app.extra.COMPAT_TEMPLATE");
    }

    public String e() {
        return null;
    }

    public void f(Bundle bundle) {
        if (bundle.containsKey("android.summaryText")) {
            this.f11946c = bundle.getCharSequence("android.summaryText");
            this.d = true;
        }
        this.f11945b = bundle.getCharSequence("android.title.big");
    }

    public final void g(NotificationCompat$Builder notificationCompat$Builder) {
        if (this.f11944a != notificationCompat$Builder) {
            this.f11944a = notificationCompat$Builder;
            if (notificationCompat$Builder != null) {
                notificationCompat$Builder.i(this);
            }
        }
    }
}
