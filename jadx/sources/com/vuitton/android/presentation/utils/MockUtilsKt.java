package com.vuitton.android.presentation.utils;

import com.vuitton.android.domain.usecase.analytics.SendHitUseCase;
import com.vuitton.android.domain.usecase.analytics.SetUserPropertyUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.presentation.contact.ContactUsTracker;
import com.vuitton.android.presentation.utils.MockUtilsKt;
import com.vuitton.android.presentation.utils.MockUtilsKt$noOpTracker$1;
import dagger.Lazy;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class MockUtilsKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final MockUtilsKt$noOpTracker$1 f65860a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ContactUsTracker f65861b;

    static {
        final int i2 = 0;
        final int i3 = 1;
        MockUtilsKt$noOpTracker$1 mockUtilsKt$noOpTracker$1 = new MockUtilsKt$noOpTracker$1(new SetUserPropertyUseCase(new Lazy() { // from class: yc0
            @Override // dagger.Lazy
            public final Object get() {
                switch (i2) {
                    case 0:
                        MockUtilsKt$noOpTracker$1 mockUtilsKt$noOpTracker$2 = MockUtilsKt.f65860a;
                        throw new UnsupportedOperationException();
                    default:
                        MockUtilsKt$noOpTracker$1 mockUtilsKt$noOpTracker$3 = MockUtilsKt.f65860a;
                        throw new UnsupportedOperationException();
                }
            }
        }), new SendHitUseCase(new RequireUserInAppDispatchUseCase(new MockUtilsKt$noOpTracker$3()), new Lazy() { // from class: yc0
            @Override // dagger.Lazy
            public final Object get() {
                switch (i3) {
                    case 0:
                        MockUtilsKt$noOpTracker$1 mockUtilsKt$noOpTracker$2 = MockUtilsKt.f65860a;
                        throw new UnsupportedOperationException();
                    default:
                        MockUtilsKt$noOpTracker$1 mockUtilsKt$noOpTracker$3 = MockUtilsKt.f65860a;
                        throw new UnsupportedOperationException();
                }
            }
        }));
        f65860a = mockUtilsKt$noOpTracker$1;
        f65861b = new ContactUsTracker(mockUtilsKt$noOpTracker$1);
    }
}
