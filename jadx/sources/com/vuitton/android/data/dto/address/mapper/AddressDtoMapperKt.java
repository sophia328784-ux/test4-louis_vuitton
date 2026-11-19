package com.vuitton.android.data.dto.address.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.account.address.model.PhonePrimacy;
import com.vuitton.android.data.dto.address.AddressCreationDto;
import com.vuitton.android.data.dto.address.AddressDto;
import com.vuitton.android.data.dto.profile.PhoneNumberDto;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import com.vuitton.foundation.model.domain.model.account.address.AddressRequestBody;
import com.vuitton.foundation.model.domain.model.profile.Address;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Triple;
import kotlin.collections.CollectionsKt;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AddressDtoMapperKt {
    public static final Triple a(List list, PhonePrimacy phonePrimacy) {
        return list.size() > phonePrimacy.getIndex() ? new Triple(((PhoneNumberDto) list.get(phonePrimacy.getIndex())).f46678a, ((PhoneNumberDto) list.get(phonePrimacy.getIndex())).f46680c, ((PhoneNumberDto) list.get(phonePrimacy.getIndex())).f46679b) : new Triple(new String(), new String(), new String());
    }

    public static final Address b(AddressDto addressDto) {
        String value;
        String value2;
        String value3;
        addressDto.getClass();
        String str = addressDto.f44460a;
        List list = addressDto.v;
        String str2 = str == null ? "" : str;
        boolean z = addressDto.f44461b;
        String str3 = addressDto.g;
        String str4 = addressDto.u;
        String str5 = str4 == null ? "" : str4;
        String str6 = addressDto.q;
        String str7 = str6 == null ? "" : str6;
        String str8 = addressDto.r;
        String str9 = str8 == null ? "" : str8;
        String str10 = addressDto.s;
        String str11 = addressDto.t;
        String str12 = addressDto.f44462c;
        String str13 = addressDto.d;
        String str14 = addressDto.f44463e;
        String str15 = addressDto.f44466i;
        String str16 = addressDto.f44467j;
        String str17 = addressDto.n;
        String str18 = addressDto.m;
        String str19 = str18 == null ? "" : str18;
        String str20 = addressDto.f44464f;
        String str21 = addressDto.l;
        String str22 = addressDto.f44468k;
        String str23 = addressDto.o;
        String str24 = str23 == null ? "" : str23;
        String str25 = addressDto.p;
        String str26 = str25 == null ? "" : str25;
        String str27 = list != null ? (String) a(list, PhonePrimacy.MAIN).f71716b : null;
        String str28 = str27 == null ? "" : str27;
        String str29 = list != null ? (String) a(list, PhonePrimacy.MAIN).f71717c : null;
        String str30 = str29 == null ? "" : str29;
        if (list == null || (value = (String) a(list, PhonePrimacy.MAIN).d) == null) {
            value = PhonePrimacy.MAIN.getPhoneType().getValue();
        }
        String str31 = value;
        String str32 = new String();
        String str33 = new String();
        String str34 = list != null ? (String) a(list, PhonePrimacy.OTHER).f71716b : null;
        String str35 = list != null ? (String) a(list, PhonePrimacy.OTHER).f71717c : null;
        if (list == null || (value2 = (String) a(list, PhonePrimacy.OTHER).d) == null) {
            value2 = PhonePrimacy.OTHER.getPhoneType().getValue();
        }
        String str36 = value2;
        String str37 = new String();
        String str38 = new String();
        String str39 = list != null ? (String) a(list, PhonePrimacy.THIRD).f71716b : null;
        String str40 = list != null ? (String) a(list, PhonePrimacy.THIRD).f71717c : null;
        if (list == null || (value3 = (String) a(list, PhonePrimacy.THIRD).d) == null) {
            value3 = PhonePrimacy.THIRD.getPhoneType().getValue();
        }
        return new Address(str2, z, str3, str5, str7, str9, str10, str11, str12, str13, str14, str15, str16, str17, str19, str20, str21, str22, str24, str26, addressDto.f44465h, null, str28, str30, str31, str32, str33, str34, str35, str36, str37, str38, str39, str40, value3, new String(), addressDto.w, PKIFailureInfo.badSenderNonce, 0, null);
    }

    public static final ArrayList c(List list) {
        list.getClass();
        List list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(b((AddressDto) it.next()));
        }
        return arrayList;
    }

    public static final AddressCreationDto d(AddressRequestBody addressRequestBody) {
        addressRequestBody.getClass();
        boolean z = addressRequestBody.f66253c;
        String str = addressRequestBody.f66257i;
        String str2 = addressRequestBody.f66258j;
        String str3 = addressRequestBody.f66259k;
        String str4 = addressRequestBody.p;
        String str5 = addressRequestBody.f66252b;
        String str6 = addressRequestBody.l;
        String str7 = addressRequestBody.m;
        String str8 = addressRequestBody.q;
        String str9 = addressRequestBody.r;
        String str10 = addressRequestBody.o;
        String str11 = addressRequestBody.n;
        String str12 = addressRequestBody.s;
        String str13 = addressRequestBody.f66254e;
        String str14 = addressRequestBody.f66255f;
        String str15 = addressRequestBody.g;
        String str16 = addressRequestBody.f66256h;
        String str17 = addressRequestBody.d;
        String str18 = addressRequestBody.t;
        if (str18 == null) {
            str18 = "";
        }
        String str19 = addressRequestBody.v;
        if (str19 == null) {
            str19 = "";
        }
        String str20 = addressRequestBody.u;
        if (str20 == null) {
            str20 = "";
        }
        PhoneNumberDto phoneNumberDto = new PhoneNumberDto(str18, str19, str20);
        String str21 = addressRequestBody.w;
        if (str21 == null) {
            str21 = "";
        }
        String str22 = addressRequestBody.y;
        if (str22 == null) {
            str22 = "";
        }
        String str23 = addressRequestBody.x;
        if (str23 == null) {
            str23 = "";
        }
        PhoneNumberDto phoneNumberDto2 = new PhoneNumberDto(str21, str22, str23);
        String str24 = addressRequestBody.z;
        if (str24 == null) {
            str24 = "";
        }
        String str25 = addressRequestBody.B;
        if (str25 == null) {
            str25 = "";
        }
        String str26 = addressRequestBody.A;
        if (str26 == null) {
            str26 = "";
        }
        List listP = CollectionsKt.P(phoneNumberDto, phoneNumberDto2, new PhoneNumberDto(str24, str25, str26));
        ArrayList arrayList = new ArrayList();
        for (Object obj : listP) {
            PhoneNumberDto phoneNumberDto3 = (PhoneNumberDto) obj;
            if (StringKtExtKt.g(phoneNumberDto3.f46678a) && StringKtExtKt.g(phoneNumberDto3.f46679b) && StringKtExtKt.g(phoneNumberDto3.f46680c)) {
                arrayList.add(obj);
            }
        }
        return new AddressCreationDto(z, str, str2, str3, str4, str5, null, str6, str7, str9, str8, str10, str11, str12, str13, str14, str15, str16, str17, arrayList);
    }
}
