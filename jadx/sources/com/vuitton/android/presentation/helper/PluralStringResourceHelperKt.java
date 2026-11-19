package com.vuitton.android.presentation.helper;

import android.content.Context;
import android.content.res.Resources;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import com.vuitton.foundation.logger.LegacyLogger;
import defpackage.fc;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Result;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PluralStringResourceHelperKt {
    public static final String a(int i2, int i3, Object[] objArr, Composer composer) {
        Object failure;
        String quantityString;
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Context context = (Context) composer.k(AndroidCompositionLocals_androidKt.f9936b);
        try {
            quantityString = context.getResources().getQuantityString(i2, i3, Arrays.copyOf(objArr, objArr.length));
            quantityString.getClass();
        } catch (Resources.NotFoundException e2) {
            try {
                Result.Companion companion = Result.INSTANCE;
                failure = context.getResources().getResourceName(i2);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                failure = new Result.Failure(th);
            }
            if (failure instanceof Result.Failure) {
                failure = "";
            }
            LegacyLogger.f66205a.c("PhrasePluralError", fc.i("Error Plural Phrase key : ", (String) failure, " - ", e2.getMessage()), null);
            quantityString = "";
        }
        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        return quantityString;
    }

    public static final String b(int i2, Composer composer, int i3) {
        Object failure;
        String quantityString;
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Context context = (Context) composer.k(AndroidCompositionLocals_androidKt.f9936b);
        try {
            quantityString = context.getResources().getQuantityString(i2, i3, Integer.valueOf(i3));
            quantityString.getClass();
        } catch (Resources.NotFoundException e2) {
            try {
                Result.Companion companion = Result.INSTANCE;
                failure = context.getResources().getResourceName(i2);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                failure = new Result.Failure(th);
            }
            if (failure instanceof Result.Failure) {
                failure = "";
            }
            LegacyLogger.f66205a.c("PhrasePluralError", fc.i("Error Plural Phrase key : ", (String) failure, " - ", e2.getMessage()), null);
            quantityString = "";
        }
        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        return quantityString;
    }
}
