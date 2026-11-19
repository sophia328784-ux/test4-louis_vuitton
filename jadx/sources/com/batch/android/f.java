package com.batch.android;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.batch.android.e.o0;
import com.batch.android.e.t;
import com.batch.android.e.z;
import com.sightcall.universal.media.offline.FileUtils;
import java.net.MalformedURLException;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class f extends o0 {
    private static final String n = "ImageDownloadWebservice";
    private String m;

    public f(Context context, String str, List<Double> list) throws MalformedURLException {
        super(context, o0.c.GET, a(context, str, list), new String[0]);
        this.m = a(context, str, list);
    }

    public static String a(Context context, String str, List<Double> list) {
        Float fA;
        if (list != null && (fA = com.batch.android.e.o.a(context)) != null) {
            double dDoubleValue = fA.doubleValue();
            Double dValueOf = Double.valueOf(dDoubleValue);
            if (list.contains(dValueOf)) {
                return a(str, dValueOf);
            }
            for (Double d : list) {
                if (dDoubleValue < d.doubleValue()) {
                    return a(str, d);
                }
            }
        }
        return str;
    }

    @Override // com.batch.android.e.o0
    public String A() {
        return z.H;
    }

    @Override // com.batch.android.e.o0
    public String B() {
        return z.I;
    }

    @Override // com.batch.android.e.o0
    public String C() {
        return z.G;
    }

    @Override // com.batch.android.e.o0
    public String F() {
        return z.B;
    }

    public Bitmap G() {
        try {
            t.c(n, "Image download webservice started [" + this.m + "]");
            byte[] bArrK = k();
            if (bArrK == null) {
                t.c(n, "Error while downloading image [" + this.m + "]");
                return null;
            }
            Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrK, 0, bArrK.length);
            if (bitmapDecodeByteArray == null) {
                throw new RuntimeException("Unable to decode bitmap");
            }
            t.c(n, "Image download webservice ended [" + this.m + "]");
            return bitmapDecodeByteArray;
        } catch (Throwable th) {
            t.c(n, "Error while downloading image [" + this.m + "]", th);
            return null;
        }
    }

    @Override // com.batch.android.e.o0
    public String o() {
        return z.D;
    }

    @Override // com.batch.android.e.o0
    public String p() {
        return z.C;
    }

    @Override // com.batch.android.e.o0
    public String v() {
        return z.E;
    }

    @Override // com.batch.android.e.o0
    public com.batch.android.b1.g<?> w() {
        return null;
    }

    @Override // com.batch.android.e.o0
    public String y() {
        return z.F;
    }

    private static String a(String str, Double d) {
        try {
            int iLastIndexOf = str.lastIndexOf(FileUtils.HIDDEN_PREFIX);
            return str.substring(0, iLastIndexOf) + "-" + d + FileUtils.HIDDEN_PREFIX + str.substring(iLastIndexOf + 1);
        } catch (Exception e2) {
            t.c(n, "Error while appending density to image url", e2);
            return str;
        }
    }
}
