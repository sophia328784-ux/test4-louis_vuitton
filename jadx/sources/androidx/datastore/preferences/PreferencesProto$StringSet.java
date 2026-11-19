package androidx.datastore.preferences;

import androidx.datastore.preferences.protobuf.AbstractMessageLite;
import androidx.datastore.preferences.protobuf.GeneratedMessageLite;
import androidx.datastore.preferences.protobuf.Internal;
import androidx.datastore.preferences.protobuf.Parser;
import defpackage.x1;

/* JADX INFO: loaded from: classes.dex */
public final class PreferencesProto$StringSet extends GeneratedMessageLite<PreferencesProto$StringSet, Builder> implements PreferencesProto$StringSetOrBuilder {
    private static final PreferencesProto$StringSet DEFAULT_INSTANCE;
    private static volatile Parser<PreferencesProto$StringSet> PARSER = null;
    public static final int STRINGS_FIELD_NUMBER = 1;
    private Internal.ProtobufList<String> strings_ = GeneratedMessageLite.p();

    public static final class Builder extends GeneratedMessageLite.Builder<PreferencesProto$StringSet, Builder> implements PreferencesProto$StringSetOrBuilder {
    }

    static {
        PreferencesProto$StringSet preferencesProto$StringSet = new PreferencesProto$StringSet();
        DEFAULT_INSTANCE = preferencesProto$StringSet;
        GeneratedMessageLite.z(PreferencesProto$StringSet.class, preferencesProto$StringSet);
    }

    public static void B(PreferencesProto$StringSet preferencesProto$StringSet, Iterable iterable) {
        Internal.ProtobufList<String> protobufList = preferencesProto$StringSet.strings_;
        if (!protobufList.m0()) {
            int size = protobufList.size();
            preferencesProto$StringSet.strings_ = protobufList.c(size == 0 ? 10 : size * 2);
        }
        AbstractMessageLite.i(iterable, preferencesProto$StringSet.strings_);
    }

    public static PreferencesProto$StringSet C() {
        return DEFAULT_INSTANCE;
    }

    public static Builder E() {
        return (Builder) ((GeneratedMessageLite.Builder) DEFAULT_INSTANCE.n(GeneratedMessageLite.MethodToInvoke.NEW_BUILDER));
    }

    public final Internal.ProtobufList D() {
        return this.strings_;
    }

    @Override // androidx.datastore.preferences.protobuf.GeneratedMessageLite
    public final Object n(GeneratedMessageLite.MethodToInvoke methodToInvoke) {
        Parser defaultInstanceBasedParser;
        switch (PreferencesProto$1.f12870a[methodToInvoke.ordinal()]) {
            case 1:
                return new PreferencesProto$StringSet();
            case 2:
                return new Builder(DEFAULT_INSTANCE);
            case 3:
                return GeneratedMessageLite.v(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a", new Object[]{"strings_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                Parser<PreferencesProto$StringSet> parser = PARSER;
                if (parser != null) {
                    return parser;
                }
                synchronized (PreferencesProto$StringSet.class) {
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
