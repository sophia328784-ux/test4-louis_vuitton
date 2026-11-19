package androidx.camera.core.impl.compat;

import android.media.EncoderProfiles;
import android.os.Build;
import androidx.camera.core.impl.EncoderProfilesProxy;
import defpackage.n00;
import defpackage.v7;

/* JADX INFO: loaded from: classes.dex */
public abstract class EncoderProfilesProxyCompat {
    public static EncoderProfilesProxy a(EncoderProfiles encoderProfiles) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 33) {
            return EncoderProfilesProxyCompatApi33Impl.a(encoderProfiles);
        }
        if (i2 >= 31) {
            return EncoderProfilesProxyCompatApi31Impl.a(encoderProfiles);
        }
        v7.h(n00.m(i2, "Unable to call from(EncoderProfiles) on API ", ". Version 31 or higher required."));
        return null;
    }
}
