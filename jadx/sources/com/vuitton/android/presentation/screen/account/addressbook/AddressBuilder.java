package com.vuitton.android.presentation.screen.account.addressbook;

import android.content.Context;
import com.vuitton.android.presentation.screen.account.addressbook.models.AccountAddressUiModel;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatchExtKt;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.RegionCode;
import java.util.StringJoiner;
import kotlin.Metadata;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBuilder;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class AddressBuilder {
    public static String a(Context context, Json json, InAppDispatch inAppDispatch, AccountAddressUiModel accountAddressUiModel) throws Throwable {
        context.getClass();
        json.getClass();
        inAppDispatch.getClass();
        if (accountAddressUiModel == null) {
            return "";
        }
        String str = accountAddressUiModel.f52190i;
        String str2 = accountAddressUiModel.n;
        String str3 = accountAddressUiModel.o;
        String str4 = accountAddressUiModel.f52189h;
        String str5 = accountAddressUiModel.g;
        String str6 = accountAddressUiModel.f52192k;
        String str7 = accountAddressUiModel.m;
        String str8 = accountAddressUiModel.f52191j;
        boolean z = str2.length() > 0;
        RegionCode.f67513b.getClass();
        String strA = RegionCode.Companion.a(str2);
        if (!z || !InAppDispatchExtKt.d(inAppDispatch)) {
            if (!(strA == null ? false : strA.equals(RegionCode.q))) {
                if (!z || !InAppDispatchExtKt.i(inAppDispatch)) {
                    if (!(strA != null ? strA.equals(RegionCode.B) : false)) {
                        StringJoiner stringJoiner = new StringJoiner(" ");
                        StringKtExtKt.b(stringJoiner, str5);
                        StringKtExtKt.b(stringJoiner, str4);
                        StringKtExtKt.b(stringJoiner, str);
                        StringJoiner stringJoiner2 = new StringJoiner(" ");
                        StringKtExtKt.b(stringJoiner2, str7);
                        StringKtExtKt.b(stringJoiner2, str6);
                        StringKtExtKt.b(stringJoiner2, accountAddressUiModel.l);
                        StringKtExtKt.b(stringJoiner2, str8);
                        StringJoiner stringJoiner3 = new StringJoiner("\n");
                        String string = stringJoiner.toString();
                        string.getClass();
                        StringKtExtKt.b(stringJoiner3, string);
                        String string2 = stringJoiner2.toString();
                        string2.getClass();
                        StringKtExtKt.b(stringJoiner3, string2);
                        StringKtExtKt.b(stringJoiner3, str3);
                        String string3 = stringJoiner3.toString();
                        string3.getClass();
                        return string3;
                    }
                }
                StringJoiner stringJoiner4 = new StringJoiner(" ");
                StringKtExtKt.b(stringJoiner4, str6);
                StringKtExtKt.b(stringJoiner4, str7);
                StringJoiner stringJoiner5 = new StringJoiner(" ");
                StringKtExtKt.b(stringJoiner5, str5);
                StringKtExtKt.b(stringJoiner5, str4);
                StringJoiner stringJoiner6 = new StringJoiner(" ");
                StringKtExtKt.b(stringJoiner6, str8);
                StringJoiner stringJoiner7 = new StringJoiner("\n");
                StringKtExtKt.b(stringJoiner7, str3);
                String string4 = stringJoiner4.toString();
                string4.getClass();
                StringKtExtKt.b(stringJoiner7, string4);
                String string5 = stringJoiner5.toString();
                string5.getClass();
                StringKtExtKt.b(stringJoiner7, string5);
                String string6 = stringJoiner6.toString();
                string6.getClass();
                StringKtExtKt.b(stringJoiner7, string6);
                String string7 = stringJoiner7.toString();
                string7.getClass();
                return string7;
            }
        }
        StringJoiner stringJoiner8 = new StringJoiner(" ");
        StringKtExtKt.b(stringJoiner8, str8);
        String strJ = StringKtExtKt.j(str7);
        if (strJ != null) {
            stringJoiner8.add(AddressHelper.e(context, json, strJ));
        }
        StringKtExtKt.b(stringJoiner8, str6);
        StringJoiner stringJoiner9 = new StringJoiner(" ");
        StringKtExtKt.b(stringJoiner9, str5);
        StringKtExtKt.b(stringJoiner9, str4);
        StringKtExtKt.b(stringJoiner9, str);
        StringJoiner stringJoiner10 = new StringJoiner("\n");
        String string8 = stringJoiner8.toString();
        string8.getClass();
        StringKtExtKt.b(stringJoiner10, string8);
        String string9 = stringJoiner9.toString();
        string9.getClass();
        StringKtExtKt.b(stringJoiner10, string9);
        StringKtExtKt.b(stringJoiner10, str3);
        String string10 = stringJoiner10.toString();
        string10.getClass();
        return string10;
    }
}
