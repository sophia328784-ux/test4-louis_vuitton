package com.perfectcorp.perfectlib.makeupcam.camera;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.PointF;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.utility.Bitmaps;
import com.perfectcorp.common.utility.ImageUtils;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.makeupcam.utility.BitmapUtils;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import defpackage.a61;
import java.nio.ByteBuffer;
import java.util.Collection;
import java.util.EnumMap;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class EyeModel {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final PointF[] f40610b = {new PointF(142.0f, 143.5f), new PointF(229.0f, 106.5f), new PointF(316.5f, 143.5f), new PointF(229.0f, 181.0f)};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final BitmapFactory.Options f40611c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[][] f40612a;

    public static class a extends RuntimeException {
        public a(String str, Collection collection) {
            super("Possible corrupt masks: id:" + str + " masks:" + collection);
        }
    }

    static {
        BitmapFactory.Options options = new BitmapFactory.Options();
        f40611c = options;
        options.inPreferredConfig = Bitmap.Config.ALPHA_8;
    }

    /* JADX WARN: Code duplicated, block: B:61:0x00f0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:0x00b7 A[SYNTHETIC] */
    public EyeModel(LiveSettingCtrl liveSettingCtrl, String str, BeautyMode beautyMode) {
        char c2;
        Bitmap bitmapC;
        if (beautyMode == BeautyMode.EYE_LINES) {
            Context contextB = PfCommons.b();
            List listF = liveSettingCtrl.f(str);
            this.f40612a = new byte[Math.min(listF.size(), 2)][];
            for (int i2 = 0; i2 < listF.size(); i2++) {
                Bitmap bitmapC2 = c(contextB, (YMKPrimitiveData.Mask) listF.get(i2));
                if (bitmapC2 != null) {
                    Bitmap bitmapExtractAlpha = bitmapC2.extractAlpha();
                    ImageUtils.b(bitmapC2);
                    this.f40612a[i2] = b(bitmapExtractAlpha);
                }
            }
            if (a()) {
                return;
            }
            a aVar = new a(str, listF);
            int i3 = Log.f39427a;
            Log.j("EyeModel", aVar.getMessage(), aVar);
            return;
        }
        Context contextB2 = PfCommons.b();
        List<YMKPrimitiveData.Mask> listF2 = liveSettingCtrl.f(str);
        EnumMap enumMap = new EnumMap(YMKPrimitiveData.Mask.Position.class);
        for (YMKPrimitiveData.Mask mask : listF2) {
            int i4 = e.f40879a[mask.f40806f.ordinal()];
            if (i4 == 1 || i4 == 2 || i4 == 3) {
                enumMap.put(mask.f40806f, mask);
            }
        }
        if (enumMap.containsKey(YMKPrimitiveData.Mask.Position.UPPER)) {
            YMKPrimitiveData.Mask.Position position = YMKPrimitiveData.Mask.Position.NONE;
            if (enumMap.containsKey(position)) {
                enumMap.remove(position);
            }
        }
        Collection<YMKPrimitiveData.Mask> collectionValues = enumMap.values();
        this.f40612a = new byte[Math.min(collectionValues.size(), 2)][];
        for (YMKPrimitiveData.Mask mask2 : collectionValues) {
            int i5 = e.f40879a[mask2.f40806f.ordinal()];
            if (i5 != 1) {
                if (i5 == 2) {
                    c2 = 1;
                    bitmapC = c(contextB2, mask2);
                    if (bitmapC != null) {
                        Bitmap bitmapExtractAlpha2 = bitmapC.extractAlpha();
                        ImageUtils.b(bitmapC);
                        this.f40612a[c2] = b(bitmapExtractAlpha2);
                    }
                } else if (i5 != 3) {
                    Log.d("EyeModel", "Unexpected position: " + mask2.f40806f);
                }
            }
            c2 = 0;
            bitmapC = c(contextB2, mask2);
            if (bitmapC != null) {
                Bitmap bitmapExtractAlpha3 = bitmapC.extractAlpha();
                ImageUtils.b(bitmapC);
                this.f40612a[c2] = b(bitmapExtractAlpha3);
            }
        }
        if (a()) {
            return;
        }
        a aVar2 = new a(str, collectionValues);
        int i6 = Log.f39427a;
        Log.j("EyeModel", aVar2.getMessage(), aVar2);
    }

    public static byte[] b(Bitmap bitmap) {
        Objects.requireNonNull(bitmap, "bitmap is null!!!");
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int rowBytes = bitmap.getRowBytes();
        if (bitmap.getConfig() != Bitmap.Config.ALPHA_8 && rowBytes / width != 1) {
            a61.i(rowBytes, width, bitmap.getConfig());
            return null;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(rowBytes * height);
        bitmap.copyPixelsToBuffer(byteBufferAllocate);
        byte[] bArrArray = byteBufferAllocate.array();
        if (width == rowBytes) {
            return bArrArray;
        }
        byte[] bArr = new byte[width * height];
        for (int i2 = 0; i2 < height; i2++) {
            System.arraycopy(bArrArray, i2 * rowBytes, bArr, i2 * width, width);
        }
        return bArr;
    }

    public static Bitmap c(Context context, YMKPrimitiveData.Mask mask) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inSampleSize = 2;
        options.inPreferredConfig = Bitmap.Config.ALPHA_8;
        Bitmap bitmapA = BitmapUtils.a(context, mask.f40803b, options);
        if (bitmapA == null) {
            return null;
        }
        if (bitmapA.getWidth() == 450 && bitmapA.getHeight() == 300) {
            return bitmapA;
        }
        return Bitmaps.b(bitmapA, bitmapA.getHeight() == 325 ? 25 : 0, 450, 300, null);
    }

    public final boolean a() {
        boolean z = true;
        int i2 = 0;
        while (true) {
            byte[][] bArr = this.f40612a;
            if (i2 >= bArr.length) {
                return z;
            }
            if (bArr[i2] == null) {
                Log.g(5, "EyeModel", "Unassigned images[" + i2 + "]");
                bArr[i2] = new byte[135000];
                z = false;
            }
            i2++;
        }
    }
}
