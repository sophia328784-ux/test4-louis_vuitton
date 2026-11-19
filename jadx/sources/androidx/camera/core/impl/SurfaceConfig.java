package androidx.camera.core.impl;

import android.util.Size;
import androidx.camera.core.internal.utils.SizeUtil;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.sightcall.uvc.Camera;
import defpackage.md;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001:\u0004\n\u000b\f\rB!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\u000e"}, d2 = {"Landroidx/camera/core/impl/SurfaceConfig;", "", "Landroidx/camera/core/impl/SurfaceConfig$ConfigType;", "configType", "Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;", "configSize", "Landroidx/camera/core/impl/StreamUseCase;", "streamUseCase", "<init>", "(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)V", "Companion", "ConfigType", "ConfigSource", "ConfigSize", "camera-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class SurfaceConfig {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Companion f2350e = new Companion(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final StreamUseCase f2351f = StreamUseCase.DEFAULT;
    public static final ConfigSize[] g = {ConfigSize.S720P_16_9, ConfigSize.S1080P_4_3, ConfigSize.S1080P_16_9, ConfigSize.S1440P_16_9, ConfigSize.UHD, ConfigSize.X_VGA};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Map f2352h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final LinkedHashMap f2353i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConfigType f2354a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConfigSize f2355b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StreamUseCase f2356c;
    public final int d;

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR \u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR \u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\n0\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\r¨\u0006\u000f"}, d2 = {"Landroidx/camera/core/impl/SurfaceConfig$Companion;", "", "Landroidx/camera/core/impl/StreamUseCase;", "DEFAULT_STREAM_USE_CASE", "Landroidx/camera/core/impl/StreamUseCase;", "", "Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;", "FEATURE_COMBO_QUERY_SUPPORTED_SIZES", "[Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;", "", "Landroidx/camera/core/impl/SurfaceConfig$ConfigType;", "", "IMAGE_FORMATS_BY_CONFIG_TYPE", "Ljava/util/Map;", "CONFIG_TYPES_BY_IMAGE_FORMAT", "camera-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static SurfaceConfig a(ConfigType configType, ConfigSize configSize, StreamUseCase streamUseCase) {
            configType.getClass();
            configSize.getClass();
            streamUseCase.getClass();
            return new SurfaceConfig(configType, configSize, streamUseCase);
        }

        /* JADX WARN: Code duplicated, block: B:39:0x00c7  */
        /* JADX WARN: Code duplicated, block: B:41:0x00ca  */
        /* JADX WARN: Code duplicated, block: B:42:0x00cd A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:43:0x00cf  */
        /* JADX WARN: Code duplicated, block: B:45:0x00da  */
        public static SurfaceConfig b(int i2, Size size, SurfaceSizeDefinition surfaceSizeDefinition, int i3, ConfigSource configSource, StreamUseCase streamUseCase) {
            size.getClass();
            surfaceSizeDefinition.getClass();
            configSource.getClass();
            streamUseCase.getClass();
            ConfigType configType = (ConfigType) SurfaceConfig.f2353i.get(Integer.valueOf(i2));
            if (configType == null) {
                configType = ConfigType.PRIV;
            }
            ConfigSize configSize = ConfigSize.NOT_SUPPORT;
            Size size2 = SizeUtil.f2515a;
            int height = size.getHeight() * size.getWidth();
            if (i3 == 1) {
                AutoValue_SurfaceSizeDefinition autoValue_SurfaceSizeDefinition = (AutoValue_SurfaceSizeDefinition) surfaceSizeDefinition;
                if (height <= SizeUtil.a((Size) autoValue_SurfaceSizeDefinition.f2216b.get(Integer.valueOf(i2)))) {
                    configSize = ConfigSize.S720P_16_9;
                } else if (height <= SizeUtil.a((Size) autoValue_SurfaceSizeDefinition.d.get(Integer.valueOf(i2)))) {
                    configSize = ConfigSize.S1440P_4_3;
                }
            } else if (configSource == ConfigSource.FEATURE_COMBINATION_TABLE) {
                Size sizeE = surfaceSizeDefinition.e(i2);
                for (ConfigSize configSize2 : SurfaceConfig.g) {
                    if (size.equals(configSize2.getRelatedFixedSize())) {
                        configSize = configSize2;
                        break;
                    }
                }
                if (configSize == ConfigSize.NOT_SUPPORT && size.equals(sizeE)) {
                    configSize = ConfigSize.MAXIMUM;
                }
            } else {
                AutoValue_SurfaceSizeDefinition autoValue_SurfaceSizeDefinition2 = (AutoValue_SurfaceSizeDefinition) surfaceSizeDefinition;
                if (height <= SizeUtil.a(autoValue_SurfaceSizeDefinition2.f2215a)) {
                    configSize = ConfigSize.VGA;
                } else if (height <= SizeUtil.a(autoValue_SurfaceSizeDefinition2.f2217c)) {
                    configSize = ConfigSize.PREVIEW;
                } else if (height <= SizeUtil.a(autoValue_SurfaceSizeDefinition2.f2218e)) {
                    configSize = ConfigSize.RECORD;
                } else {
                    Size sizeE2 = surfaceSizeDefinition.e(i2);
                    Size size3 = (Size) autoValue_SurfaceSizeDefinition2.f2221i.get(Integer.valueOf(i2));
                    if (sizeE2 != null) {
                        if (height <= sizeE2.getHeight() * sizeE2.getWidth()) {
                            if (i3 != 2) {
                                configSize = ConfigSize.MAXIMUM;
                            } else if (size3 != null) {
                                if (height <= size3.getHeight() * size3.getWidth()) {
                                    configSize = ConfigSize.ULTRA_MAXIMUM;
                                }
                            }
                        } else if (size3 != null) {
                            if (height <= size3.getHeight() * size3.getWidth()) {
                                configSize = ConfigSize.ULTRA_MAXIMUM;
                            }
                        }
                    } else if (i3 != 2) {
                        configSize = ConfigSize.MAXIMUM;
                    } else if (size3 != null) {
                        if (height <= size3.getHeight() * size3.getWidth()) {
                            configSize = ConfigSize.ULTRA_MAXIMUM;
                        }
                    }
                }
            }
            return a(configType, configSize, streamUseCase);
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v5 androidx.camera.core.impl.SurfaceConfig$ConfigSize[], still in use, count: 1, list:
      (r0v5 androidx.camera.core.impl.SurfaceConfig$ConfigSize[]) from 0x00f4: INVOKE (r0v5 androidx.camera.core.impl.SurfaceConfig$ConfigSize[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0014\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001a¨\u0006\u001b"}, d2 = {"Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;", "", "", com.batch.android.s.b.a.f24015b, "I", "a", "()I", "Landroid/util/Size;", "relatedFixedSize", "Landroid/util/Size;", NBSSpanMetricUnit.Bit, "()Landroid/util/Size;", "VGA", "X_VGA", "S720P_16_9", "PREVIEW", "S1080P_4_3", "S1080P_16_9", "S1440P_4_3", "S1440P_16_9", "UHD", "RECORD", "MAXIMUM", "MAXIMUM_4_3", "MAXIMUM_16_9", "ULTRA_MAXIMUM", "NOT_SUPPORT", "camera-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class ConfigSize {
        VGA(0, new Size(Camera.DEFAULT_PREVIEW_WIDTH, Camera.DEFAULT_PREVIEW_HEIGHT)),
        X_VGA(1, new Size(1024, 768)),
        S720P_16_9(2, new Size(Sink.Video.MAX_DIMENSION_HIGH, Sink.Video.MAX_DIMENSION_LOW)),
        PREVIEW(3, null),
        S1080P_4_3(4, new Size(1440, Sink.Screenshare.MAX_DIMENSION_LOW)),
        S1080P_16_9(5, new Size(Sink.Screenshare.MAX_DIMENSION_HIGH, Sink.Screenshare.MAX_DIMENSION_LOW)),
        S1440P_4_3(6, new Size(Sink.Screenshare.MAX_DIMENSION_HIGH, 1440)),
        S1440P_16_9(7, new Size(2560, 1440)),
        UHD(8, new Size(3840, 2160)),
        RECORD(9, null),
        MAXIMUM(10, null),
        MAXIMUM_4_3(11, null),
        MAXIMUM_16_9(12, null),
        ULTRA_MAXIMUM(13, null),
        NOT_SUPPORT(14, null);

        private static final /* synthetic */ EnumEntries $ENTRIES;
        private final int id;
        private final Size relatedFixedSize;

        static {
            $ENTRIES = EnumEntriesKt.a(configSizeArr);
        }

        public ConfigSize(int i2, Size size) {
            super(str, i);
            this.id = i2;
            this.relatedFixedSize = size;
        }

        public static ConfigSize valueOf(String str) {
            return (ConfigSize) Enum.valueOf(ConfigSize.class, str);
        }

        public static ConfigSize[] values() {
            return (ConfigSize[]) $VALUES.clone();
        }

        /* JADX INFO: renamed from: a, reason: from getter */
        public final int getId() {
            return this.id;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final Size getRelatedFixedSize() {
            return this.relatedFixedSize;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;", "", "FEATURE_COMBINATION_TABLE", "CAPTURE_SESSION_TABLES", "camera-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class ConfigSource {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ConfigSource[] $VALUES;
        public static final ConfigSource CAPTURE_SESSION_TABLES;
        public static final ConfigSource FEATURE_COMBINATION_TABLE;

        static {
            ConfigSource configSource = new ConfigSource("FEATURE_COMBINATION_TABLE", 0);
            FEATURE_COMBINATION_TABLE = configSource;
            ConfigSource configSource2 = new ConfigSource("CAPTURE_SESSION_TABLES", 1);
            CAPTURE_SESSION_TABLES = configSource2;
            ConfigSource[] configSourceArr = {configSource, configSource2};
            $VALUES = configSourceArr;
            $ENTRIES = EnumEntriesKt.a(configSourceArr);
        }

        public static ConfigSource valueOf(String str) {
            return (ConfigSource) Enum.valueOf(ConfigSource.class, str);
        }

        public static ConfigSource[] values() {
            return (ConfigSource[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Landroidx/camera/core/impl/SurfaceConfig$ConfigType;", "", "PRIV", "YUV", "JPEG", "JPEG_R", "RAW", "camera-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class ConfigType {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ConfigType[] $VALUES;
        public static final ConfigType JPEG;
        public static final ConfigType JPEG_R;
        public static final ConfigType PRIV;
        public static final ConfigType RAW;
        public static final ConfigType YUV;

        static {
            ConfigType configType = new ConfigType("PRIV", 0);
            PRIV = configType;
            ConfigType configType2 = new ConfigType("YUV", 1);
            YUV = configType2;
            ConfigType configType3 = new ConfigType("JPEG", 2);
            JPEG = configType3;
            ConfigType configType4 = new ConfigType("JPEG_R", 3);
            JPEG_R = configType4;
            ConfigType configType5 = new ConfigType("RAW", 4);
            RAW = configType5;
            ConfigType[] configTypeArr = {configType, configType2, configType3, configType4, configType5};
            $VALUES = configTypeArr;
            $ENTRIES = EnumEntriesKt.a(configTypeArr);
        }

        public static ConfigType valueOf(String str) {
            return (ConfigType) Enum.valueOf(ConfigType.class, str);
        }

        public static ConfigType[] values() {
            return (ConfigType[]) $VALUES.clone();
        }
    }

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f2357a;

        static {
            int[] iArr = new int[ConfigSize.values().length];
            try {
                iArr[ConfigSize.PREVIEW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ConfigSize.RECORD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ConfigSize.MAXIMUM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ConfigSize.MAXIMUM_4_3.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ConfigSize.MAXIMUM_16_9.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ConfigSize.ULTRA_MAXIMUM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[ConfigSize.NOT_SUPPORT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            f2357a = iArr;
        }
    }

    static {
        Map mapI = MapsKt.i(new Pair(ConfigType.YUV, 35), new Pair(ConfigType.JPEG, 256), new Pair(ConfigType.JPEG_R, 4101), new Pair(ConfigType.RAW, 32), new Pair(ConfigType.PRIV, 34));
        f2352h = mapI;
        Set<Map.Entry> setEntrySet = mapI.entrySet();
        int iG = MapsKt.g(CollectionsKt.t(setEntrySet, 10));
        if (iG < 16) {
            iG = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(iG);
        for (Map.Entry entry : setEntrySet) {
            linkedHashMap.put(Integer.valueOf(((Number) entry.getValue()).intValue()), (ConfigType) entry.getKey());
        }
        f2353i = linkedHashMap;
    }

    public SurfaceConfig(ConfigType configType, ConfigSize configSize, StreamUseCase streamUseCase) {
        configType.getClass();
        configSize.getClass();
        streamUseCase.getClass();
        this.f2354a = configType;
        this.f2355b = configSize;
        this.f2356c = streamUseCase;
        Integer num = (Integer) f2352h.get(configType);
        this.d = num != null ? num.intValue() : 0;
    }

    public static final SurfaceConfig a(ConfigType configType, ConfigSize configSize) {
        f2350e.getClass();
        configType.getClass();
        configSize.getClass();
        return Companion.a(configType, configSize, f2351f);
    }

    public final Size b(SurfaceSizeDefinition surfaceSizeDefinition) {
        Size sizeE;
        surfaceSizeDefinition.getClass();
        int[] iArr = WhenMappings.f2357a;
        ConfigSize configSize = this.f2355b;
        int i2 = iArr[configSize.ordinal()];
        int i3 = this.d;
        switch (i2) {
            case 1:
                sizeE = ((AutoValue_SurfaceSizeDefinition) surfaceSizeDefinition).f2217c;
                break;
            case 2:
                sizeE = ((AutoValue_SurfaceSizeDefinition) surfaceSizeDefinition).f2218e;
                break;
            case 3:
                sizeE = surfaceSizeDefinition.e(i3);
                break;
            case 4:
                sizeE = (Size) ((AutoValue_SurfaceSizeDefinition) surfaceSizeDefinition).f2219f.get(Integer.valueOf(i3));
                break;
            case 5:
                sizeE = (Size) ((AutoValue_SurfaceSizeDefinition) surfaceSizeDefinition).f2219f.get(Integer.valueOf(i3));
                break;
            case 6:
                sizeE = (Size) ((AutoValue_SurfaceSizeDefinition) surfaceSizeDefinition).f2221i.get(Integer.valueOf(i3));
                break;
            case 7:
                md.k("Not supported config size");
                return null;
            default:
                sizeE = configSize.getRelatedFixedSize();
                break;
        }
        sizeE.getClass();
        return sizeE;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SurfaceConfig)) {
            return false;
        }
        SurfaceConfig surfaceConfig = (SurfaceConfig) obj;
        return this.f2354a == surfaceConfig.f2354a && this.f2355b == surfaceConfig.f2355b && this.f2356c == surfaceConfig.f2356c;
    }

    public final int hashCode() {
        return this.f2356c.hashCode() + ((this.f2355b.hashCode() + (this.f2354a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "SurfaceConfig(configType=" + this.f2354a + ", configSize=" + this.f2355b + ", streamUseCase=" + this.f2356c + ')';
    }

    public /* synthetic */ SurfaceConfig(ConfigType configType, ConfigSize configSize, StreamUseCase streamUseCase, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(configType, configSize, (i2 & 4) != 0 ? f2351f : streamUseCase);
    }
}
