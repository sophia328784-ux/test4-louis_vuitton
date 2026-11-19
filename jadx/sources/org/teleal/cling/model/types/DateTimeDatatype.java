package org.teleal.cling.model.types;

import defpackage.o60;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes5.dex */
public class DateTimeDatatype extends AbstractDatatype<Calendar> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String[] f78506b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f78507c;

    public DateTimeDatatype(String[] strArr, String str) {
        this.f78506b = strArr;
        this.f78507c = str;
    }

    @Override // org.teleal.cling.model.types.AbstractDatatype, org.teleal.cling.model.types.Datatype
    public final String a(Object obj) {
        Calendar calendar = (Calendar) obj;
        if (calendar == null) {
            return "";
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(this.f78507c);
        simpleDateFormat.setTimeZone(TimeZone.getDefault());
        return simpleDateFormat.format(calendar.getTime());
    }

    @Override // org.teleal.cling.model.types.AbstractDatatype, org.teleal.cling.model.types.Datatype
    public final Object e(String str) {
        Date date = null;
        if (str.equals("")) {
            return null;
        }
        String strConcat = str.endsWith("Z") ? str.substring(0, str.length() - 1).concat("+0000") : (str.length() > 7 && str.charAt(str.length() - 3) == ':' && (str.charAt(str.length() + (-6)) == '-' || str.charAt(str.length() + (-6)) == '+')) ? o60.g(3, 0, str).concat(str.substring(str.length() - 2)) : str;
        for (String str2 : this.f78506b) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str2);
            simpleDateFormat.setTimeZone(TimeZone.getDefault());
            try {
                date = simpleDateFormat.parse(strConcat);
            } catch (ParseException unused) {
            }
        }
        if (date == null) {
            throw new InvalidValueException("Can't parse date/time from: ".concat(str));
        }
        Calendar calendar = Calendar.getInstance(TimeZone.getDefault());
        calendar.setTime(date);
        return calendar;
    }
}
