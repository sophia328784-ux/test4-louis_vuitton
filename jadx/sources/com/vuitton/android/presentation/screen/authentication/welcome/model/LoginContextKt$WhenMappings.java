package com.vuitton.android.presentation.screen.authentication.welcome.model;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public abstract /* synthetic */ class LoginContextKt$WhenMappings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f54277a;

    static {
        int[] iArr = new int[LoginContext.values().length];
        try {
            iArr[LoginContext.SERVICE.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[LoginContext.WISHLIST.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[LoginContext.DEFAULT.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr[LoginContext.CONTENT_CURATION.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr[LoginContext.MY_LV.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        f54277a = iArr;
    }
}
