package com.google.android.gms.location;

import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzaj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DecimalFormat f31390a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final DecimalFormat f31391b;

    static {
        Locale locale = Locale.ROOT;
        f31390a = new DecimalFormat(".000000", DecimalFormatSymbols.getInstance(locale));
        DecimalFormat decimalFormat = new DecimalFormat(".##", DecimalFormatSymbols.getInstance(locale));
        f31391b = decimalFormat;
        decimalFormat.setRoundingMode(RoundingMode.DOWN);
    }
}
