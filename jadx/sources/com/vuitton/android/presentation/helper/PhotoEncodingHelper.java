package com.vuitton.android.presentation.helper;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.util.Base64;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairPhoto;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.io.CloseableKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/helper/PhotoEncodingHelper;", "", "<init>", "()V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PhotoEncodingHelper {
    @Inject
    public PhotoEncodingHelper() {
    }

    public static ArrayList a(Context context, List list) {
        Object failure;
        context.getClass();
        list.getClass();
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Uri uri = ((DistantRepairPhoto) it.next()).f57388a;
            String strEncodeToString = null;
            if (uri != null) {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
                    if (inputStreamOpenInputStream != null) {
                        try {
                            failure = BitmapFactory.decodeStream(inputStreamOpenInputStream);
                            inputStreamOpenInputStream.close();
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                CloseableKt.a(inputStreamOpenInputStream, th);
                                throw th2;
                            }
                        }
                    } else {
                        failure = null;
                    }
                } catch (Throwable th3) {
                    Result.Companion companion2 = Result.INSTANCE;
                    failure = new Result.Failure(th3);
                }
                if (failure instanceof Result.Failure) {
                    failure = null;
                }
                Bitmap bitmapCreateScaledBitmap = (Bitmap) failure;
                if (bitmapCreateScaledBitmap != null) {
                    if (bitmapCreateScaledBitmap.getWidth() > 1024 || bitmapCreateScaledBitmap.getHeight() > 1024) {
                        float fMax = 1024.0f / Math.max(bitmapCreateScaledBitmap.getWidth(), bitmapCreateScaledBitmap.getHeight());
                        bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapCreateScaledBitmap, (int) (bitmapCreateScaledBitmap.getWidth() * fMax), (int) (bitmapCreateScaledBitmap.getHeight() * fMax), true);
                    }
                    if (bitmapCreateScaledBitmap != null) {
                        int i2 = 90;
                        do {
                            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                            bitmapCreateScaledBitmap.compress(Bitmap.CompressFormat.JPEG, i2, byteArrayOutputStream);
                            strEncodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
                            strEncodeToString.getClass();
                            i2 -= 10;
                        } while (strEncodeToString.length() > 300000);
                    }
                }
            }
            if (strEncodeToString != null) {
                arrayList.add(strEncodeToString);
            }
        }
        return arrayList;
    }
}
