package com.android.wiimu.model.cling_callback.renderingcontrol.alarm;

import com.linkplay.lpmdpkit.bean.LPAlarmList;
import com.linkplay.medialib.ContentTree;
import defpackage.pq0;
import java.io.Serializable;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public class b implements Serializable {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f22422i = "50";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f22423j = "yyyy-MM-dd HH:mm:ss";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f22425b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f22424a = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f22426c = com.android.wiimu.model.cling_callback.renderingcontrol.alarm.a.f22421e;
    private String d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f22427e = f22422i;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private a f22428f = a.Enable;
    private EnumC0034b g = EnumC0034b.Stop;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private c f22429h = c.Once;

    public enum a {
        Enable("1"),
        Disable(ContentTree.ROOT_ID);


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f22432a;

        a(String str) {
            this.f22432a = str;
        }

        public String b() {
            return this.f22432a;
        }
    }

    /* JADX INFO: renamed from: com.android.wiimu.model.cling_callback.renderingcontrol.alarm.b$b, reason: collision with other inner class name */
    public enum EnumC0034b {
        RunScript("RunScript"),
        PlayUrl("PlayUrl"),
        PlayQueue("PlayQueue"),
        PlayKeyMap(LPAlarmList.LPAlarmType.LP_ALARM_PLAYKEYMAP),
        Stop("Stop");


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f22437a;

        EnumC0034b(String str) {
            this.f22437a = str;
        }

        public String b() {
            return this.f22437a;
        }
    }

    public enum c {
        Once(LPAlarmList.LPAlarmTrigger.LP_ALARM_TRIGGER_ONCE),
        EveryDay(LPAlarmList.LPAlarmTrigger.LP_ALARM_TRIGGER_EVERYDAY),
        EveryWeek(LPAlarmList.LPAlarmTrigger.LP_ALARM_TRIGGER_EVERYWEEK),
        EveryMonth("EveryMonth");


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f22442a;

        c(String str) {
            this.f22442a = str;
        }

        public String b() {
            return this.f22442a;
        }
    }

    public b() {
        this.f22425b = "";
        this.f22425b = n();
    }

    public static String a(b bVar) {
        StringBuffer stringBuffer = new StringBuffer("<AlarmInfo>");
        stringBuffer.append("<Name>" + bVar.f22424a + "</Name>");
        stringBuffer.append("<Time>" + bVar.f22425b + "</Time>");
        String strB = bVar.k().b();
        String str = bVar.f22426c;
        if (strB.equals(String.valueOf(c.EveryDay)) && str != null && str.indexOf(ContentTree.ROOT_ID) != -1) {
            strB = String.valueOf(c.EveryWeek);
        }
        stringBuffer.append("<Trigger>" + strB + "</Trigger>");
        stringBuffer.append("<DaysSpecial>" + str + "</DaysSpecial>");
        stringBuffer.append("<Method>" + bVar.i().b() + "</Method>");
        stringBuffer.append("<Context>" + bVar.d + "</Context>");
        stringBuffer.append("<Volume>" + bVar.f22427e + "</Volume>");
        stringBuffer.append("<Enable>" + bVar.f().b() + "</Enable>");
        stringBuffer.append("</AlarmInfo>");
        return stringBuffer.toString();
    }

    public static long b() {
        Calendar calendar = Calendar.getInstance();
        calendar.add(14, -(calendar.get(16) + calendar.get(15)));
        return calendar.getTimeInMillis();
    }

    public static String d() {
        return a(System.currentTimeMillis());
    }

    public static String f(String str) {
        return a(str, f22423j, f22423j);
    }

    public static String n() {
        return a(b());
    }

    public void c(String str) {
        this.f22424a = str;
    }

    public String e() {
        return this.f22426c;
    }

    public String g() {
        return f(this.f22425b);
    }

    public String h() {
        return f(this.f22425b);
    }

    public EnumC0034b i() {
        return this.g;
    }

    public String j() {
        return this.f22424a;
    }

    public c k() {
        return this.f22429h;
    }

    public String l() {
        return this.f22425b;
    }

    public String m() {
        return this.f22427e;
    }

    public String toString() {
        return a(this);
    }

    public String c() {
        return this.d;
    }

    public void e(String str) {
        this.f22427e = str;
    }

    public a f() {
        return this.f22428f;
    }

    public void d(String str) {
        this.f22425b = str;
    }

    public void b(String str) {
        this.f22426c = str;
    }

    public static String b(long j2) {
        return a(b() + j2);
    }

    private void b(int i2, int i3, int i4, int i5, int i6, int i7) {
        this.f22425b = a(i2, i3, i4, i5, i6, i7);
    }

    public void a(int i2) {
        this.f22427e = String.valueOf(i2);
    }

    public void a(a aVar) {
        this.f22428f = aVar;
    }

    public void a(EnumC0034b enumC0034b) {
        this.g = enumC0034b;
    }

    public void a(c cVar) {
        this.f22429h = cVar;
    }

    private static String a(int i2, int i3, int i4, int i5, int i6, int i7) {
        Object objValueOf;
        Object objValueOf2;
        Object objValueOf3;
        Object objValueOf4;
        Object objValueOf5;
        StringBuilder sb = new StringBuilder();
        sb.append(i2);
        sb.append("-");
        if (i3 < 9) {
            objValueOf = pq0.k(i3, ContentTree.ROOT_ID);
        } else {
            objValueOf = Integer.valueOf(i3);
        }
        sb.append(objValueOf);
        sb.append("-");
        if (i4 < 9) {
            objValueOf2 = pq0.k(i4, ContentTree.ROOT_ID);
        } else {
            objValueOf2 = Integer.valueOf(i4);
        }
        sb.append(objValueOf2);
        sb.append(" ");
        if (i5 < 9) {
            objValueOf3 = pq0.k(i5, ContentTree.ROOT_ID);
        } else {
            objValueOf3 = Integer.valueOf(i5);
        }
        sb.append(objValueOf3);
        sb.append(":");
        if (i6 < 9) {
            objValueOf4 = pq0.k(i6, ContentTree.ROOT_ID);
        } else {
            objValueOf4 = Integer.valueOf(i6);
        }
        sb.append(objValueOf4);
        sb.append(":");
        if (i7 < 9) {
            objValueOf5 = pq0.k(i7, ContentTree.ROOT_ID);
        } else {
            objValueOf5 = Integer.valueOf(i7);
        }
        sb.append(objValueOf5);
        return sb.toString();
    }

    private static String a(long j2) {
        return new SimpleDateFormat(f22423j).format(new Date(j2));
    }

    public void a(String str) {
        this.d = str;
    }

    public static String a(String str, String str2, String str3) {
        Date date;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str2);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        try {
            date = simpleDateFormat.parse(str);
        } catch (ParseException e2) {
            e2.printStackTrace();
            date = null;
        }
        if (date == null) {
            return str;
        }
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat(str3);
        simpleDateFormat2.setTimeZone(TimeZone.getDefault());
        return simpleDateFormat2.format(Long.valueOf(date.getTime()));
    }

    public b a() {
        b bVar = new b();
        bVar.a(c());
        bVar.b(e());
        bVar.a(f());
        bVar.a(i());
        bVar.c(j());
        bVar.a(k());
        bVar.d(l());
        bVar.e(m());
        return bVar;
    }
}
