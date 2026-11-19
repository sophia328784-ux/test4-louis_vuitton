package com.networkbench.agent.impl.plugin.c;

import com.networkbench.agent.impl.util.Logger;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f37974a = "LogTrackFileFilter";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f37975b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f37976c;
    private Map<String, Long> d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f37977e;

    public c(long j2, long j3, Map<String, Long> map, String str) {
        this.f37975b = j2;
        this.f37976c = j3;
        this.d = map;
        this.f37977e = str;
    }

    public String[] a() {
        String[] strArr = new String[0];
        if (this.f37975b > this.f37976c) {
            Logger.error(f37974a, "start time is bigger than end time, skip");
            return strArr;
        }
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
            Date dateA = a(new Date(this.f37975b));
            Date dateA2 = a(new Date(this.f37976c));
            ArrayList arrayList = new ArrayList(10);
            Iterator<Map.Entry<String, Long>> it = this.d.entrySet().iterator();
            while (it.hasNext()) {
                Date date = simpleDateFormat.parse(it.next().getKey());
                if (date.compareTo(dateA) >= 0 && date.compareTo(dateA2) <= 0) {
                    arrayList.add(simpleDateFormat.format(date));
                }
            }
            if (arrayList.size() == 0) {
                String str = simpleDateFormat.format(dateA2);
                Logger.debug(f37974a, "not get start to end date file, add end day to arrays:" + str);
                arrayList.add(str);
                a(this.f37977e + File.separator + dateA2.getTime());
            }
            return (String[]) arrayList.toArray(new String[0]);
        } catch (Throwable th) {
            Logger.error(f37974a, "getLogTrackDays error", th);
            return strArr;
        }
    }

    private void a(String str) throws IOException {
        Logger.debug(f37974a, "createFile in " + str);
        File file = new File(str);
        if (!file.getParentFile().exists()) {
            file.getParentFile().mkdirs();
        }
        if (file.exists()) {
            return;
        }
        file.createNewFile();
    }

    private Date a(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        a(calendar);
        return calendar.getTime();
    }

    private void a(Calendar calendar) {
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
    }
}
