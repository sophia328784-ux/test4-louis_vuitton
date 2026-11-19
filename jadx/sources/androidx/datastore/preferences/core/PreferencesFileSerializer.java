package androidx.datastore.preferences.core;

import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.Serializer;
import androidx.datastore.core.UncloseableOutputStream;
import androidx.datastore.preferences.PreferencesMapCompat;
import androidx.datastore.preferences.PreferencesProto$PreferenceMap;
import androidx.datastore.preferences.PreferencesProto$StringSet;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.datastore.preferences.protobuf.ByteString;
import androidx.datastore.preferences.protobuf.GeneratedMessageLite;
import androidx.datastore.preferences.protobuf.Internal;
import androidx.datastore.preferences.protobuf.InvalidProtocolBufferException;
import defpackage.md;
import defpackage.o60;
import defpackage.v40;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÀ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Landroidx/datastore/preferences/core/PreferencesFileSerializer;", "Landroidx/datastore/core/Serializer;", "Landroidx/datastore/preferences/core/Preferences;", "datastore-preferences-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class PreferencesFileSerializer implements Serializer<Preferences> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PreferencesFileSerializer f12888a = new PreferencesFileSerializer();

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f12889a;

        static {
            int[] iArr = new int[PreferencesProto$Value.ValueCase.values().length];
            try {
                iArr[PreferencesProto$Value.ValueCase.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PreferencesProto$Value.ValueCase.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PreferencesProto$Value.ValueCase.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[PreferencesProto$Value.ValueCase.INTEGER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[PreferencesProto$Value.ValueCase.LONG.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[PreferencesProto$Value.ValueCase.STRING.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[PreferencesProto$Value.ValueCase.STRING_SET.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[PreferencesProto$Value.ValueCase.BYTES.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[PreferencesProto$Value.ValueCase.VALUE_NOT_SET.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            f12889a = iArr;
        }
    }

    @Override // androidx.datastore.core.Serializer
    public final Object a() {
        return PreferencesFactory.a();
    }

    @Override // androidx.datastore.core.Serializer
    public final Unit b(Object obj, UncloseableOutputStream uncloseableOutputStream) throws IOException {
        GeneratedMessageLite generatedMessageLiteO;
        Map mapA = ((Preferences) obj).a();
        PreferencesProto$PreferenceMap.Builder builderD = PreferencesProto$PreferenceMap.D();
        for (Map.Entry entry : mapA.entrySet()) {
            Preferences.Key key = (Preferences.Key) entry.getKey();
            Object value = entry.getValue();
            String str = key.f12885a;
            if (value instanceof Boolean) {
                PreferencesProto$Value.Builder builderT = PreferencesProto$Value.T();
                boolean zBooleanValue = ((Boolean) value).booleanValue();
                builderT.k();
                PreferencesProto$Value.G((PreferencesProto$Value) builderT.f12945c, zBooleanValue);
                generatedMessageLiteO = builderT.o();
            } else if (value instanceof Float) {
                PreferencesProto$Value.Builder builderT2 = PreferencesProto$Value.T();
                float fFloatValue = ((Number) value).floatValue();
                builderT2.k();
                PreferencesProto$Value.H((PreferencesProto$Value) builderT2.f12945c, fFloatValue);
                generatedMessageLiteO = builderT2.o();
            } else if (value instanceof Double) {
                PreferencesProto$Value.Builder builderT3 = PreferencesProto$Value.T();
                double dDoubleValue = ((Number) value).doubleValue();
                builderT3.k();
                PreferencesProto$Value.D((PreferencesProto$Value) builderT3.f12945c, dDoubleValue);
                generatedMessageLiteO = builderT3.o();
            } else if (value instanceof Integer) {
                PreferencesProto$Value.Builder builderT4 = PreferencesProto$Value.T();
                int iIntValue = ((Number) value).intValue();
                builderT4.k();
                PreferencesProto$Value.I((PreferencesProto$Value) builderT4.f12945c, iIntValue);
                generatedMessageLiteO = builderT4.o();
            } else if (value instanceof Long) {
                PreferencesProto$Value.Builder builderT5 = PreferencesProto$Value.T();
                long jLongValue = ((Number) value).longValue();
                builderT5.k();
                PreferencesProto$Value.A((PreferencesProto$Value) builderT5.f12945c, jLongValue);
                generatedMessageLiteO = builderT5.o();
            } else if (value instanceof String) {
                PreferencesProto$Value.Builder builderT6 = PreferencesProto$Value.T();
                builderT6.k();
                PreferencesProto$Value.B((PreferencesProto$Value) builderT6.f12945c, (String) value);
                generatedMessageLiteO = builderT6.o();
            } else if (value instanceof Set) {
                PreferencesProto$Value.Builder builderT7 = PreferencesProto$Value.T();
                PreferencesProto$StringSet.Builder builderE = PreferencesProto$StringSet.E();
                builderE.k();
                PreferencesProto$StringSet.B((PreferencesProto$StringSet) builderE.f12945c, (Set) value);
                builderT7.k();
                PreferencesProto$Value.C((PreferencesProto$Value) builderT7.f12945c, (PreferencesProto$StringSet) builderE.o());
                generatedMessageLiteO = builderT7.o();
            } else {
                if (!(value instanceof byte[])) {
                    md.k(o60.l(value, "PreferencesSerializer does not support type: "));
                    return null;
                }
                PreferencesProto$Value.Builder builderT8 = PreferencesProto$Value.T();
                byte[] bArr = (byte[]) value;
                ByteString byteStringH = ByteString.h(0, bArr.length, bArr);
                builderT8.k();
                PreferencesProto$Value.E((PreferencesProto$Value) builderT8.f12945c, byteStringH);
                generatedMessageLiteO = builderT8.o();
            }
            builderD.getClass();
            str.getClass();
            builderD.k();
            PreferencesProto$PreferenceMap.B((PreferencesProto$PreferenceMap) builderD.f12945c).put(str, (PreferencesProto$Value) generatedMessageLiteO);
        }
        ((PreferencesProto$PreferenceMap) builderD.o()).m(uncloseableOutputStream);
        return Unit.f71739a;
    }

    @Override // androidx.datastore.core.Serializer
    public final Object c(FileInputStream fileInputStream) throws CorruptionException {
        byte[] bArr;
        PreferencesMapCompat.f12869a.getClass();
        try {
            PreferencesProto$PreferenceMap preferencesProto$PreferenceMapE = PreferencesProto$PreferenceMap.E(fileInputStream);
            MutablePreferences mutablePreferences = new MutablePreferences(null, false, 1, null);
            Preferences.Pair[] pairArr = (Preferences.Pair[]) Arrays.copyOf(new Preferences.Pair[0], 0);
            mutablePreferences.c();
            for (Preferences.Pair pair : pairArr) {
                mutablePreferences.f(pair.f12886a, pair.f12887b);
            }
            Map mapC = preferencesProto$PreferenceMapE.C();
            mapC.getClass();
            for (Map.Entry entry : mapC.entrySet()) {
                String str = (String) entry.getKey();
                PreferencesProto$Value preferencesProto$Value = (PreferencesProto$Value) entry.getValue();
                str.getClass();
                preferencesProto$Value.getClass();
                PreferencesProto$Value.ValueCase valueCaseS = preferencesProto$Value.S();
                switch (valueCaseS == null ? -1 : WhenMappings.f12889a[valueCaseS.ordinal()]) {
                    case -1:
                        throw new CorruptionException("Value case is null.", null, 2, null);
                    case 0:
                    default:
                        v40.g();
                        return null;
                    case 1:
                        mutablePreferences.f(new Preferences.Key(str), Boolean.valueOf(preferencesProto$Value.J()));
                        break;
                    case 2:
                        mutablePreferences.f(new Preferences.Key(str), Float.valueOf(preferencesProto$Value.N()));
                        break;
                    case 3:
                        mutablePreferences.f(new Preferences.Key(str), Double.valueOf(preferencesProto$Value.M()));
                        break;
                    case 4:
                        mutablePreferences.f(new Preferences.Key(str), Integer.valueOf(preferencesProto$Value.O()));
                        break;
                    case 5:
                        mutablePreferences.f(new Preferences.Key(str), Long.valueOf(preferencesProto$Value.P()));
                        break;
                    case 6:
                        Preferences.Key key = new Preferences.Key(str);
                        String strQ = preferencesProto$Value.Q();
                        strQ.getClass();
                        mutablePreferences.f(key, strQ);
                        break;
                    case 7:
                        Preferences.Key key2 = new Preferences.Key(str);
                        Internal.ProtobufList protobufListD = preferencesProto$Value.R().D();
                        protobufListD.getClass();
                        mutablePreferences.f(key2, CollectionsKt.B0(protobufListD));
                        break;
                    case 8:
                        Preferences.Key key3 = new Preferences.Key(str);
                        ByteString byteStringK = preferencesProto$Value.K();
                        int size = byteStringK.size();
                        if (size == 0) {
                            bArr = Internal.f12948b;
                        } else {
                            byte[] bArr2 = new byte[size];
                            byteStringK.i(size, bArr2);
                            bArr = bArr2;
                        }
                        bArr.getClass();
                        mutablePreferences.f(key3, bArr);
                        break;
                    case 9:
                        throw new CorruptionException("Value not set.", null, 2, null);
                }
            }
            return new MutablePreferences(new LinkedHashMap(mutablePreferences.a()), true);
        } catch (InvalidProtocolBufferException e2) {
            throw new CorruptionException("Unable to parse preferences proto.", e2);
        }
    }
}
