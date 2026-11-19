package androidx.navigation.serialization;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlinx.serialization.KSerializer;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0001\nB\u0017\b\u0016\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003¢\u0006\u0004\b\u0005\u0010\u0006B\u001f\b\u0016\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003¢\u0006\u0004\b\u0005\u0010\t¨\u0006\u000b"}, d2 = {"Landroidx/navigation/serialization/RouteBuilder;", "T", "", "Lkotlinx/serialization/KSerializer;", "serializer", "<init>", "(Lkotlinx/serialization/KSerializer;)V", "", "path", "(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)V", "ParamType", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class RouteBuilder<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final KSerializer f18362a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f18363b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f18364c;
    public String d;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Landroidx/navigation/serialization/RouteBuilder$ParamType;", "", "PATH", "QUERY", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class ParamType {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ParamType[] $VALUES;
        public static final ParamType PATH;
        public static final ParamType QUERY;

        static {
            ParamType paramType = new ParamType("PATH", 0);
            PATH = paramType;
            ParamType paramType2 = new ParamType("QUERY", 1);
            QUERY = paramType2;
            ParamType[] paramTypeArr = {paramType, paramType2};
            $VALUES = paramTypeArr;
            $ENTRIES = EnumEntriesKt.a(paramTypeArr);
        }

        public static ParamType valueOf(String str) {
            return (ParamType) Enum.valueOf(ParamType.class, str);
        }

        public static ParamType[] values() {
            return (ParamType[]) $VALUES.clone();
        }
    }

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f18365a;

        static {
            int[] iArr = new int[ParamType.values().length];
            try {
                iArr[ParamType.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ParamType.QUERY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f18365a = iArr;
        }
    }

    public RouteBuilder(KSerializer<T> kSerializer) {
        kSerializer.getClass();
        this.f18364c = "";
        this.d = "";
        this.f18362a = kSerializer;
        this.f18363b = kSerializer.a().getF75659a();
    }

    public final void a(String str, String str2) {
        this.d += (this.d.length() == 0 ? "?" : "&") + str + '=' + str2;
    }

    public RouteBuilder(String str, KSerializer<T> kSerializer) {
        str.getClass();
        kSerializer.getClass();
        this.f18364c = "";
        this.d = "";
        this.f18362a = kSerializer;
        this.f18363b = str;
    }
}
