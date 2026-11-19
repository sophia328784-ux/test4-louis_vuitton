package com.vuitton.android.presentation.screen.options.dispatch.models;

import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.dispatch.locale.DispatchLocale;
import com.vuitton.foundation.model.domain.model.dispatch.locale.ResourceLocale;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.LanguageCode;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.RegionCode;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class InAppDispatchMockKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final InAppDispatch f59833a;

    static {
        InAppDispatch.Id.Companion companion = InAppDispatch.Id.f67485b;
        LanguageCode.f67497b.getClass();
        String str = LanguageCode.f67500f;
        RegionCode.f67513b.getClass();
        f59833a = new InAppDispatch("fr_FR", new DispatchLocale(str, null, RegionCode.f67520k, null, false, 10, null), "ba8be9d3-39d6-49df-9897-759fe881c9c0", ResourceLocale.FRANCE, 4, "France", "France", true, "https://pass-api-prp.louisvuitton.com/api/publication/media/142/file", null);
    }
}
