package com.batch.android.o0;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.batch.android.e.t;
import com.batch.android.v0.g;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: com.batch.android.o0.a$a, reason: collision with other inner class name */
    public interface InterfaceC0065a {
        void a(com.batch.android.z.a.d dVar);

        com.batch.android.z.a.d b(String str);
    }

    public static void a(ImageView imageView, com.batch.android.z.a.d dVar, float f2) {
        if (dVar instanceof com.batch.android.z.a.C0076a) {
            Bitmap bitmapA = ((com.batch.android.z.a.C0076a) dVar).a();
            float width = (f2 / bitmapA.getWidth()) * bitmapA.getHeight();
            if (f2 <= Call.Parameters.DEFAULT_CAMERA_ZOOM || width <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                return;
            }
            imageView.setImageBitmap(Bitmap.createScaledBitmap(bitmapA, (int) f2, (int) width, true));
            return;
        }
        if (!(dVar instanceof com.batch.android.z.a.b)) {
            t.c(g.f24103i, "Could not display AsyncImageDownloadTask.Result: unknown type");
            return;
        }
        try {
            imageView.setImageDrawable(com.batch.android.e0.g.a(imageView.getContext(), ((com.batch.android.z.a.b) dVar).a(), true));
        } catch (Exception e2) {
            t.c(g.f24103i, "Could not start GIF", e2);
        }
    }

    public static void a(ImageView imageView, com.batch.android.z.a.d dVar) {
        if (dVar instanceof com.batch.android.z.a.C0076a) {
            imageView.setImageBitmap(((com.batch.android.z.a.C0076a) dVar).a());
            return;
        }
        if (dVar instanceof com.batch.android.z.a.b) {
            try {
                imageView.setImageDrawable(com.batch.android.e0.g.a(imageView.getContext(), ((com.batch.android.z.a.b) dVar).a(), true));
                return;
            } catch (Exception e2) {
                t.c(g.f24103i, "Could not start GIF", e2);
                return;
            }
        }
        t.c(g.f24103i, "Could not display AsyncImageDownloadTask.Result: unknown type");
    }
}
