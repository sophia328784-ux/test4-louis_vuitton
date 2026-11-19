package com.vuitton.android.data.dto.config.mapper;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.config.AbTestDto;
import com.vuitton.android.data.dto.config.CertificateConfigDto;
import com.vuitton.android.data.dto.config.DistantRepairsConfigDto;
import com.vuitton.android.data.dto.config.FeaturesConfigDto;
import com.vuitton.android.data.exception.MappingException;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import com.vuitton.foundation.model.domain.model.config.AbTest;
import com.vuitton.foundation.model.domain.model.config.CertificateConfig;
import com.vuitton.foundation.model.domain.model.config.DistantRepairsConfig;
import com.vuitton.foundation.model.domain.model.config.FeaturesConfig;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AppConfigMapperKt {
    public static final CertificateConfig a(CertificateConfigDto certificateConfigDto) throws MappingException {
        String strB = StringExtKt.b(StringKtExtKt.a(certificateConfigDto.f45390a));
        if (strB == null) {
            throw new MappingException("Unable to map the app config: InvalidDiamondApiUrl");
        }
        String strB2 = StringExtKt.b(certificateConfigDto.f45391b);
        if (strB2 == null) {
            strB2 = "https://api-ppf.louisvuitton.com/lva-eu/lvapp-product-eapi/v1";
        }
        return new CertificateConfig(strB, strB2, StringExtKt.b(StringKtExtKt.a(certificateConfigDto.f45392c)));
    }

    public static final DistantRepairsConfig b(DistantRepairsConfigDto distantRepairsConfigDto) throws MappingException {
        String str = distantRepairsConfigDto.f45394a;
        String str2 = (str == null || !Pattern.compile("^[_A-Za-z0-9-+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$").matcher(str).matches()) ? null : str;
        String str3 = distantRepairsConfigDto.f45396c;
        String str4 = distantRepairsConfigDto.f45395b;
        String str5 = distantRepairsConfigDto.d;
        String strB = StringExtKt.b(StringKtExtKt.a(distantRepairsConfigDto.f45397e));
        if (strB != null) {
            return new DistantRepairsConfig(str2, str3, str4, str5, strB, StringExtKt.b(distantRepairsConfigDto.f45398f), StringExtKt.b(distantRepairsConfigDto.g), distantRepairsConfigDto.f45399h, distantRepairsConfigDto.f45400i, distantRepairsConfigDto.f45401j, distantRepairsConfigDto.f45402k);
        }
        throw new MappingException("Unable to map the app config: InvalidRepairsApiUrl");
    }

    public static final FeaturesConfig c(FeaturesConfigDto featuresConfigDto) {
        Boolean bool = featuresConfigDto.f45404a;
        boolean zBooleanValue = bool != null ? bool.booleanValue() : false;
        Boolean bool2 = featuresConfigDto.f45405b;
        boolean zBooleanValue2 = bool2 != null ? bool2.booleanValue() : false;
        Boolean bool3 = featuresConfigDto.f45406c;
        boolean zBooleanValue3 = bool3 != null ? bool3.booleanValue() : false;
        Boolean bool4 = featuresConfigDto.d;
        boolean zBooleanValue4 = bool4 != null ? bool4.booleanValue() : false;
        Boolean bool5 = featuresConfigDto.f45408f;
        boolean zBooleanValue5 = bool5 != null ? bool5.booleanValue() : false;
        Boolean bool6 = featuresConfigDto.f45407e;
        boolean zBooleanValue6 = bool6 != null ? bool6.booleanValue() : false;
        Boolean bool7 = featuresConfigDto.g;
        boolean zBooleanValue7 = bool7 != null ? bool7.booleanValue() : false;
        Boolean bool8 = featuresConfigDto.f45409h;
        boolean zBooleanValue8 = bool8 != null ? bool8.booleanValue() : false;
        Boolean bool9 = featuresConfigDto.f45410i;
        boolean zBooleanValue9 = bool9 != null ? bool9.booleanValue() : false;
        Boolean bool10 = featuresConfigDto.f45411j;
        boolean zBooleanValue10 = bool10 != null ? bool10.booleanValue() : false;
        Boolean bool11 = featuresConfigDto.f45412k;
        boolean zBooleanValue11 = bool11 != null ? bool11.booleanValue() : false;
        Boolean bool12 = featuresConfigDto.l;
        boolean zBooleanValue12 = bool12 != null ? bool12.booleanValue() : false;
        Boolean bool13 = featuresConfigDto.m;
        boolean zBooleanValue13 = bool13 != null ? bool13.booleanValue() : false;
        Boolean bool14 = featuresConfigDto.n;
        boolean zBooleanValue14 = bool14 != null ? bool14.booleanValue() : false;
        Boolean bool15 = featuresConfigDto.o;
        boolean zBooleanValue15 = bool15 != null ? bool15.booleanValue() : false;
        Boolean bool16 = featuresConfigDto.p;
        boolean zBooleanValue16 = bool16 != null ? bool16.booleanValue() : false;
        Boolean bool17 = featuresConfigDto.q;
        boolean zBooleanValue17 = bool17 != null ? bool17.booleanValue() : false;
        Boolean bool18 = featuresConfigDto.r;
        boolean zBooleanValue18 = bool18 != null ? bool18.booleanValue() : false;
        Boolean bool19 = featuresConfigDto.s;
        boolean zBooleanValue19 = bool19 != null ? bool19.booleanValue() : false;
        Boolean bool20 = featuresConfigDto.t;
        boolean zBooleanValue20 = bool20 != null ? bool20.booleanValue() : false;
        Boolean bool21 = featuresConfigDto.u;
        boolean zBooleanValue21 = bool21 != null ? bool21.booleanValue() : false;
        Boolean bool22 = featuresConfigDto.v;
        boolean zBooleanValue22 = bool22 != null ? bool22.booleanValue() : false;
        Boolean bool23 = featuresConfigDto.w;
        boolean zBooleanValue23 = bool23 != null ? bool23.booleanValue() : false;
        Boolean bool24 = featuresConfigDto.x;
        boolean zBooleanValue24 = bool24 != null ? bool24.booleanValue() : false;
        Boolean bool25 = featuresConfigDto.y;
        boolean zBooleanValue25 = bool25 != null ? bool25.booleanValue() : false;
        Boolean bool26 = featuresConfigDto.z;
        boolean zBooleanValue26 = bool26 != null ? bool26.booleanValue() : false;
        Boolean bool27 = featuresConfigDto.A;
        boolean zBooleanValue27 = bool27 != null ? bool27.booleanValue() : false;
        Boolean bool28 = featuresConfigDto.B;
        boolean zBooleanValue28 = bool28 != null ? bool28.booleanValue() : false;
        Boolean bool29 = featuresConfigDto.C;
        boolean zBooleanValue29 = bool29 != null ? bool29.booleanValue() : false;
        Boolean bool30 = featuresConfigDto.D;
        boolean zBooleanValue30 = bool30 != null ? bool30.booleanValue() : false;
        Boolean bool31 = featuresConfigDto.E;
        boolean zBooleanValue31 = bool31 != null ? bool31.booleanValue() : false;
        Boolean bool32 = featuresConfigDto.F;
        boolean zBooleanValue32 = bool32 != null ? bool32.booleanValue() : false;
        Boolean bool33 = featuresConfigDto.G;
        boolean zBooleanValue33 = bool33 != null ? bool33.booleanValue() : false;
        Boolean bool34 = featuresConfigDto.H;
        boolean zBooleanValue34 = bool34 != null ? bool34.booleanValue() : false;
        Boolean bool35 = featuresConfigDto.I;
        boolean zBooleanValue35 = bool35 != null ? bool35.booleanValue() : false;
        Boolean bool36 = featuresConfigDto.J;
        boolean zBooleanValue36 = bool36 != null ? bool36.booleanValue() : false;
        Boolean bool37 = featuresConfigDto.K;
        boolean zBooleanValue37 = bool37 != null ? bool37.booleanValue() : false;
        Boolean bool38 = featuresConfigDto.L;
        boolean zBooleanValue38 = bool38 != null ? bool38.booleanValue() : false;
        Boolean bool39 = featuresConfigDto.M;
        boolean zBooleanValue39 = bool39 != null ? bool39.booleanValue() : false;
        Boolean bool40 = featuresConfigDto.N;
        boolean zBooleanValue40 = bool40 != null ? bool40.booleanValue() : false;
        Boolean bool41 = featuresConfigDto.O;
        boolean zBooleanValue41 = bool41 != null ? bool41.booleanValue() : false;
        Boolean bool42 = featuresConfigDto.P;
        boolean z = bool42 != null ? !bool42.booleanValue() : false;
        Boolean bool43 = featuresConfigDto.Q;
        boolean zBooleanValue42 = bool43 != null ? bool43.booleanValue() : false;
        Boolean bool44 = featuresConfigDto.R;
        boolean zBooleanValue43 = bool44 != null ? bool44.booleanValue() : false;
        Boolean bool45 = featuresConfigDto.S;
        boolean zBooleanValue44 = bool45 != null ? bool45.booleanValue() : false;
        Boolean bool46 = featuresConfigDto.T;
        boolean zBooleanValue45 = bool46 != null ? bool46.booleanValue() : false;
        Boolean bool47 = featuresConfigDto.V;
        boolean zBooleanValue46 = bool47 != null ? bool47.booleanValue() : false;
        Boolean bool48 = featuresConfigDto.W;
        boolean zBooleanValue47 = bool48 != null ? bool48.booleanValue() : false;
        Boolean bool49 = featuresConfigDto.X;
        boolean zBooleanValue48 = bool49 != null ? bool49.booleanValue() : false;
        Boolean bool50 = featuresConfigDto.U;
        boolean zBooleanValue49 = bool50 != null ? bool50.booleanValue() : false;
        Boolean bool51 = featuresConfigDto.Y;
        boolean zBooleanValue50 = bool51 != null ? bool51.booleanValue() : false;
        Boolean bool52 = featuresConfigDto.Z;
        boolean zBooleanValue51 = bool52 != null ? bool52.booleanValue() : false;
        Boolean bool53 = featuresConfigDto.a0;
        boolean zBooleanValue52 = bool53 != null ? bool53.booleanValue() : false;
        Boolean bool54 = featuresConfigDto.b0;
        boolean zBooleanValue53 = bool54 != null ? bool54.booleanValue() : false;
        Boolean bool55 = featuresConfigDto.c0;
        boolean zBooleanValue54 = bool55 != null ? bool55.booleanValue() : false;
        Boolean bool56 = featuresConfigDto.d0;
        boolean zBooleanValue55 = bool56 != null ? bool56.booleanValue() : false;
        Boolean bool57 = featuresConfigDto.e0;
        boolean zBooleanValue56 = bool57 != null ? bool57.booleanValue() : false;
        Boolean bool58 = featuresConfigDto.f0;
        boolean zBooleanValue57 = bool58 != null ? bool58.booleanValue() : false;
        Boolean bool59 = featuresConfigDto.g0;
        boolean zBooleanValue58 = bool59 != null ? bool59.booleanValue() : false;
        Boolean bool60 = featuresConfigDto.h0;
        boolean zBooleanValue59 = bool60 != null ? bool60.booleanValue() : false;
        Boolean bool61 = featuresConfigDto.i0;
        boolean zBooleanValue60 = bool61 != null ? bool61.booleanValue() : false;
        Boolean bool62 = featuresConfigDto.j0;
        boolean zBooleanValue61 = bool62 != null ? bool62.booleanValue() : false;
        Boolean bool63 = featuresConfigDto.k0;
        boolean zBooleanValue62 = bool63 != null ? bool63.booleanValue() : false;
        Boolean bool64 = featuresConfigDto.l0;
        boolean zBooleanValue63 = bool64 != null ? bool64.booleanValue() : false;
        Boolean bool65 = featuresConfigDto.m0;
        boolean zBooleanValue64 = bool65 != null ? bool65.booleanValue() : false;
        Boolean bool66 = featuresConfigDto.n0;
        boolean zBooleanValue65 = bool66 != null ? bool66.booleanValue() : false;
        Boolean bool67 = featuresConfigDto.o0;
        boolean zBooleanValue66 = bool67 != null ? bool67.booleanValue() : false;
        Boolean bool68 = featuresConfigDto.p0;
        boolean zBooleanValue67 = bool68 != null ? bool68.booleanValue() : false;
        Boolean bool69 = featuresConfigDto.q0;
        boolean zBooleanValue68 = bool69 != null ? bool69.booleanValue() : false;
        Boolean bool70 = featuresConfigDto.r0;
        boolean zBooleanValue69 = bool70 != null ? bool70.booleanValue() : false;
        Boolean bool71 = featuresConfigDto.s0;
        boolean zBooleanValue70 = bool71 != null ? bool71.booleanValue() : false;
        Boolean bool72 = featuresConfigDto.t0;
        boolean zBooleanValue71 = bool72 != null ? bool72.booleanValue() : false;
        Boolean bool73 = featuresConfigDto.u0;
        boolean zBooleanValue72 = bool73 != null ? bool73.booleanValue() : false;
        Boolean bool74 = featuresConfigDto.v0;
        boolean zBooleanValue73 = bool74 != null ? bool74.booleanValue() : false;
        Boolean bool75 = featuresConfigDto.w0;
        boolean zBooleanValue74 = bool75 != null ? bool75.booleanValue() : false;
        Boolean bool76 = featuresConfigDto.x0;
        boolean zBooleanValue75 = bool76 != null ? bool76.booleanValue() : false;
        Boolean bool77 = featuresConfigDto.y0;
        boolean zBooleanValue76 = bool77 != null ? bool77.booleanValue() : false;
        Boolean bool78 = featuresConfigDto.z0;
        boolean zBooleanValue77 = bool78 != null ? bool78.booleanValue() : false;
        Boolean bool79 = featuresConfigDto.A0;
        boolean zBooleanValue78 = bool79 != null ? bool79.booleanValue() : false;
        Boolean bool80 = featuresConfigDto.B0;
        boolean zBooleanValue79 = bool80 != null ? bool80.booleanValue() : false;
        Boolean bool81 = featuresConfigDto.C0;
        boolean zBooleanValue80 = bool81 != null ? bool81.booleanValue() : false;
        Boolean bool82 = featuresConfigDto.D0;
        boolean zBooleanValue81 = bool82 != null ? bool82.booleanValue() : false;
        Boolean bool83 = featuresConfigDto.E0;
        boolean zBooleanValue82 = bool83 != null ? bool83.booleanValue() : false;
        Boolean bool84 = featuresConfigDto.F0;
        boolean zBooleanValue83 = bool84 != null ? bool84.booleanValue() : false;
        Boolean bool85 = featuresConfigDto.G0;
        boolean zBooleanValue84 = bool85 != null ? bool85.booleanValue() : false;
        Boolean bool86 = featuresConfigDto.H0;
        boolean zBooleanValue85 = bool86 != null ? bool86.booleanValue() : false;
        Boolean bool87 = featuresConfigDto.I0;
        boolean zBooleanValue86 = bool87 != null ? bool87.booleanValue() : false;
        Boolean bool88 = featuresConfigDto.J0;
        boolean zBooleanValue87 = bool88 != null ? bool88.booleanValue() : false;
        Boolean bool89 = featuresConfigDto.K0;
        boolean zBooleanValue88 = bool89 != null ? bool89.booleanValue() : false;
        Boolean bool90 = featuresConfigDto.L0;
        boolean zBooleanValue89 = bool90 != null ? bool90.booleanValue() : false;
        Boolean bool91 = featuresConfigDto.M0;
        boolean zBooleanValue90 = bool91 != null ? bool91.booleanValue() : false;
        Boolean bool92 = featuresConfigDto.N0;
        boolean zBooleanValue91 = bool92 != null ? bool92.booleanValue() : false;
        Boolean bool93 = featuresConfigDto.O0;
        boolean zBooleanValue92 = bool93 != null ? bool93.booleanValue() : false;
        Boolean bool94 = featuresConfigDto.P0;
        boolean zBooleanValue93 = bool94 != null ? bool94.booleanValue() : false;
        Boolean bool95 = featuresConfigDto.Q0;
        return new FeaturesConfig(zBooleanValue, zBooleanValue2, zBooleanValue3, zBooleanValue4, zBooleanValue6, zBooleanValue5, zBooleanValue7, zBooleanValue8, zBooleanValue9, zBooleanValue10, zBooleanValue11, zBooleanValue12, zBooleanValue13, false, zBooleanValue14, zBooleanValue15, zBooleanValue16, zBooleanValue17, zBooleanValue18, zBooleanValue19, false, zBooleanValue20, zBooleanValue21, zBooleanValue22, zBooleanValue23, zBooleanValue24, zBooleanValue25, zBooleanValue26, zBooleanValue27, zBooleanValue28, zBooleanValue29, zBooleanValue30, zBooleanValue31, zBooleanValue32, zBooleanValue33, zBooleanValue34, zBooleanValue35, zBooleanValue36, zBooleanValue37, zBooleanValue38, zBooleanValue39, zBooleanValue40, zBooleanValue41, z, zBooleanValue42, zBooleanValue43, zBooleanValue44, zBooleanValue45, zBooleanValue49, zBooleanValue46, zBooleanValue47, zBooleanValue48, zBooleanValue50, zBooleanValue51, zBooleanValue52, zBooleanValue53, zBooleanValue54, zBooleanValue55, zBooleanValue56, zBooleanValue57, zBooleanValue58, zBooleanValue59, zBooleanValue60, zBooleanValue61, zBooleanValue62, zBooleanValue63, zBooleanValue64, zBooleanValue65, zBooleanValue66, zBooleanValue67, zBooleanValue68, zBooleanValue69, zBooleanValue70, zBooleanValue71, zBooleanValue72, zBooleanValue73, zBooleanValue74, zBooleanValue75, zBooleanValue76, zBooleanValue77, zBooleanValue78, zBooleanValue79, zBooleanValue80, zBooleanValue81, zBooleanValue82, zBooleanValue83, zBooleanValue84, zBooleanValue85, zBooleanValue86, zBooleanValue87, zBooleanValue88, zBooleanValue89, zBooleanValue90, zBooleanValue91, zBooleanValue92, zBooleanValue93, bool95 != null ? bool95.booleanValue() : false);
    }

    public static final Object d(AbTestDto abTestDto) throws Throwable {
        Object failure;
        boolean z;
        try {
            Result.Companion companion = Result.INSTANCE;
            String str = abTestDto.f45374a;
            Integer num = abTestDto.f45376c;
            List list = abTestDto.f45375b;
            boolean z2 = true;
            boolean z3 = str == null || StringsKt.w(str);
            List list2 = list;
            if (list2 != null && !list2.isEmpty()) {
                List list3 = list;
                if (!(list3 instanceof Collection) || !list3.isEmpty()) {
                    Iterator it = list3.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (StringsKt.w((String) it.next())) {
                            }
                        }
                    }
                }
                z = list.size() > 2;
            }
            if (num != null && num.intValue() >= 0 && num.intValue() <= 100) {
                z2 = false;
            }
            if (z3 || z || z2) {
                throw new MappingException("Unable to map the app config: Invalid AbTestDto: key=" + abTestDto.f45374a + ", flags=" + list + ", percentage=" + num);
            }
            if (str == null) {
                throw new IllegalArgumentException("Required value was null.");
            }
            if (list == null) {
                throw new IllegalArgumentException("Required value was null.");
            }
            if (num == null) {
                throw new IllegalArgumentException("Required value was null.");
            }
            failure = new Result(new AbTest(str, list, num.intValue()));
            Throwable thA = Result.a(failure);
            if (thA != null) {
                if (thA instanceof CancellationException) {
                    throw thA;
                }
                failure = new Result(new Result.Failure(thA));
            }
            return ((Result) failure).f71708b;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
    }
}
