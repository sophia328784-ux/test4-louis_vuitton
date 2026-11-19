package androidx.room.concurrent;

import defpackage.az;
import defpackage.d21;
import defpackage.fc;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/room/concurrent/FileLock;", "", "", "filename", "<init>", "(Ljava/lang/String;)V", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class FileLock {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f19591a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public FileChannel f19592b;

    public FileLock(String str) {
        str.getClass();
        this.f19591a = d21.j(str, ".lck");
    }

    public final void a() throws IOException {
        String str = this.f19591a;
        if (this.f19592b != null) {
            return;
        }
        try {
            File file = new File(str);
            File parentFile = file.getParentFile();
            if (parentFile != null) {
                parentFile.mkdirs();
            }
            FileChannel channel = new FileOutputStream(file).getChannel();
            this.f19592b = channel;
            if (channel != null) {
                channel.lock();
            }
        } catch (Throwable th) {
            FileChannel fileChannel = this.f19592b;
            if (fileChannel != null) {
                fileChannel.close();
            }
            this.f19592b = null;
            az.s(fc.h("Unable to lock file: '", str, "'."), th);
        }
    }
}
