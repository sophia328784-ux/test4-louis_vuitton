package com.vuitton.android.data.dto.common.mapper;

import com.linkplay.medialib.FinalDataUtil;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sightcall.universal.media.offline.FileUtils;
import com.vuitton.android.data.dto.common.CookieDto;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CookieMapperKt {
    public static final Object a(CookieDto cookieDto) throws Throwable {
        Object failure;
        String strV;
        cookieDto.getClass();
        try {
            Result.Companion companion = Result.INSTANCE;
            StringBuilder sb = new StringBuilder();
            boolean z = cookieDto.f45255f;
            String str = cookieDto.f45253c;
            String str2 = cookieDto.d;
            if (z) {
                sb.append("https://");
            } else {
                sb.append(FinalDataUtil.HTTP_HEAD);
            }
            str.getClass();
            Character chValueOf = null;
            Character chValueOf2 = str.length() == 0 ? null : Character.valueOf(str.charAt(str.length() - 1));
            if (chValueOf2 != null && chValueOf2.charValue() == '/') {
                int length = str.length() - 1;
                if (length < 0) {
                    length = 0;
                }
                strV = StringsKt.V(length, str);
            } else {
                strV = str;
            }
            sb.append(strV);
            str2.getClass();
            if (str2.length() != 0) {
                chValueOf = Character.valueOf(str2.charAt(0));
            }
            if (!StringsKt.P(str, FileUtils.HIDDEN_PREFIX, false)) {
                if (chValueOf != null && chValueOf.charValue() == '/') {
                    sb.append(str2);
                } else {
                    sb.append("/".concat(str2));
                }
            }
            failure = new Result(sb.toString());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }

    public static final Object b(CookieDto cookieDto) throws Throwable {
        Object failure;
        cookieDto.getClass();
        try {
            Result.Companion companion = Result.INSTANCE;
            StringBuilder sb = new StringBuilder();
            sb.append(cookieDto.f45251a + "=" + cookieDto.f45252b);
            String strI = StringKtExtKt.i(cookieDto.d);
            if (strI != null) {
                sb.append("; Path=".concat(strI));
            }
            if (cookieDto.f45254e) {
                sb.append("; HttpOnly");
            }
            if (cookieDto.f45255f) {
                sb.append("; Secure");
            }
            failure = new Result(sb.toString());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }
}
