package com.perfectcorp.perfectlib.makeupcam.camera;

import android.graphics.PointF;
import android.os.Build;
import android.util.Pair;
import com.cyberlink.clgpuimage.cosmetic.CLMakeupLiveFilter;
import com.perfectcorp.common.opengl.GLInfo;
import com.perfectcorp.common.utility.CapacityUnit;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ymk.utility.DeviceInfoUtils;
import java.io.RandomAccessFile;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public abstract class GPUImageFilterBuilder {

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final int f40666a;

        static {
            Pair[] pairArr = {Pair.create("Google", "Pixel 6a")};
            int i2 = 0;
            for (int i3 = 0; i3 <= 0; i3++) {
                Pair pair = pairArr[0];
                if (Build.MANUFACTURER.equals(pair.first) && Build.MODEL.equals(pair.second)) {
                    i2 = 2;
                    break;
                }
            }
            f40666a = i2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:44:0x008c A[PHI: r2
      0x008c: PHI (r2v3 int) = (r2v2 int), (r2v8 int) binds: [B:55:0x00b3, B:42:0x0088] A[DONT_GENERATE, DONT_INLINE]] */
    public static CLMakeupLiveFilter a(int i2, int i3) {
        Integer num;
        int i4;
        int i5;
        PointF[] pointFArr = EyeModel.f40610b;
        int i6 = CLMakeupLiveFilter.d.f25669a;
        int iHighestOneBit = a.f40666a;
        if (iHighestOneBit > 0) {
            i4 = iHighestOneBit;
        } else {
            synchronized (DeviceInfoUtils.f42035a) {
                num = DeviceInfoUtils.f42036b;
                if (num == null) {
                    try {
                        RandomAccessFile randomAccessFile = new RandomAccessFile("/proc/meminfo", "r");
                        try {
                            Matcher matcher = Pattern.compile("^MemTotal:\\s+(\\d+)\\s+kB$").matcher(randomAccessFile.readLine());
                            if (matcher.find() && matcher.groupCount() > 0) {
                                String strGroup = matcher.group(1);
                                Objects.requireNonNull(strGroup);
                                DeviceInfoUtils.f42036b = Integer.valueOf(Integer.parseInt(strGroup));
                            }
                            randomAccessFile.close();
                        } catch (Throwable th) {
                            try {
                                randomAccessFile.close();
                                throw th;
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                                throw th;
                            }
                        }
                    } catch (Exception e2) {
                        Log.e("DeviceInfoUtils", "Get MemTotal failed", e2);
                    }
                    num = DeviceInfoUtils.f42036b;
                }
            }
            if (num == null || num.intValue() <= CapacityUnit.GBS.c(4L)) {
                int i7 = GLInfo.f39383a;
                if (i7 <= 4096 || num == null || num.intValue() <= CapacityUnit.GBS.c(3L)) {
                    i4 = 1;
                } else {
                    iHighestOneBit = 2;
                    if (i3 > 0 && (i5 = i7 / i3) < 2) {
                        iHighestOneBit = Integer.highestOneBit(i5);
                    }
                    i4 = iHighestOneBit;
                }
            } else {
                iHighestOneBit = 4;
                if (i3 > 0 && (i5 = GLInfo.f39383a / i3) < 4) {
                    iHighestOneBit = Integer.highestOneBit(i5);
                }
                i4 = iHighestOneBit;
            }
        }
        return new CLMakeupLiveFilter(true, i2, 900, 600, 2, pointFArr, 200, 200, 300, 300, i6, i4, true);
    }
}
