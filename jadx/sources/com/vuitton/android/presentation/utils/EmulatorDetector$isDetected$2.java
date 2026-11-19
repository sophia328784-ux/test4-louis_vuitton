package com.vuitton.android.presentation.utils;

import defpackage.ck;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.EmptyList;
import kotlin.io.CloseableKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.sequences.SequencesKt;
import kotlin.text.Charsets;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class EmulatorDetector$isDetected$2 extends FunctionReferenceImpl implements Function1<String, List<? extends String>> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Object failure;
        String str = (String) obj;
        str.getClass();
        EmulatorDetector emulatorDetector = (EmulatorDetector) this.receiver;
        EmulatorDetector emulatorDetector2 = EmulatorDetector.f65833a;
        emulatorDetector.getClass();
        try {
            Result.Companion companion = Result.INSTANCE;
            File file = new File(str);
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), Charsets.UTF_8), 8192);
            try {
                failure = SequencesKt.x(SequencesKt.r(TextStreamsKt.a(bufferedReader), new ck(emulatorDetector, 20)));
                bufferedReader.close();
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.a(bufferedReader, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th3);
        }
        if (Result.a(failure) != null) {
            failure = EmptyList.f71768b;
        }
        return (List) failure;
    }
}
