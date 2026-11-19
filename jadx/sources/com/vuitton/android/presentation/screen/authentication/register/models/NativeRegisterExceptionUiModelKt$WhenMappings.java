package com.vuitton.android.presentation.screen.authentication.register.models;

import com.vuitton.foundation.model.domain.model.authentication.oauth.InvalidAddressScope;
import com.vuitton.foundation.model.domain.model.authentication.oauth.InvalidNameScope;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public abstract /* synthetic */ class NativeRegisterExceptionUiModelKt$WhenMappings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f53983a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int[] f53984b;

    static {
        int[] iArr = new int[InvalidNameScope.values().length];
        try {
            iArr[InvalidNameScope.FIRST_NAME.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[InvalidNameScope.LAST_NAME.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[InvalidNameScope.FIRST_NAME2.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr[InvalidNameScope.LAST_NAME2.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr[InvalidNameScope.UNDEFINED.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        f53983a = iArr;
        int[] iArr2 = new int[InvalidAddressScope.values().length];
        try {
            iArr2[InvalidAddressScope.ADDRESS1.ordinal()] = 1;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            iArr2[InvalidAddressScope.ADDRESS2.ordinal()] = 2;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            iArr2[InvalidAddressScope.ADDRESS3.ordinal()] = 3;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            iArr2[InvalidAddressScope.UNDEFINED.ordinal()] = 4;
        } catch (NoSuchFieldError unused9) {
        }
        f53984b = iArr2;
    }
}
