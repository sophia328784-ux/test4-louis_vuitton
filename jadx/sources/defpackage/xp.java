package defpackage;

import com.perfectcorp.thirdparty.com.google.common.io.Closeables;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.util.concurrent.Callable;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class xp implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81173b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ File f81174c;

    public /* synthetic */ xp(File file, int i2) {
        this.f81173b = i2;
        this.f81174c = file;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() throws Throwable {
        FileReader fileReader;
        int i2 = this.f81173b;
        File file = this.f81174c;
        switch (i2) {
            case 0:
                try {
                    fileReader = new FileReader(file);
                    try {
                        return new BufferedReader(fileReader);
                    } catch (Throwable th) {
                        th = th;
                        try {
                            Logger logger = Closeables.f42370a;
                            if (fileReader != null) {
                                try {
                                    fileReader.close();
                                } catch (IOException e2) {
                                    Closeables.f42370a.log(Level.WARNING, "IOException thrown while closing Closeable.", (Throwable) e2);
                                }
                                break;
                            }
                            throw th;
                        } catch (IOException e3) {
                            md.h(e3);
                            return null;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    fileReader = null;
                }
                break;
            default:
                return new FileInputStream(file);
        }
    }
}
