package com.vuitton.android.presentation.screen.account.profile;

import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceAddress;
import com.vuitton.foundation.model.domain.model.profile.Address;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class MapperKt {
    public static final CareServiceAddress a(AddressUiModel addressUiModel) {
        String str;
        String str2;
        String str3 = addressUiModel.d;
        String str4 = addressUiModel.f52676f;
        String str5 = addressUiModel.g;
        String str6 = addressUiModel.q;
        if (str6 == null) {
            str2 = "";
            str = str2;
        } else {
            str = str6;
            str2 = "";
        }
        String str7 = addressUiModel.f52673b;
        str7.getClass();
        String str8 = addressUiModel.f52679j;
        if (str8 == null) {
            str8 = str2;
        }
        String str9 = addressUiModel.f52680k;
        String str10 = addressUiModel.l;
        String str11 = addressUiModel.r;
        return new CareServiceAddress(str7, str3, str8, str9, str10, str, str11, str11, addressUiModel.p, addressUiModel.u, addressUiModel.t, str4, str5, null);
    }

    public static final Address b(AddressUiModel addressUiModel) {
        addressUiModel.getClass();
        String str = addressUiModel.f52673b;
        str.getClass();
        return new Address(str, addressUiModel.f52674c, addressUiModel.d, addressUiModel.f52675e, addressUiModel.f52676f, addressUiModel.g, addressUiModel.f52677h, addressUiModel.f52678i, addressUiModel.f52679j, addressUiModel.f52680k, addressUiModel.l, addressUiModel.m, addressUiModel.n, addressUiModel.o, addressUiModel.p, addressUiModel.q, addressUiModel.r, addressUiModel.s, addressUiModel.t, addressUiModel.u, null, addressUiModel.v, addressUiModel.w, addressUiModel.x, addressUiModel.y, addressUiModel.z, addressUiModel.A, addressUiModel.B, addressUiModel.C, addressUiModel.D, addressUiModel.E, addressUiModel.F, addressUiModel.G, addressUiModel.H, addressUiModel.I, addressUiModel.J, addressUiModel.K, 1048576, 0, null);
    }

    public static final AddressUiModel c(Address address) {
        address.getClass();
        return new AddressUiModel(address.f68151a, address.f68152b, address.f68153c, address.d, address.f68154e, address.f68155f, address.g, address.f68156h, address.f68157i, address.f68158j, address.f68159k, address.l, address.m, address.n, address.o, address.p, address.q, address.r, address.s, address.t, address.v, address.w, address.x, address.y, address.z, address.A, address.B, address.C, address.D, address.E, address.F, address.G, address.H, address.I, address.J, address.K);
    }
}
