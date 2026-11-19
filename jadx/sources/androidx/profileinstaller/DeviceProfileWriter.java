package androidx.profileinstaller;

import android.content.res.AssetManager;
import android.os.Build;
import defpackage.q6;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.Serializable;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class DeviceProfileWriter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AssetManager f19097a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Executor f19098b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ProfileInstaller.DiagnosticsCallback f19099c;
    public final byte[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final File f19100e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f19101f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f19102h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f19103i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public DexProfileData[] f19104j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public byte[] f19105k;

    public DeviceProfileWriter(AssetManager assetManager, Executor executor, ProfileInstaller.DiagnosticsCallback diagnosticsCallback, String str, String str2, String str3, File file) {
        this.f19097a = assetManager;
        this.f19098b = executor;
        this.f19099c = diagnosticsCallback;
        this.f19101f = str;
        this.g = str2;
        this.f19102h = str3;
        this.f19100e = file;
        int i2 = Build.VERSION.SDK_INT;
        this.d = i2 >= 31 ? ProfileVersion.f19124a : (i2 == 29 || i2 == 30) ? ProfileVersion.f19125b : null;
    }

    public final FileInputStream a(AssetManager assetManager, String str) {
        try {
            return assetManager.openFd(str).createInputStream();
        } catch (FileNotFoundException e2) {
            String message = e2.getMessage();
            if (message == null || !message.contains("compressed")) {
                return null;
            }
            this.f19099c.getClass();
            return null;
        }
    }

    public final void b(int i2, Serializable serializable) {
        this.f19098b.execute(new q6(this, i2, serializable, 5));
    }
}
