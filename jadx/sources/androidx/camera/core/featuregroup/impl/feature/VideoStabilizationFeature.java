package androidx.camera.core.featuregroup.impl.feature;

import androidx.camera.core.featuregroup.GroupableFeature;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0002\u0006\u0007B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\b"}, d2 = {"Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature;", "Landroidx/camera/core/featuregroup/GroupableFeature;", "Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature$StabilizationMode;", "mode", "<init>", "(Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature$StabilizationMode;)V", "StabilizationMode", "Companion", "camera-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class VideoStabilizationFeature extends GroupableFeature {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final StabilizationMode f2034e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StabilizationMode f2035c;
    public final FeatureTypeInternal d;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature$Companion;", "", "Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature$StabilizationMode;", "DEFAULT_STABILIZATION_MODE", "Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature$StabilizationMode;", "camera-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature$StabilizationMode;", "", "OFF", "ON", "PREVIEW", "camera-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class StabilizationMode {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ StabilizationMode[] $VALUES;
        public static final StabilizationMode OFF;
        public static final StabilizationMode ON;
        public static final StabilizationMode PREVIEW;

        static {
            StabilizationMode stabilizationMode = new StabilizationMode("OFF", 0);
            OFF = stabilizationMode;
            StabilizationMode stabilizationMode2 = new StabilizationMode("ON", 1);
            ON = stabilizationMode2;
            StabilizationMode stabilizationMode3 = new StabilizationMode("PREVIEW", 2);
            PREVIEW = stabilizationMode3;
            StabilizationMode[] stabilizationModeArr = {stabilizationMode, stabilizationMode2, stabilizationMode3};
            $VALUES = stabilizationModeArr;
            $ENTRIES = EnumEntriesKt.a(stabilizationModeArr);
        }

        public static StabilizationMode valueOf(String str) {
            return (StabilizationMode) Enum.valueOf(StabilizationMode.class, str);
        }

        public static StabilizationMode[] values() {
            return (StabilizationMode[]) $VALUES.clone();
        }
    }

    static {
        new Companion(null);
        f2034e = StabilizationMode.OFF;
    }

    public VideoStabilizationFeature(StabilizationMode stabilizationMode) {
        stabilizationMode.getClass();
        this.f2035c = stabilizationMode;
        this.d = FeatureTypeInternal.VIDEO_STABILIZATION;
    }

    @Override // androidx.camera.core.featuregroup.GroupableFeature
    /* JADX INFO: renamed from: a, reason: from getter */
    public final FeatureTypeInternal getD() {
        return this.d;
    }

    public final String toString() {
        return "VideoStabilizationFeature(mode=" + this.f2035c.name() + ')';
    }
}
