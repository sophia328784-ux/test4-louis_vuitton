package com.vuitton.foundation.model.domain.model.dispatch;

import com.vuitton.foundation.model.domain.model.dispatch.locale.component.DispatchRegionCode;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.LanguageCode;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.RegionCode;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"domain"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class InAppDispatchExtKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final List f67487a;

    static {
        RegionCode.Companion companion = RegionCode.f67513b;
        companion.getClass();
        RegionCode regionCode = new RegionCode(RegionCode.d);
        companion.getClass();
        RegionCode regionCode2 = new RegionCode(RegionCode.f67515e);
        companion.getClass();
        RegionCode regionCode3 = new RegionCode(RegionCode.f67518i);
        companion.getClass();
        RegionCode regionCode4 = new RegionCode(RegionCode.f67519j);
        companion.getClass();
        RegionCode regionCode5 = new RegionCode(RegionCode.f67520k);
        companion.getClass();
        RegionCode regionCode6 = new RegionCode(RegionCode.l);
        companion.getClass();
        RegionCode regionCode7 = new RegionCode(RegionCode.o);
        companion.getClass();
        RegionCode regionCode8 = new RegionCode(RegionCode.p);
        companion.getClass();
        RegionCode regionCode9 = new RegionCode(RegionCode.r);
        companion.getClass();
        RegionCode regionCode10 = new RegionCode(RegionCode.t);
        companion.getClass();
        RegionCode regionCode11 = new RegionCode(RegionCode.u);
        companion.getClass();
        RegionCode regionCode12 = new RegionCode(RegionCode.v);
        companion.getClass();
        RegionCode regionCode13 = new RegionCode(RegionCode.z);
        companion.getClass();
        RegionCode regionCode14 = new RegionCode(RegionCode.A);
        companion.getClass();
        RegionCode regionCode15 = new RegionCode(RegionCode.E);
        companion.getClass();
        RegionCode regionCode16 = new RegionCode(RegionCode.G);
        companion.getClass();
        f67487a = CollectionsKt.P(regionCode, regionCode2, regionCode3, regionCode4, regionCode5, regionCode6, regionCode7, regionCode8, regionCode9, regionCode10, regionCode11, regionCode12, regionCode13, regionCode14, regionCode15, regionCode16, new RegionCode(RegionCode.H));
    }

    public static final String a(InAppDispatch inAppDispatch, boolean z) {
        inAppDispatch.getClass();
        DispatchRegionCode dispatchRegionCode = new DispatchRegionCode(inAppDispatch.f67483j);
        if (!z) {
            dispatchRegionCode = null;
        }
        if (dispatchRegionCode != null) {
            return dispatchRegionCode.f67496a;
        }
        return null;
    }

    public static final boolean b(InAppDispatch inAppDispatch) {
        inAppDispatch.getClass();
        String str = inAppDispatch.f67483j;
        RegionCode.f67513b.getClass();
        return Intrinsics.c(str, RegionCode.g);
    }

    public static final boolean c(InAppDispatch inAppDispatch) {
        inAppDispatch.getClass();
        String str = inAppDispatch.f67483j;
        RegionCode.f67513b.getClass();
        return Intrinsics.c(str, RegionCode.f67517h);
    }

    public static final boolean d(InAppDispatch inAppDispatch) {
        inAppDispatch.getClass();
        String str = inAppDispatch.f67483j;
        RegionCode.f67513b.getClass();
        return Intrinsics.c(str, RegionCode.q);
    }

    public static final boolean e(InAppDispatch inAppDispatch) {
        inAppDispatch.getClass();
        return f(inAppDispatch) || c(inAppDispatch) || h(inAppDispatch);
    }

    public static final boolean f(InAppDispatch inAppDispatch) {
        inAppDispatch.getClass();
        return f67487a.contains(new RegionCode(inAppDispatch.f67483j));
    }

    public static final boolean g(InAppDispatch inAppDispatch) {
        inAppDispatch.getClass();
        String str = inAppDispatch.f67483j;
        RegionCode.Companion companion = RegionCode.f67513b;
        companion.getClass();
        if (Intrinsics.c(str, RegionCode.D)) {
            return true;
        }
        companion.getClass();
        return Intrinsics.c(str, RegionCode.w);
    }

    public static final boolean h(InAppDispatch inAppDispatch) {
        inAppDispatch.getClass();
        return j(inAppDispatch) || b(inAppDispatch);
    }

    public static final boolean i(InAppDispatch inAppDispatch) {
        inAppDispatch.getClass();
        String str = inAppDispatch.f67483j;
        RegionCode.f67513b.getClass();
        return Intrinsics.c(str, RegionCode.B);
    }

    public static final boolean j(InAppDispatch inAppDispatch) {
        inAppDispatch.getClass();
        String str = inAppDispatch.f67483j;
        RegionCode.f67513b.getClass();
        return Intrinsics.c(str, RegionCode.F);
    }

    public static final boolean k(InAppDispatch inAppDispatch) {
        inAppDispatch.getClass();
        String strC = inAppDispatch.d.getLanguageCode();
        LanguageCode.f67497b.getClass();
        return Intrinsics.c(strC, LanguageCode.f67500f);
    }
}
