package com.vuitton.android.presentation.utils;

import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class EmulatorDetector$isDetected$1 extends FunctionReferenceImpl implements Function1<String, Boolean> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String str = (String) obj;
        str.getClass();
        EmulatorDetector emulatorDetector = (EmulatorDetector) this.receiver;
        EmulatorDetector emulatorDetector2 = EmulatorDetector.f65833a;
        emulatorDetector.getClass();
        return Boolean.valueOf(new File(str).exists());
    }
}
