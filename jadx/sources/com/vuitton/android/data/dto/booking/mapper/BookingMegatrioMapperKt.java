package com.vuitton.android.data.dto.booking.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.booking.BookingExternalContentDto;
import com.vuitton.android.data.dto.booking.BookingExternalContentTypeDto;
import com.vuitton.android.data.dto.booking.BookingMegatrioDto;
import com.vuitton.foundation.model.domain.model.booking.BookingExternalContent;
import com.vuitton.foundation.model.domain.model.booking.BookingExternalContentType;
import com.vuitton.foundation.model.domain.model.booking.BookingMegatrio;
import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BookingMegatrioMapperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f44792a;

        static {
            int[] iArr = new int[BookingExternalContentTypeDto.values().length];
            try {
                iArr[BookingExternalContentTypeDto.PDF.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BookingExternalContentTypeDto.WEBVIEW.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f44792a = iArr;
        }
    }

    public static final BookingMegatrio a(BookingMegatrioDto bookingMegatrioDto) {
        BookingExternalContentType bookingExternalContentType;
        bookingMegatrioDto.getClass();
        BookingExternalContentDto bookingExternalContentDto = bookingMegatrioDto.f44730a;
        bookingExternalContentDto.getClass();
        BookingExternalContentTypeDto bookingExternalContentTypeDto = bookingExternalContentDto.f44653a;
        bookingExternalContentTypeDto.getClass();
        int i2 = WhenMappings.f44792a[bookingExternalContentTypeDto.ordinal()];
        if (i2 == 1) {
            bookingExternalContentType = BookingExternalContentType.PDF;
        } else {
            if (i2 != 2) {
                v40.g();
                return null;
            }
            bookingExternalContentType = BookingExternalContentType.WEBVIEW;
        }
        return new BookingMegatrio(new BookingExternalContent(bookingExternalContentType, bookingExternalContentDto.f44654b));
    }
}
