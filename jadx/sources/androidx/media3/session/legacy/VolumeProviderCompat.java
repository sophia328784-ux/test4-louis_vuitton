package androidx.media3.session.legacy;

import android.media.VolumeProvider;
import android.os.Build;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public abstract class VolumeProviderCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f17856a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f17857b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f17858c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public VolumeProvider f17859e;

    @Retention(RetentionPolicy.SOURCE)
    public @interface ControlType {
    }

    public VolumeProviderCompat(int i2, int i3, int i4, String str) {
        this.f17856a = i2;
        this.f17857b = i3;
        this.d = i4;
        this.f17858c = str;
    }

    public final VolumeProvider a() {
        VolumeProviderCompat volumeProviderCompat;
        if (this.f17859e != null) {
            volumeProviderCompat = this;
        } else if (Build.VERSION.SDK_INT >= 30) {
            volumeProviderCompat = this;
            volumeProviderCompat.f17859e = new VolumeProvider(this.f17856a, this.f17857b, this.d, this.f17858c) { // from class: androidx.media3.session.legacy.VolumeProviderCompat.1
                @Override // android.media.VolumeProvider
                public final void onAdjustVolume(int i2) {
                    VolumeProviderCompat.this.b(i2);
                }

                @Override // android.media.VolumeProvider
                public final void onSetVolumeTo(int i2) {
                    VolumeProviderCompat.this.c(i2);
                }
            };
        } else {
            volumeProviderCompat = this;
            volumeProviderCompat.f17859e = new VolumeProvider(volumeProviderCompat.f17856a, volumeProviderCompat.f17857b, volumeProviderCompat.d) { // from class: androidx.media3.session.legacy.VolumeProviderCompat.2
                @Override // android.media.VolumeProvider
                public final void onAdjustVolume(int i2) {
                    VolumeProviderCompat.this.b(i2);
                }

                @Override // android.media.VolumeProvider
                public final void onSetVolumeTo(int i2) {
                    VolumeProviderCompat.this.c(i2);
                }
            };
        }
        return volumeProviderCompat.f17859e;
    }

    public void b(int i2) {
    }

    public void c(int i2) {
    }

    public VolumeProviderCompat(int i2, int i3, int i4) {
        this(i2, i3, i4, null);
    }
}
