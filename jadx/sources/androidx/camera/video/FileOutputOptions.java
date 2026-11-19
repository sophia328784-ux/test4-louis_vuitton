package androidx.camera.video;

import androidx.core.util.Preconditions;
import defpackage.md;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public final class FileOutputOptions extends OutputOptions {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AutoValue_FileOutputOptions_FileOutputOptionsInternal f2758b;

    public static final class Builder extends OutputOptions.Builder<FileOutputOptions, Builder> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final FileOutputOptionsInternal.Builder f2759a;

        public Builder(File file) {
            AutoValue_FileOutputOptions_FileOutputOptionsInternal.Builder builder = new AutoValue_FileOutputOptions_FileOutputOptionsInternal.Builder();
            builder.f2726a = 0L;
            builder.f2727b = 0L;
            Preconditions.e(file, "File can't be null.");
            this.f2759a = builder;
            builder.f2728c = file;
        }

        public final FileOutputOptions a() {
            AutoValue_FileOutputOptions_FileOutputOptionsInternal.Builder builder = (AutoValue_FileOutputOptions_FileOutputOptionsInternal.Builder) this.f2759a;
            String strConcat = builder.f2726a == null ? " fileSizeLimit" : "";
            if (builder.f2727b == null) {
                strConcat = strConcat.concat(" durationLimitMillis");
            }
            if (builder.f2728c == null) {
                strConcat = strConcat.concat(" file");
            }
            if (strConcat.isEmpty()) {
                return new FileOutputOptions(new AutoValue_FileOutputOptions_FileOutputOptionsInternal(builder.f2726a.longValue(), builder.f2727b.longValue(), builder.f2728c));
            }
            md.k("Missing required properties:".concat(strConcat));
            return null;
        }
    }

    public static abstract class FileOutputOptionsInternal extends OutputOptions.OutputOptionsInternal {

        public static abstract class Builder extends OutputOptions.OutputOptionsInternal.Builder<Builder> {
        }
    }

    public FileOutputOptions(AutoValue_FileOutputOptions_FileOutputOptionsInternal autoValue_FileOutputOptions_FileOutputOptionsInternal) {
        super(autoValue_FileOutputOptions_FileOutputOptionsInternal);
        this.f2758b = autoValue_FileOutputOptions_FileOutputOptionsInternal;
    }

    public final File a() {
        return this.f2758b.f2725c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FileOutputOptions)) {
            return false;
        }
        return this.f2758b.equals(((FileOutputOptions) obj).f2758b);
    }

    public final int hashCode() {
        return this.f2758b.hashCode();
    }

    public final String toString() {
        return this.f2758b.toString().replaceFirst("FileOutputOptionsInternal", "FileOutputOptions");
    }
}
