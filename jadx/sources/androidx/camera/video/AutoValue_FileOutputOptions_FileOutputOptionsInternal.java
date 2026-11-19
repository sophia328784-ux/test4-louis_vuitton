package androidx.camera.video;

import java.io.File;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_FileOutputOptions_FileOutputOptionsInternal extends FileOutputOptions.FileOutputOptionsInternal {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f2723a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f2724b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final File f2725c;

    public static final class Builder extends FileOutputOptions.FileOutputOptionsInternal.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Long f2726a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Long f2727b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public File f2728c;
    }

    public AutoValue_FileOutputOptions_FileOutputOptionsInternal(long j2, long j3, File file) {
        this.f2723a = j2;
        this.f2724b = j3;
        this.f2725c = file;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof FileOutputOptions.FileOutputOptionsInternal)) {
            return false;
        }
        AutoValue_FileOutputOptions_FileOutputOptionsInternal autoValue_FileOutputOptions_FileOutputOptionsInternal = (AutoValue_FileOutputOptions_FileOutputOptionsInternal) ((FileOutputOptions.FileOutputOptionsInternal) obj);
        return this.f2723a == autoValue_FileOutputOptions_FileOutputOptionsInternal.f2723a && this.f2724b == autoValue_FileOutputOptions_FileOutputOptionsInternal.f2724b && this.f2725c.equals(autoValue_FileOutputOptions_FileOutputOptionsInternal.f2725c);
    }

    public final int hashCode() {
        long j2 = this.f2723a;
        int i2 = (((int) (j2 ^ (j2 >>> 32))) ^ 1000003) * 1000003;
        long j3 = this.f2724b;
        return this.f2725c.hashCode() ^ ((i2 ^ ((int) ((j3 >>> 32) ^ j3))) * (-721379959));
    }

    public final String toString() {
        return "FileOutputOptionsInternal{fileSizeLimit=" + this.f2723a + ", durationLimitMillis=" + this.f2724b + ", location=null, file=" + this.f2725c + "}";
    }
}
