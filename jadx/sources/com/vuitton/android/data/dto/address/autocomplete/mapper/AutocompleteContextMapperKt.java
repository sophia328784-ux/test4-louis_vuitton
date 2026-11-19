package com.vuitton.android.data.dto.address.autocomplete.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.address.autocomplete.AutocompleteContextDto;
import com.vuitton.foundation.model.domain.model.place.AutocompleteContext;
import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AutocompleteContextMapperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f44477a;

        static {
            int[] iArr = new int[AutocompleteContext.values().length];
            try {
                iArr[AutocompleteContext.ADDRESS_BOOK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AutocompleteContext.REGISTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AutocompleteContext.ONLINE_STORE_APPOINTMENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[AutocompleteContext.TRAVEL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[AutocompleteContext.FIND_IN_STORE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            f44477a = iArr;
        }
    }

    public static final AutocompleteContextDto a(AutocompleteContext autocompleteContext) {
        autocompleteContext.getClass();
        int i2 = WhenMappings.f44477a[autocompleteContext.ordinal()];
        if (i2 == 1) {
            return AutocompleteContextDto.ADDRESS_BOOK;
        }
        if (i2 == 2) {
            return AutocompleteContextDto.REGISTER;
        }
        if (i2 == 3) {
            return AutocompleteContextDto.ONLINE_STORE_APPOINTMENT;
        }
        if (i2 == 4) {
            return AutocompleteContextDto.TRAVEL;
        }
        if (i2 == 5) {
            return AutocompleteContextDto.FIND_IN_STORE;
        }
        v40.g();
        return null;
    }
}
