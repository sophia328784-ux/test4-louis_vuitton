package androidx.datastore.preferences;

import androidx.datastore.preferences.protobuf.GeneratedMessageLite;
import androidx.datastore.preferences.protobuf.MapEntryLite;
import androidx.datastore.preferences.protobuf.MapFieldLite;
import androidx.datastore.preferences.protobuf.Parser;
import androidx.datastore.preferences.protobuf.WireFormat$FieldType;
import defpackage.x1;
import java.io.FileInputStream;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class PreferencesProto$PreferenceMap extends GeneratedMessageLite<PreferencesProto$PreferenceMap, Builder> implements PreferencesProto$PreferenceMapOrBuilder {
    private static final PreferencesProto$PreferenceMap DEFAULT_INSTANCE;
    private static volatile Parser<PreferencesProto$PreferenceMap> PARSER = null;
    public static final int PREFERENCES_FIELD_NUMBER = 1;
    private MapFieldLite<String, PreferencesProto$Value> preferences_ = MapFieldLite.f12966c;

    public static final class Builder extends GeneratedMessageLite.Builder<PreferencesProto$PreferenceMap, Builder> implements PreferencesProto$PreferenceMapOrBuilder {
    }

    public static final class PreferencesDefaultEntryHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final MapEntryLite f12871a = new MapEntryLite(WireFormat$FieldType.STRING, WireFormat$FieldType.MESSAGE, PreferencesProto$Value.L());
    }

    static {
        PreferencesProto$PreferenceMap preferencesProto$PreferenceMap = new PreferencesProto$PreferenceMap();
        DEFAULT_INSTANCE = preferencesProto$PreferenceMap;
        GeneratedMessageLite.z(PreferencesProto$PreferenceMap.class, preferencesProto$PreferenceMap);
    }

    public static MapFieldLite B(PreferencesProto$PreferenceMap preferencesProto$PreferenceMap) {
        MapFieldLite<String, PreferencesProto$Value> mapFieldLite = preferencesProto$PreferenceMap.preferences_;
        if (!mapFieldLite.f12967b) {
            preferencesProto$PreferenceMap.preferences_ = mapFieldLite.d();
        }
        return preferencesProto$PreferenceMap.preferences_;
    }

    public static Builder D() {
        return (Builder) ((GeneratedMessageLite.Builder) DEFAULT_INSTANCE.n(GeneratedMessageLite.MethodToInvoke.NEW_BUILDER));
    }

    public static PreferencesProto$PreferenceMap E(FileInputStream fileInputStream) {
        return (PreferencesProto$PreferenceMap) GeneratedMessageLite.x(DEFAULT_INSTANCE, fileInputStream);
    }

    public final Map C() {
        return Collections.unmodifiableMap(this.preferences_);
    }

    @Override // androidx.datastore.preferences.protobuf.GeneratedMessageLite
    public final Object n(GeneratedMessageLite.MethodToInvoke methodToInvoke) {
        Parser defaultInstanceBasedParser;
        switch (PreferencesProto$1.f12870a[methodToInvoke.ordinal()]) {
            case 1:
                return new PreferencesProto$PreferenceMap();
            case 2:
                return new Builder(DEFAULT_INSTANCE);
            case 3:
                return GeneratedMessageLite.v(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012", new Object[]{"preferences_", PreferencesDefaultEntryHolder.f12871a});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                Parser<PreferencesProto$PreferenceMap> parser = PARSER;
                if (parser != null) {
                    return parser;
                }
                synchronized (PreferencesProto$PreferenceMap.class) {
                    try {
                        defaultInstanceBasedParser = PARSER;
                        if (defaultInstanceBasedParser == null) {
                            defaultInstanceBasedParser = new GeneratedMessageLite.DefaultInstanceBasedParser(DEFAULT_INSTANCE);
                            PARSER = defaultInstanceBasedParser;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return defaultInstanceBasedParser;
            case 6:
                return (byte) 1;
            default:
                x1.i();
            case 7:
                return null;
        }
    }
}
