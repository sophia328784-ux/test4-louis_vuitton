package com.vuitton.android.presentation.screen.account.addressbook.mappers;

import com.vuitton.android.R;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.screen.account.addressbook.models.AccountAddressUiModel;
import com.vuitton.foundation.model.domain.model.profile.Address;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AddressMapperKt {
    public static final AccountAddressUiModel a(Address address) {
        String str;
        String str2;
        String str3;
        String str4;
        StringResourceUiModel text;
        address.getClass();
        String str5 = address.f68151a;
        boolean z = address.f68152b;
        String str6 = address.f68153c;
        if (str6 == null) {
            str2 = str6;
            str = "";
        } else {
            str = str6;
            str2 = str;
        }
        String str7 = address.d;
        String str8 = address.f68154e;
        String str9 = address.f68155f;
        String str10 = address.f68157i;
        if (str10 == null) {
            str10 = "";
        }
        String str11 = address.f68158j;
        if (str11 == null) {
            str11 = "";
        }
        String str12 = address.f68159k;
        if (str12 == null) {
            str12 = "";
        }
        String str13 = address.p;
        if (str13 == null) {
            str13 = "";
            str3 = str13;
        } else {
            str3 = "";
        }
        String str14 = str11;
        String str15 = address.o;
        String str16 = address.n;
        if (str16 == null) {
            str16 = str3;
        }
        String str17 = address.q;
        if (str17 == null) {
            str17 = str3;
            str4 = str17;
        } else {
            str4 = str3;
        }
        String str18 = address.s;
        String str19 = str12;
        String str20 = str16;
        String str21 = address.t;
        String str22 = address.w;
        if (z) {
            text = new StringResourceUiModel.ResId(R.string.profile_main_address, null, 2, null);
        } else {
            if (str2 == null) {
                str2 = str4;
            }
            text = new StringResourceUiModel.Text(str2);
        }
        return new AccountAddressUiModel(str5, z, str, str7, str8, str9, str10, str14, str19, str13, str15, str20, str17, str18, str21, str22, text);
    }
}
