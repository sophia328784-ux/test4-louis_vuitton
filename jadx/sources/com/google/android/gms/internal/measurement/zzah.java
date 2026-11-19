package com.google.android.gms.internal.measurement;

import com.sightcall.universal.media.offline.FileUtils;
import defpackage.d21;
import defpackage.md;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class zzah implements zzao {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Double f30493b;

    public zzah(Double d) {
        if (d == null) {
            this.f30493b = Double.valueOf(Double.NaN);
        } else {
            this.f30493b = d;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Iterator I() {
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final zzao Q() {
        return new zzah(this.f30493b);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzah) {
            return this.f30493b.equals(((zzah) obj).f30493b);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final String f0() {
        Double d = this.f30493b;
        if (Double.isNaN(d.doubleValue())) {
            return "NaN";
        }
        if (Double.isInfinite(d.doubleValue())) {
            return d.doubleValue() > 0.0d ? "Infinity" : "-Infinity";
        }
        BigDecimal bigDecimalStripTrailingZeros = BigDecimal.valueOf(d.doubleValue()).stripTrailingZeros();
        DecimalFormat decimalFormat = new DecimalFormat("0E0");
        decimalFormat.setRoundingMode(RoundingMode.HALF_UP);
        decimalFormat.setMinimumFractionDigits((bigDecimalStripTrailingZeros.scale() > 0 ? bigDecimalStripTrailingZeros.precision() : bigDecimalStripTrailingZeros.scale()) - 1);
        String str = decimalFormat.format(bigDecimalStripTrailingZeros);
        int iIndexOf = str.indexOf("E");
        if (iIndexOf <= 0) {
            return str;
        }
        int i2 = Integer.parseInt(str.substring(iIndexOf + 1));
        return ((i2 >= 0 || i2 <= -7) && (i2 < 0 || i2 >= 21)) ? str.replace("E-", "e-").replace("E", "e+") : bigDecimalStripTrailingZeros.toPlainString();
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Double g0() {
        return this.f30493b;
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final zzao h(String str, zzg zzgVar, ArrayList arrayList) {
        if ("toString".equals(str)) {
            return new zzas(f0());
        }
        md.n(d21.k(f0(), FileUtils.HIDDEN_PREFIX, str, " is not a function."));
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Boolean h0() {
        Double d = this.f30493b;
        boolean z = false;
        if (!Double.isNaN(d.doubleValue()) && d.doubleValue() != 0.0d) {
            z = true;
        }
        return Boolean.valueOf(z);
    }

    public final int hashCode() {
        return this.f30493b.hashCode();
    }

    public final String toString() {
        return f0();
    }
}
