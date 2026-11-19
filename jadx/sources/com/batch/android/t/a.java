package com.batch.android.t;

import java.util.Calendar;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public enum a {
    SUNDAY(0),
    MONDAY(1),
    TUESDAY(2),
    WEDNESDAY(3),
    THURSDAY(4),
    FRIDAY(5),
    SATURDAY(6);


    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f24038b;
    private static final /* synthetic */ EnumEntries l = EnumEntriesKt.a(a());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C0073a f24031c = new C0073a(null);

    a(int i2) {
        this.f24038b = i2;
    }

    public static EnumEntries<a> b() {
        return l;
    }

    public final int c() {
        return this.f24038b;
    }

    /* JADX INFO: renamed from: com.batch.android.t.a$a, reason: collision with other inner class name */
    public static final class C0073a {
        public /* synthetic */ C0073a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final a a(Calendar calendar) {
            Object obj;
            calendar.getClass();
            Object[] array = a.b().toArray(new a[0]);
            int length = array.length;
            for (int i2 = 0; i2 < length; i2++) {
                obj = array[i2];
                if (((a) obj).c() == calendar.get(7) - 1) {
                    return (a) obj;
                }
            }
            obj = null;
            return (a) obj;
        }

        private C0073a() {
        }

        @JvmStatic
        public final a a(int i2) {
            Object obj;
            Object[] array = a.b().toArray(new a[0]);
            int length = array.length;
            for (int i3 = 0; i3 < length; i3++) {
                obj = array[i3];
                if (((a) obj).c() == i2) {
                    return (a) obj;
                }
            }
            obj = null;
            return (a) obj;
        }
    }

    @JvmStatic
    public static final a a(Calendar calendar) {
        return f24031c.a(calendar);
    }

    @JvmStatic
    public static final a a(int i2) {
        return f24031c.a(i2);
    }
}
