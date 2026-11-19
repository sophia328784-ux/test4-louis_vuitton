package androidx.media3.extractor.mp4;

import com.google.common.base.Splitter;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
final class SefReader {
    public static final Splitter d = Splitter.a(':');

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Splitter f16584e = Splitter.a('*');

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f16585a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f16586b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f16587c;

    public static final class DataReference {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f16588a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f16589b;

        public DataReference(int i2, long j2, int i3) {
            this.f16588a = j2;
            this.f16589b = i3;
        }
    }
}
