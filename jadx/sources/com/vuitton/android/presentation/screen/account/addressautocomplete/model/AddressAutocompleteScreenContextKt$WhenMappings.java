package com.vuitton.android.presentation.screen.account.addressautocomplete.model;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public abstract /* synthetic */ class AddressAutocompleteScreenContextKt$WhenMappings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f52115a;

    static {
        int[] iArr = new int[AddressAutocompleteScreenContext.values().length];
        try {
            iArr[AddressAutocompleteScreenContext.PROFILE_ADDRESS.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[AddressAutocompleteScreenContext.NATIVE_REGISTER_ADDRESS.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        f52115a = iArr;
    }
}
