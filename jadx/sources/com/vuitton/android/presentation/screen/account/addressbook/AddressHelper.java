package com.vuitton.android.presentation.screen.account.addressbook;

import android.content.Context;
import com.vuitton.android.R;
import com.vuitton.android.core.extensions.SerializationExtKt;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModelKt;
import com.vuitton.android.presentation.screen.account.addresseditor.legacy.AddressStateUiModel;
import com.vuitton.android.presentation.screen.account.profile.ProfileHelper;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatchExtKt;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.RegionCode;
import com.vuitton.foundation.model.domain.model.profile.Country;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.tr;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addressbook/AddressHelper;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AddressHelper {
    public static String a(String str, String str2, String str3) {
        return (str2 == null || str2.length() <= 0) ? str : tr.h(str, str2, str3);
    }

    public static String b(Context context, Json json, String str) {
        Object next;
        context.getClass();
        json.getClass();
        str.getClass();
        if (str.length() <= 0) {
            return "";
        }
        InputStream inputStreamOpenRawResource = context.getResources().openRawResource(R.raw.countries);
        inputStreamOpenRawResource.getClass();
        Iterator it = ((List) json.b(new ArrayListSerializer(Country.INSTANCE.serializer()), SerializationExtKt.a(inputStreamOpenRawResource))).iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.c(((Country) next).f68160a, str));
        Country country = (Country) next;
        String str2 = country != null ? country.f68161b : null;
        return str2 == null ? "" : str2;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00c6  */
    public static String c(Context context, Json json, InAppDispatch inAppDispatch, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11) {
        context.getClass();
        json.getClass();
        inAppDispatch.getClass();
        str.getClass();
        str2.getClass();
        cj.z(str6, str7, str11);
        RegionCode.f67513b.getClass();
        String strA = RegionCode.Companion.a(str7);
        if (!InAppDispatchExtKt.d(inAppDispatch)) {
            if (!(strA == null ? false : strA.equals(RegionCode.q))) {
                if (!InAppDispatchExtKt.i(inAppDispatch)) {
                    if (!(strA == null ? false : strA.equals(RegionCode.B))) {
                        String strA2 = a(a(a(a((str11.length() > 0 ? str11.concat(" ") : "") + str + " " + str2 + "\n", str3, "\n"), str4, "\n"), str5, "\n"), str6, "");
                        String strA3 = RegionCode.Companion.a(str7);
                        if (strA3 == null ? false : strA3.equals(RegionCode.m)) {
                            strA2 = a(strA2, ", ".concat(str8), "");
                        } else {
                            if (strA3 == null ? false : strA3.equals(RegionCode.F)) {
                                strA2 = a(strA2, ", ".concat(str8), "");
                            } else {
                                if (strA3 != null ? strA3.equals(RegionCode.g) : false) {
                                    strA2 = a(strA2, ", ".concat(str8), "");
                                }
                            }
                        }
                        return d21.j(a(a(strA2, " ".concat(str9), "") + "\n", str10, ""), b(context, json, str7));
                    }
                }
                return a(a(a(a(a(a(d21.k(a("", "", "\n"), str2, " ", str).concat(str11.length() > 0 ? fc.h(" ", str11, "\n") : "\n"), b(context, json, str7), "\n"), str6, "\n"), str8, "\n"), str3, "\n"), str4, "\n"), str9, "");
            }
        }
        return d21.j(a(a(a(a(a(a(d21.k(str11.length() > 0 ? str11.concat(" ") : "", str2, str, "\n"), str9, "\n"), e(context, json, str8), "\n"), str6, "\n"), str3, "\n"), str4, "\n"), str5, "\n"), b(context, json, str7));
    }

    public static String d(Context context, Json json, InAppDispatch inAppDispatch, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11) {
        String str12;
        String strA;
        context.getClass();
        json.getClass();
        inAppDispatch.getClass();
        str.getClass();
        str2.getClass();
        cj.z(str3, str7, str8);
        List list = ProfileHelper.f52681a;
        if (StringKtExtKt.g(str)) {
            str12 = str;
            if (CollectionsKt.u(ProfileHelper.f52684e, str12)) {
                strA = "";
            }
            return c(context, json, inAppDispatch, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11, strA);
        }
        str12 = str;
        strA = StringResourceUiModelKt.a(ProfileHelper.a(str12), context);
        return c(context, json, inAppDispatch, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11, strA);
    }

    public static String e(Context context, Json json, String str) {
        Object next;
        String str2;
        AddressStateUiModel addressStateUiModel;
        context.getClass();
        json.getClass();
        str.getClass();
        if (str.length() <= 0) {
            return "";
        }
        InputStream inputStreamOpenRawResource = context.getResources().openRawResource(R.raw.states_jp);
        inputStreamOpenRawResource.getClass();
        Iterator it = ((List) json.b(new ArrayListSerializer(AddressStateUiModel.INSTANCE.serializer()), SerializationExtKt.a(inputStreamOpenRawResource))).iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            addressStateUiModel = (AddressStateUiModel) next;
            if (Intrinsics.c(addressStateUiModel.f52260b, str)) {
                break;
            }
        } while (!Intrinsics.c(addressStateUiModel.f52261c, str));
        AddressStateUiModel addressStateUiModel2 = (AddressStateUiModel) next;
        return (addressStateUiModel2 == null || (str2 = addressStateUiModel2.f52261c) == null) ? str : str2;
    }
}
