package com.google.android.play.core.integrity;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.play.core.integrity.model.a;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.d21;
import defpackage.md;
import java.util.HashMap;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class IntegrityServiceException extends ApiException {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Throwable f33277c;

    /* JADX WARN: Code duplicated, block: B:8:0x002e  */
    /* JADX WARN: Illegal instructions before constructor call */
    public IntegrityServiceException(int i2, Exception exc) {
        String strK;
        Locale locale = Locale.ROOT;
        HashMap map = a.f33306a;
        Integer numValueOf = Integer.valueOf(i2);
        if (map.containsKey(numValueOf)) {
            HashMap map2 = a.f33307b;
            if (map2.containsKey(numValueOf)) {
                strK = d21.k((String) map.get(numValueOf), " (https://developer.android.com/google/play/integrity/reference/com/google/android/play/core/integrity/model/IntegrityErrorCode.html#", (String) map2.get(numValueOf), ")");
            } else {
                strK = "";
            }
        } else {
            strK = "";
        }
        super(new Status(i2, "Integrity API error (" + i2 + "): " + strK + FileUtils.HIDDEN_PREFIX));
        if (i2 != 0) {
            this.f33277c = exc;
        } else {
            md.n("ErrorCode should not be 0.");
            throw null;
        }
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable getCause() {
        return this.f33277c;
    }
}
