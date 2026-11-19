package com.vuitton.android.presentation.screen.privacy.models;

import defpackage.v40;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;", "", "GIVEN", "REFUSED", "UNSET", "MANDATORY", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ConsentValueUiModel {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ConsentValueUiModel[] $VALUES;
    public static final ConsentValueUiModel GIVEN;
    public static final ConsentValueUiModel MANDATORY;
    public static final ConsentValueUiModel REFUSED;
    public static final ConsentValueUiModel UNSET;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f63407a;

        static {
            int[] iArr = new int[ConsentValueUiModel.values().length];
            try {
                iArr[ConsentValueUiModel.GIVEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ConsentValueUiModel.MANDATORY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ConsentValueUiModel.REFUSED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ConsentValueUiModel.UNSET.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f63407a = iArr;
        }
    }

    static {
        ConsentValueUiModel consentValueUiModel = new ConsentValueUiModel("GIVEN", 0);
        GIVEN = consentValueUiModel;
        ConsentValueUiModel consentValueUiModel2 = new ConsentValueUiModel("REFUSED", 1);
        REFUSED = consentValueUiModel2;
        ConsentValueUiModel consentValueUiModel3 = new ConsentValueUiModel("UNSET", 2);
        UNSET = consentValueUiModel3;
        ConsentValueUiModel consentValueUiModel4 = new ConsentValueUiModel("MANDATORY", 3);
        MANDATORY = consentValueUiModel4;
        ConsentValueUiModel[] consentValueUiModelArr = {consentValueUiModel, consentValueUiModel2, consentValueUiModel3, consentValueUiModel4};
        $VALUES = consentValueUiModelArr;
        $ENTRIES = EnumEntriesKt.a(consentValueUiModelArr);
    }

    public static ConsentValueUiModel valueOf(String str) {
        return (ConsentValueUiModel) Enum.valueOf(ConsentValueUiModel.class, str);
    }

    public static ConsentValueUiModel[] values() {
        return (ConsentValueUiModel[]) $VALUES.clone();
    }

    public final boolean a() {
        int i2 = WhenMappings.f63407a[ordinal()];
        if (i2 == 1 || i2 == 2) {
            return true;
        }
        if (i2 == 3 || i2 == 4) {
            return false;
        }
        v40.g();
        return false;
    }
}
