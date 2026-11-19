package com.linkplay.core.utils;

import com.android.wiimu.model.cling_callback.renderingcontrol.alarm.b;
import defpackage.tr;
import java.io.PrintStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes2.dex */
public class UTCTimeUtils {
    public static float ONE_HOUR_MS = 3600000.0f;

    public static Calendar convertCalendarToUTC(Calendar calendar) {
        calendar.add(14, -(calendar.get(16) + calendar.get(15)));
        return calendar;
    }

    public static String covertCalendarToString(Calendar calendar) {
        return date2String(calendar.getTime());
    }

    private static void covertHourMinutes() {
        Calendar calendar = Calendar.getInstance();
        int i2 = calendar.get(1);
        int i3 = calendar.get(2);
        int i4 = calendar.get(5);
        int i5 = calendar.get(10);
        int i6 = calendar.get(12);
        int i7 = calendar.get(13);
        PrintStream printStream = System.out;
        StringBuilder sb = new StringBuilder();
        sb.append(i2);
        sb.append("-");
        sb.append(i3);
        sb.append("-");
        sb.append(i4);
        tr.w(i5, i6, " ", ":", sb);
        sb.append(":");
        sb.append(i7);
        printStream.println(sb.toString());
        calendar.add(10, 2);
        Calendar calendar2 = Calendar.getInstance();
        printStream.println(calendar.compareTo(calendar2));
        printStream.println(calendar.getTimeInMillis() + " , " + calendar2.getTimeInMillis() + " , " + (calendar.getTimeInMillis() - calendar2.getTimeInMillis()));
        String strCovertCalendarToString = covertCalendarToString(calendar);
        String strCovertCalendarToString2 = covertCalendarToString(convertCalendarToUTC(calendar));
        String strUtc2Local = utc2Local(strCovertCalendarToString2);
        printStream.println(strCovertCalendarToString);
        printStream.println(strCovertCalendarToString2);
        printStream.println(strUtc2Local);
    }

    public static String date2String(Date date) {
        return new SimpleDateFormat(b.f22423j).format(date);
    }

    public static String getDateStringNoSpace(Date date) {
        return new SimpleDateFormat("yyyyMMddHHmmss").format(date);
    }

    public static long getDistanceTime(String str) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(b.f22423j);
        try {
            Date date = simpleDateFormat.parse(str);
            Date date2 = simpleDateFormat.parse(simpleDateFormat.format(new Date()));
            long time = date.getTime();
            long time2 = date2.getTime();
            if (time > time2) {
                return (time - time2) / 1000;
            }
            return 0L;
        } catch (ParseException e2) {
            e2.printStackTrace();
            return 0L;
        }
    }

    public static float getDstOffset() {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date(System.currentTimeMillis()));
        return calendar.get(16) / ONE_HOUR_MS;
    }

    public static float getTimeZoneNum(boolean z) {
        float rawOffset = TimeZone.getDefault().getRawOffset() / 3600000.0f;
        if (z) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(b.f22423j);
            try {
                Date date = simpleDateFormat.parse(simpleDateFormat.format(new Date(System.currentTimeMillis())));
                Calendar calendar = Calendar.getInstance();
                calendar.setTime(date);
                return (calendar.get(16) / 3600000.0f) + rawOffset;
            } catch (ParseException e2) {
                e2.printStackTrace();
            }
        }
        return rawOffset;
    }

    public static float getTimeZoneOffset() {
        return getDstOffset() + (TimeZone.getDefault().getRawOffset() / ONE_HOUR_MS);
    }

    public static String local2UTC(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(b.f22423j);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("gmt"));
        return simpleDateFormat.format(date);
    }

    public static void main(String[] strArr) {
        covertHourMinutes();
    }

    public static String utc2Local(String str, String str2, String str3) {
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

    public static String utc2Local(String str) {
        return utc2Local(str, b.f22423j, b.f22423j);
    }

    public static float getTimeZoneNum() {
        return getDstOffset() + (TimeZone.getDefault().getRawOffset() / ONE_HOUR_MS);
    }
}
