package com.google.firebase.crashlytics.internal.metadata;

import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
class QueueFileLogStore implements FileLogStore {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Charset f34625c = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final File f34626a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public QueueFile f34627b;

    public static class LogBytes {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final byte[] f34630a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f34631b;

        public LogBytes(byte[] bArr, int i2) {
            this.f34630a = bArr;
            this.f34631b = i2;
        }
    }

    public QueueFileLogStore(File file) {
        this.f34626a = file;
    }

    @Override // com.google.firebase.crashlytics.internal.metadata.FileLogStore
    public final void a() {
        CommonUtils.b(this.f34627b);
        this.f34627b = null;
    }

    /* JADX WARN: Code duplicated, block: B:4:0x000a  */
    @Override // com.google.firebase.crashlytics.internal.metadata.FileLogStore
    public final String b() {
        LogBytes logBytes;
        byte[] bArr;
        if (this.f34626a.exists()) {
            d();
            QueueFile queueFile = this.f34627b;
            if (queueFile == null) {
                logBytes = null;
            } else {
                final int[] iArr = {0};
                final byte[] bArr2 = new byte[queueFile.p()];
                try {
                    this.f34627b.e(new QueueFile.ElementReader() { // from class: com.google.firebase.crashlytics.internal.metadata.QueueFileLogStore.1
                        @Override // com.google.firebase.crashlytics.internal.metadata.QueueFile.ElementReader
                        public final void a(InputStream inputStream, int i2) throws IOException {
                            int[] iArr2 = iArr;
                            try {
                                inputStream.read(bArr2, iArr2[0], i2);
                                iArr2[0] = iArr2[0] + i2;
                            } finally {
                                inputStream.close();
                            }
                        }
                    });
                } catch (IOException unused) {
                    Logger.f34483b.b();
                }
                logBytes = new LogBytes(bArr2, iArr[0]);
            }
        } else {
            logBytes = null;
        }
        if (logBytes == null) {
            bArr = null;
        } else {
            int i2 = logBytes.f34631b;
            bArr = new byte[i2];
            System.arraycopy(logBytes.f34630a, 0, bArr, 0, i2);
        }
        if (bArr != null) {
            return new String(bArr, f34625c);
        }
        return null;
    }

    @Override // com.google.firebase.crashlytics.internal.metadata.FileLogStore
    public final void c(long j2, String str) {
        d();
        if (this.f34627b == null) {
            return;
        }
        try {
            if (str.length() > 16384) {
                str = "...".concat(str.substring(str.length() - 16384));
            }
            this.f34627b.c(String.format(Locale.US, "%d %s%n", Long.valueOf(j2), str.replaceAll("\r", " ").replaceAll("\n", " ")).getBytes(f34625c));
            while (!this.f34627b.h() && this.f34627b.p() > 65536) {
                this.f34627b.m();
            }
        } catch (IOException unused) {
            Logger.f34483b.b();
        }
    }

    public final void d() {
        File file = this.f34626a;
        if (this.f34627b == null) {
            try {
                this.f34627b = new QueueFile(file);
            } catch (IOException unused) {
                Logger logger = Logger.f34483b;
                file.toString();
                logger.b();
            }
        }
    }
}
