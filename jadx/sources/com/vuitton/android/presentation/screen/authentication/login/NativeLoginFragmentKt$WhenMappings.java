package com.vuitton.android.presentation.screen.authentication.login;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public abstract /* synthetic */ class NativeLoginFragmentKt$WhenMappings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f53593a;

    static {
        int[] iArr = new int[NativeLoginRouteName.values().length];
        try {
            iArr[NativeLoginRouteName.LOGIN.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[NativeLoginRouteName.FORGET_PASSWORD.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        f53593a = iArr;
    }
}
