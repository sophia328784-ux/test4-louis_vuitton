package androidx.media3.extractor.mp4;

import androidx.media3.common.MimeTypes;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
abstract class MimeTypeResolver {
    public static String a(ArrayList arrayList) {
        Iterator it = arrayList.iterator();
        boolean z = false;
        String str = null;
        while (it.hasNext()) {
            String str2 = ((TrackSampleTable) it.next()).f16613a.g.o;
            if (MimeTypes.o(str2)) {
                return "video/mp4";
            }
            if (MimeTypes.k(str2)) {
                z = true;
            } else if (MimeTypes.m(str2)) {
                if (Objects.equals(str2, "image/heic")) {
                    str = "image/heif";
                } else if (Objects.equals(str2, "image/avif")) {
                    str = "image/avif";
                }
            }
        }
        if (z) {
            return "audio/mp4";
        }
        return str != null ? str : "application/mp4";
    }
}
