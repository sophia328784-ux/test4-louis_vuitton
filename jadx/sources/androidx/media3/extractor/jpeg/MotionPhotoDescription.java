package androidx.media3.extractor.jpeg;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class MotionPhotoDescription {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f16325a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f16326b;

    public static final class ContainerItem {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f16327a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f16328b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f16329c;

        public ContainerItem(String str, String str2, long j2, long j3) {
            this.f16327a = str;
            this.f16328b = j2;
            this.f16329c = j3;
        }
    }

    public MotionPhotoDescription(long j2, List<ContainerItem> list) {
        this.f16325a = j2;
        this.f16326b = list;
    }
}
