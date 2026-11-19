package com.google.firebase.installations;

import android.content.Context;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.channels.OverlappingFileLockException;

/* JADX INFO: loaded from: classes2.dex */
class CrossProcessLock {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FileChannel f35152a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FileLock f35153b;

    public CrossProcessLock(FileChannel fileChannel, FileLock fileLock) {
        this.f35152a = fileChannel;
        this.f35153b = fileLock;
    }

    public static CrossProcessLock a(Context context) {
        FileChannel channel;
        FileLock fileLockLock;
        try {
            channel = new RandomAccessFile(new File(context.getFilesDir(), "generatefid.lock"), "rw").getChannel();
            try {
                fileLockLock = channel.lock();
                try {
                    return new CrossProcessLock(channel, fileLockLock);
                } catch (IOException | Error | OverlappingFileLockException unused) {
                    if (fileLockLock != null) {
                        try {
                            fileLockLock.release();
                        } catch (IOException unused2) {
                        }
                    }
                    if (channel != null) {
                        try {
                            channel.close();
                        } catch (IOException unused3) {
                        }
                    }
                    return null;
                }
            } catch (IOException | Error | OverlappingFileLockException unused4) {
                fileLockLock = null;
            }
        } catch (IOException | Error | OverlappingFileLockException unused5) {
            channel = null;
            fileLockLock = null;
        }
    }

    public final void b() {
        try {
            this.f35153b.release();
            this.f35152a.close();
        } catch (IOException unused) {
        }
    }
}
