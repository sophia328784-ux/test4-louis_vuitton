package com.airbnb.lottie;

import android.graphics.Bitmap;
import android.graphics.Rect;
import androidx.collection.LongSparseArray;
import androidx.collection.SparseArrayCompat;
import com.airbnb.lottie.model.Marker;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.Utils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class LottieComposition {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public HashMap f21748c;
    public HashMap d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f21749e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public HashMap f21750f;
    public ArrayList g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public SparseArrayCompat f21751h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public LongSparseArray f21752i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ArrayList f21753j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Rect f21754k;
    public float l;
    public float m;
    public float n;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PerformanceTracker f21746a = new PerformanceTracker();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashSet f21747b = new HashSet();
    public int o = 0;

    public final void a(String str) {
        Logger.a(str);
        this.f21747b.add(str);
    }

    public final float b() {
        return (long) (((this.m - this.l) / this.n) * 1000.0f);
    }

    public final Map c() {
        float fC = Utils.c();
        if (fC != this.f21749e) {
            for (Map.Entry entry : this.d.entrySet()) {
                HashMap map = this.d;
                String str = (String) entry.getKey();
                LottieImageAsset lottieImageAsset = (LottieImageAsset) entry.getValue();
                float f2 = this.f21749e / fC;
                LottieImageAsset lottieImageAsset2 = new LottieImageAsset((int) (lottieImageAsset.f21767a * f2), (int) (lottieImageAsset.f21768b * f2), lottieImageAsset.f21769c, lottieImageAsset.d, lottieImageAsset.f21770e);
                Bitmap bitmap = lottieImageAsset.f21771f;
                if (bitmap != null) {
                    lottieImageAsset2.f21771f = Bitmap.createScaledBitmap(bitmap, lottieImageAsset2.f21767a, lottieImageAsset2.f21768b, true);
                }
                map.put(str, lottieImageAsset2);
            }
        }
        this.f21749e = fC;
        return this.d;
    }

    public final Marker d(String str) {
        int size = this.g.size();
        for (int i2 = 0; i2 < size; i2++) {
            Marker marker = (Marker) this.g.get(i2);
            String str2 = marker.f22084a;
            if (str2.equalsIgnoreCase(str) || (str2.endsWith("\r") && str2.substring(0, str2.length() - 1).equalsIgnoreCase(str))) {
                return marker;
            }
        }
        return null;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("LottieComposition:\n");
        Iterator it = this.f21753j.iterator();
        while (it.hasNext()) {
            sb.append(((Layer) it.next()).a("\t"));
        }
        return sb.toString();
    }
}
