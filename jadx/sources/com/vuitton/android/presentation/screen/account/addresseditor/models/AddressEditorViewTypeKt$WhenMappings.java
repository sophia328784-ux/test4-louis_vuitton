package com.vuitton.android.presentation.screen.account.addresseditor.models;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public abstract /* synthetic */ class AddressEditorViewTypeKt$WhenMappings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f52273a;

    static {
        int[] iArr = new int[AddressEditorViewType.values().length];
        try {
            iArr[AddressEditorViewType.EDIT_MAIN_ADDRESS.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[AddressEditorViewType.EDIT_SECONDARY_ADDRESS.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[AddressEditorViewType.ADD_MAIN_ADDRESS.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr[AddressEditorViewType.ADD_SECONDARY_ADDRESS.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        f52273a = iArr;
    }
}
