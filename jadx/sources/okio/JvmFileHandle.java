package okio;

import java.io.RandomAccessFile;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lokio/JvmFileHandle;", "Lokio/FileHandle;", "", "readWrite", "Ljava/io/RandomAccessFile;", "randomAccessFile", "<init>", "(ZLjava/io/RandomAccessFile;)V", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class JvmFileHandle extends FileHandle {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RandomAccessFile f77427e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JvmFileHandle(boolean z, RandomAccessFile randomAccessFile) {
        super(z);
        randomAccessFile.getClass();
        this.f77427e = randomAccessFile;
    }

    @Override // okio.FileHandle
    public final synchronized void h() {
        this.f77427e.close();
    }

    @Override // okio.FileHandle
    public final synchronized int j(long j2, byte[] bArr, int i2, int i3) {
        bArr.getClass();
        this.f77427e.seek(j2);
        int i4 = 0;
        while (i4 < i3) {
            int i5 = this.f77427e.read(bArr, i2, i3 - i4);
            if (i5 == -1) {
                if (i4 != 0) {
                    break;
                }
                return -1;
            }
            i4 += i5;
        }
        return i4;
    }

    @Override // okio.FileHandle
    public final synchronized long k() {
        return this.f77427e.length();
    }
}
