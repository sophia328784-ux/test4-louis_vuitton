package com.sightcall.mediacapture.repo.mappers;

import android.webkit.MimeTypeMap;
import defpackage.md;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0001H\u0000\u001a\f\u0010\u0002\u001a\u00020\u0003*\u00020\u0001H\u0000\u001a\f\u0010\u0004\u001a\u00020\u0003*\u00020\u0001H\u0000¨\u0006\u0005"}, d2 = {"toExtension", "", "isImageMimeType", "", "isVideoMimeType", "lib_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class MediaCaptureMappersKt {
    public static final boolean isImageMimeType(String str) {
        str.getClass();
        return StringsKt.k(str, "image/", false);
    }

    public static final boolean isVideoMimeType(String str) {
        str.getClass();
        return StringsKt.k(str, "video/", false);
    }

    public static final String toExtension(String str) {
        str.getClass();
        String extensionFromMimeType = MimeTypeMap.getSingleton().getExtensionFromMimeType(str);
        if (extensionFromMimeType != null) {
            return extensionFromMimeType;
        }
        md.n(tr.g("Unknown mimeType=", str));
        return null;
    }
}
