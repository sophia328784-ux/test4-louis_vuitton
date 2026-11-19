package com.google.android.exoplayer2.util;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import com.google.android.exoplayer2.Player;
import java.util.Formatter;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public abstract class Util {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f28451a = Build.VERSION.SDK_INT;

    public static final class Api21 {
        public static Drawable a(Context context, Resources resources, int i2) {
            return resources.getDrawable(i2, context.getTheme());
        }
    }

    static {
        String str = Build.DEVICE;
        String str2 = Build.MANUFACTURER;
        String str3 = Build.MODEL;
        Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?");
        Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
        Pattern.compile("%([A-Fa-f0-9]{2})");
        Pattern.compile("(?:.*\\.)?isml?(?:/(manifest(.*))?)?", 2);
    }

    public static boolean a(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    public static Drawable b(Context context, Resources resources, int i2) {
        return f28451a >= 21 ? Api21.a(context, resources, i2) : resources.getDrawable(i2);
    }

    public static String c(StringBuilder sb, Formatter formatter, long j2) {
        if (j2 == -9223372036854775807L) {
            j2 = 0;
        }
        String str = j2 < 0 ? "-" : "";
        long jAbs = (Math.abs(j2) + 500) / 1000;
        long j3 = jAbs % 60;
        long j4 = (jAbs / 60) % 60;
        long j5 = jAbs / 3600;
        sb.setLength(0);
        return j5 > 0 ? formatter.format("%s%d:%02d:%02d", str, Long.valueOf(j5), Long.valueOf(j4), Long.valueOf(j3)).toString() : formatter.format("%s%02d:%02d", str, Long.valueOf(j4), Long.valueOf(j3)).toString();
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0029  */
    /* JADX WARN: Code duplicated, block: B:20:0x002d A[RETURN] */
    public static boolean d(Player player) {
        boolean z = false;
        if (player == null) {
            return false;
        }
        int iH = player.h();
        if (iH != 1 || !player.d()) {
            if (iH == 4 && player.d()) {
                player.k();
            }
            if (player.d()) {
                return z;
            }
            player.c();
            return true;
        }
        player.f();
        z = true;
        if (player.d()) {
            return z;
        }
        player.c();
        return true;
    }

    public static void e(int i2) {
        Integer.toString(i2, 36);
    }

    public static boolean f(Player player) {
        return player == null || !player.r() || player.h() == 1 || player.h() == 4;
    }

    public static String g(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (int i2 = 0; i2 < bArr.length; i2++) {
            sb.append(Character.forDigit((bArr[i2] >> 4) & 15, 16));
            sb.append(Character.forDigit(bArr[i2] & 15, 16));
        }
        return sb.toString();
    }
}
