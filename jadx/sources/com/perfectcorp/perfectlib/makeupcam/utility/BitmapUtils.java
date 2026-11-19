package com.perfectcorp.perfectlib.makeupcam.utility;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.perfectcorp.common.utility.Log;
import java.io.BufferedInputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BitmapUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final BitmapFactory.Options f40997a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final BitmapFactory.Options f40998b;

    static {
        BitmapFactory.Options options = new BitmapFactory.Options();
        f40997a = options;
        options.inPreferredConfig = Bitmap.Config.ARGB_8888;
        BitmapFactory.Options options2 = new BitmapFactory.Options();
        f40998b = options2;
        options2.inPreferredConfig = Bitmap.Config.ALPHA_8;
    }

    public static Bitmap a(Context context, String str, BitmapFactory.Options options) {
        if (str == null) {
            return null;
        }
        try {
            if (str.indexOf("assets://") != 0) {
                return BitmapFactory.decodeFile(str, options);
            }
            BufferedInputStream bufferedInputStream = new BufferedInputStream(context.getAssets().open(str.substring(9)));
            Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(bufferedInputStream, null, options);
            bufferedInputStream.close();
            return bitmapDecodeStream;
        } catch (IOException e2) {
            Log.e("BitmapUtils", "", e2);
            return null;
        }
    }
}
