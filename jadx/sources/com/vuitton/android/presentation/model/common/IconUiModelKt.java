package com.vuitton.android.presentation.model.common;

import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class IconUiModelKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f51789a;

        static {
            int[] iArr = new int[IconUiModel.values().length];
            try {
                iArr[IconUiModel.AI_COMPANION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            f51789a = iArr;
        }
    }

    public static final void a(IconUiModel iconUiModel) {
        iconUiModel.getClass();
        if (WhenMappings.f51789a[iconUiModel.ordinal()] == 1) {
            return;
        }
        v40.g();
    }
}
