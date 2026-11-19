package com.vuitton.android.presentation.screen.account.addresseditor.error;

import com.vuitton.android.R;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import defpackage.tr;
import java.util.Locale;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addresseditor/error/AddressErrorMessageMapper;", "", "<init>", "()V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AddressErrorMessageMapper {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addresseditor/error/AddressErrorMessageMapper$Companion;", "", "", "ERROR_POSTAL_CODE", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public AddressErrorMessageMapper() {
    }

    public static StringResourceUiModel.ResName a(String str, String str2, String str3) {
        StringResourceUiModel resId;
        StringResourceUiModel text;
        str.getClass();
        if (str.equals("oregErrRegexpFormat_postalCode")) {
            resId = new StringResourceUiModel.ResId(R.string.mylv_save_address_wrong_postal_code, null, 2, null);
        } else {
            if (str3 == null || StringsKt.w(str3)) {
                if (str2 == null || !(!StringsKt.w(str2))) {
                    str2 = null;
                }
                if (str2 != null) {
                    text = new StringResourceUiModel.Text(str2);
                } else {
                    resId = new StringResourceUiModel.ResId(R.string.error_generic, null, 2, null);
                }
                String lowerCase = str.toLowerCase(Locale.ROOT);
                lowerCase.getClass();
                return new StringResourceUiModel.ResName(tr.g("mylv_atg_", ((String[]) StringsKt__StringsKt.split$default(lowerCase, new String[]{"_"}, false, 0, 6, null).toArray(new String[0]))[0]), null, text, 2, null);
            }
            resId = new StringResourceUiModel.Text(str3);
        }
        text = resId;
        String lowerCase2 = str.toLowerCase(Locale.ROOT);
        lowerCase2.getClass();
        return new StringResourceUiModel.ResName(tr.g("mylv_atg_", ((String[]) StringsKt__StringsKt.split$default(lowerCase2, new String[]{"_"}, false, 0, 6, null).toArray(new String[0]))[0]), null, text, 2, null);
    }
}
