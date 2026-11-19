package com.vuitton.android.presentation.screen.pdp;

import android.app.Activity;
import com.vuitton.android.presentation.extensions.ActivityExtKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductAvailabilityUiModel;
import com.vuitton.foundation.logger.LegacyLogger;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PdpAddToCartCommonKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f61090a;

        static {
            int[] iArr = new int[ProductAvailabilityUiModel.values().length];
            try {
                iArr[ProductAvailabilityUiModel.AddToCart.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ProductAvailabilityUiModel.DisplayBackInStock.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ProductAvailabilityUiModel.CallForAvailability.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ProductAvailabilityUiModel.DisplayNotECommerceInfo.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ProductAvailabilityUiModel.GoToWebsiteProductPage.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ProductAvailabilityUiModel.GoToEmailUsWebsite.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            f61090a = iArr;
        }
    }

    public static final void a(Activity activity, String str) {
        Object failure;
        try {
            Result.Companion companion = Result.INSTANCE;
            if (str != null) {
                ActivityExtKt.f(activity, str);
                failure = Unit.f71739a;
            } else {
                failure = null;
            }
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            String message = thA.getMessage();
            if (message == null) {
                message = "";
            }
            LegacyLogger.f66205a.c("PDP", message, thA);
        }
    }
}
