package com.vuitton.android.presentation.utils;

import com.vuitton.foundation.logger.LegacyLogger;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatchExtKt;
import java.text.NumberFormat;
import java.util.Currency;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/utils/PriceHelper;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class PriceHelper {
    public static String a(InAppDispatch inAppDispatch, String str, double d) {
        Object failure;
        String str2;
        inAppDispatch.getClass();
        str.getClass();
        try {
            Result.Companion companion = Result.INSTANCE;
            NumberFormat currencyInstance = NumberFormat.getCurrencyInstance();
            currencyInstance.setCurrency(Currency.getInstance(str));
            str2 = currencyInstance.format(d);
            failure = str2;
            if (InAppDispatchExtKt.i(inAppDispatch) && str.equals("TWD")) {
                failure = str2;
                str2.getClass();
                failure = StringsKt.J(str2, "$", "NT$");
            }
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        failure = str2;
        Throwable thA = Result.a(failure);
        if (thA == null) {
            String str3 = (String) failure;
            str3.getClass();
            return str3;
        }
        LegacyLogger.f66205a.c("ShippingGroupPriceError", thA.getMessage(), null);
        return "";
    }
}
