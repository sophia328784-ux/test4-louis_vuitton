package androidx.camera.video.internal;

import android.os.StatFs;
import androidx.camera.core.Logger;
import androidx.camera.video.FileOutputOptions;
import androidx.camera.video.OutputOptions;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/camera/video/internal/OutputStorageImpl;", "Landroidx/camera/video/internal/OutputStorage;", "Landroidx/camera/video/OutputOptions;", "outputOptions", "<init>", "(Landroidx/camera/video/OutputOptions;)V", "Companion", "camera-video_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class OutputStorageImpl implements OutputStorage {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final OutputOptions f2884a;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/camera/video/internal/OutputStorageImpl$Companion;", "", "", "TAG", "Ljava/lang/String;", "camera-video_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public OutputStorageImpl(OutputOptions outputOptions) {
        outputOptions.getClass();
        this.f2884a = outputOptions;
    }

    @Override // androidx.camera.video.internal.OutputStorage
    public final long a() {
        OutputOptions outputOptions = this.f2884a;
        try {
            if (!(outputOptions instanceof FileOutputOptions)) {
                throw new AssertionError("Unknown OutputOptions: " + outputOptions);
            }
            File parentFile = ((FileOutputOptions) outputOptions).a().getParentFile();
            parentFile.getClass();
            String path = parentFile.getPath();
            path.getClass();
            return new StatFs(path).getAvailableBytes();
        } catch (RuntimeException unused) {
            Logger.c(5, "OutputStorageImpl");
            return Long.MAX_VALUE;
        }
    }
}
