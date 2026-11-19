package com.google.crypto.tink;

import com.google.errorprone.annotations.Immutable;

/* JADX INFO: loaded from: classes2.dex */
@Immutable
public final class KeyTemplate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.google.crypto.tink.proto.KeyTemplate f33850a;

    /* JADX INFO: renamed from: com.google.crypto.tink.KeyTemplate$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f33851a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f33852b;

        static {
            int[] iArr = new int[OutputPrefixType.values().length];
            f33852b = iArr;
            try {
                iArr[OutputPrefixType.TINK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f33852b[OutputPrefixType.LEGACY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f33852b[OutputPrefixType.RAW.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f33852b[OutputPrefixType.CRUNCHY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[com.google.crypto.tink.proto.OutputPrefixType.values().length];
            f33851a = iArr2;
            try {
                iArr2[com.google.crypto.tink.proto.OutputPrefixType.TINK.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f33851a[com.google.crypto.tink.proto.OutputPrefixType.LEGACY.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f33851a[com.google.crypto.tink.proto.OutputPrefixType.RAW.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f33851a[com.google.crypto.tink.proto.OutputPrefixType.CRUNCHY.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class OutputPrefixType {
        private static final /* synthetic */ OutputPrefixType[] $VALUES;
        public static final OutputPrefixType CRUNCHY;
        public static final OutputPrefixType LEGACY;
        public static final OutputPrefixType RAW;
        public static final OutputPrefixType TINK;

        static {
            OutputPrefixType outputPrefixType = new OutputPrefixType("TINK", 0);
            TINK = outputPrefixType;
            OutputPrefixType outputPrefixType2 = new OutputPrefixType("LEGACY", 1);
            LEGACY = outputPrefixType2;
            OutputPrefixType outputPrefixType3 = new OutputPrefixType("RAW", 2);
            RAW = outputPrefixType3;
            OutputPrefixType outputPrefixType4 = new OutputPrefixType("CRUNCHY", 3);
            CRUNCHY = outputPrefixType4;
            $VALUES = new OutputPrefixType[]{outputPrefixType, outputPrefixType2, outputPrefixType3, outputPrefixType4};
        }

        public static OutputPrefixType valueOf(String str) {
            return (OutputPrefixType) Enum.valueOf(OutputPrefixType.class, str);
        }

        public static OutputPrefixType[] values() {
            return (OutputPrefixType[]) $VALUES.clone();
        }
    }

    public KeyTemplate(com.google.crypto.tink.proto.KeyTemplate keyTemplate) {
        this.f33850a = keyTemplate;
    }
}
