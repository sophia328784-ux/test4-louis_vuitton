package com.vuitton.android.data.dto.profile;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.database.entity.address.AddressEntity;
import com.vuitton.android.data.database.entity.profile.PhoneNumberEntity;
import com.vuitton.android.data.database.entity.profile.ProfileEntity;
import com.vuitton.android.data.dto.profile.legacy.ContactabilityDto;
import com.vuitton.android.data.dto.profile.twist.KisaConsentsDto;
import com.vuitton.android.data.dto.profile.twist.UserConsentsDto;
import com.vuitton.foundation.model.domain.model.account.PhoneNumber;
import com.vuitton.foundation.model.domain.model.account.PhoneNumberType;
import com.vuitton.foundation.model.domain.model.account.consent.Contactability;
import com.vuitton.foundation.model.domain.model.profile.Address;
import com.vuitton.foundation.model.domain.model.profile.Profile;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ProfileMapperKt {
    public static final Profile.Id a(String str, String str2) {
        Profile.Id salesforceId;
        if (Intrinsics.c(str2, "atg")) {
            if (str == null) {
                str = null;
            }
            salesforceId = str != null ? new Profile.Id.AtgId(str) : null;
            if (salesforceId != null) {
                return salesforceId;
            }
        } else if (Intrinsics.c(str2, "salesforce")) {
            if (str == null) {
                str = null;
            }
            salesforceId = str != null ? new Profile.Id.SalesforceId(str) : null;
            if (salesforceId != null) {
                return salesforceId;
            }
        }
        return Profile.Id.Empty.f68176a;
    }

    public static final Profile b(ProfileEntity profileEntity) {
        PhoneNumber phoneNumber;
        profileEntity.getClass();
        Profile.Id idA = a(profileEntity.f43594a, profileEntity.f43595b);
        String str = profileEntity.f43596c;
        String str2 = profileEntity.d;
        String str3 = profileEntity.f43597e;
        String str4 = profileEntity.f43598f;
        String str5 = profileEntity.g;
        String str6 = profileEntity.f43599h;
        String str7 = profileEntity.f43600i;
        String str8 = profileEntity.f43602k;
        String str9 = profileEntity.l;
        String str10 = profileEntity.o;
        String str11 = str10 != null ? str10 : null;
        String str12 = profileEntity.n;
        String str13 = str12 != null ? str12 : null;
        String str14 = profileEntity.m;
        String str15 = str14 != null ? str14 : null;
        Boolean bool = profileEntity.p;
        List list = profileEntity.f43601j;
        list.getClass();
        List<AddressEntity> list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
        for (AddressEntity addressEntity : list2) {
            addressEntity.getClass();
            Boolean bool2 = bool;
            String str16 = addressEntity.f43576a;
            str16.getClass();
            arrayList.add(new Address(str16, addressEntity.f43577b, addressEntity.f43578c, addressEntity.d, addressEntity.f43579e, addressEntity.f43580f, addressEntity.g, addressEntity.f43581h, addressEntity.f43582i, addressEntity.f43583j, addressEntity.f43584k, addressEntity.l, addressEntity.m, addressEntity.n, addressEntity.o, addressEntity.p, addressEntity.q, addressEntity.r, addressEntity.s, addressEntity.t, addressEntity.u, addressEntity.v, addressEntity.w, addressEntity.x, addressEntity.y, addressEntity.z, addressEntity.A, addressEntity.B, addressEntity.C, addressEntity.D, addressEntity.E, addressEntity.F, addressEntity.G, addressEntity.H, addressEntity.I, addressEntity.J, addressEntity.K, null));
            bool = bool2;
        }
        Boolean bool3 = bool;
        PhoneNumberEntity phoneNumberEntity = profileEntity.q;
        if (phoneNumberEntity != null) {
            String str17 = phoneNumberEntity.f43590a;
            String str18 = phoneNumberEntity.f43591b;
            PhoneNumberType phoneNumberType = PhoneNumberType.MOBILE;
            if (!Intrinsics.c(str18, phoneNumberType.getValue())) {
                phoneNumberType = PhoneNumberType.HOME;
                if (!Intrinsics.c(str18, phoneNumberType.getValue())) {
                    phoneNumberType = PhoneNumberType.WORK;
                    if (!Intrinsics.c(str18, phoneNumberType.getValue())) {
                        phoneNumberType = PhoneNumberType.UNKNOWN;
                    }
                }
            }
            phoneNumber = new PhoneNumber(str17, phoneNumberType, phoneNumberEntity.f43592c);
        } else {
            phoneNumber = null;
        }
        return new Profile(idA, str, str2, str3, str4, str5, str6, str7, arrayList, str8, str9, str15, str13, str11, bool3, null, phoneNumber, profileEntity.r, profileEntity.s, null);
    }

    /* JADX WARN: Code duplicated, block: B:57:0x00c5  */
    public static final Profile c(ProfileDto profileDto, UserConsentsDto userConsentsDto, String str) {
        PhoneNumber phoneNumber;
        Object next;
        profileDto.getClass();
        userConsentsDto.getClass();
        str.getClass();
        Profile.Id idA = a(profileDto.f46682a, profileDto.f46683b);
        String str2 = profileDto.f46684c;
        String str3 = str2 == null ? "" : str2;
        String str4 = profileDto.d;
        String str5 = str4 == null ? "" : str4;
        String str6 = profileDto.f46686f;
        String str7 = profileDto.f46685e;
        String str8 = str7 == null ? "" : str7;
        String str9 = profileDto.g;
        String str10 = profileDto.f46688i;
        String str11 = str10 == null ? "" : str10;
        String str12 = profileDto.f46689j;
        String str13 = profileDto.f46690k;
        String str14 = profileDto.m;
        String str15 = str14 != null ? str14 : null;
        String str16 = profileDto.l;
        String str17 = str16 != null ? str16 : null;
        String str18 = profileDto.n;
        String str19 = str18 != null ? str18 : null;
        KisaConsentsDto kisaConsentsDto = userConsentsDto.f46750a;
        Boolean bool = kisaConsentsDto != null ? kisaConsentsDto.f46711b : null;
        List list = profileDto.p;
        if (list != null) {
            Iterator it = list.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!Intrinsics.c(((PhoneNumberDto) next).f46679b, PhoneNumberType.MOBILE.getValue()));
            PhoneNumberDto phoneNumberDto = (PhoneNumberDto) next;
            if (phoneNumberDto != null) {
                String str20 = phoneNumberDto.f46678a;
                String str21 = phoneNumberDto.f46679b;
                PhoneNumberType phoneNumberType = PhoneNumberType.MOBILE;
                if (!Intrinsics.c(str21, phoneNumberType.getValue())) {
                    phoneNumberType = PhoneNumberType.HOME;
                    if (!Intrinsics.c(str21, phoneNumberType.getValue())) {
                        phoneNumberType = PhoneNumberType.WORK;
                        if (!Intrinsics.c(str21, phoneNumberType.getValue())) {
                            phoneNumberType = PhoneNumberType.UNKNOWN;
                        }
                    }
                }
                phoneNumber = new PhoneNumber(str20, phoneNumberType, phoneNumberDto.f46680c);
            } else {
                phoneNumber = null;
            }
        } else {
            phoneNumber = null;
        }
        ContactabilityDto contactabilityDto = profileDto.o;
        Contactability contactability = contactabilityDto != null ? new Contactability(contactabilityDto.f46692a, contactabilityDto.f46693b, contactabilityDto.f46694c, contactabilityDto.d) : null;
        String str22 = profileDto.q;
        String str23 = profileDto.r;
        return new Profile(idA, str3, str5, str6, str8, str9, str11, str, null, str12, str13, str15, str17, str19, bool, contactability, phoneNumber, str22, str23 == null ? "" : str23, 256, null);
    }
}
