package lv.nfc.reader.utils;

import defpackage.d21;
import java.util.Calendar;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class LVChallengeGenerator {
    private static String appendFirst(String str, String str2) {
        return d21.j(str2, str);
    }

    private static String appendLast(String str, String str2) {
        return d21.j(str, str2);
    }

    private String convertToHexString(String str) {
        return ensureLength(Long.toHexString(Long.parseLong(str)).toUpperCase());
    }

    private String ensureLength(String str) {
        return String.format("%12s", str).replace(' ', '0');
    }

    private String getDayDigits(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return String.format("%02d", Integer.valueOf(calendar.get(5)));
    }

    private String getMonthDigits(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return String.format("%02d", Integer.valueOf(calendar.get(2) + 1));
    }

    public static void main(String[] strArr) {
        LVChallengeGenerator lVChallengeGenerator = new LVChallengeGenerator();
        System.out.println("Generated Challenge: " + lVChallengeGenerator.generateChallenge());
    }

    private long truncateToHours(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        return calendar.getTimeInMillis() / 1000;
    }

    public String generateChallenge() {
        Date date = new Date();
        return convertToHexString(appendLast(appendFirst(String.valueOf(truncateToHours(date)), getDayDigits(date)), getMonthDigits(date)));
    }
}
