package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.appsflyer.sdk_base.logger.AFLoggerBase;
import com.appsflyer.sdk_base.logger.LogTag;
import com.appsflyer.sdk_base.referrer.BaseReferrerInitProvider;
import com.appsflyer.sdk_base.referrer.Referrer;
import com.appsflyer.sdk_base.referrer.ReferrerCreator;
import com.appsflyer.sdk_base.referrer.ReferrerProp;
import defpackage.tr;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes.dex */
public final class AFi1eSDK implements AFi1hSDK {
    @Override // com.appsflyer.internal.AFi1hSDK
    public final List<Referrer> AFKeystoreWrapper(ReferrerProp referrerProp) {
        referrerProp.getClass();
        Set<Pair<ReferrerCreator<Referrer>, Class<? extends BaseReferrerInitProvider>>> externalReferrers = Referrer.INSTANCE.getExternalReferrers();
        ArrayList arrayList = new ArrayList(CollectionsKt.t(externalReferrers, 10));
        Iterator<T> it = externalReferrers.iterator();
        while (it.hasNext()) {
            Referrer referrerCreate = ((ReferrerCreator) ((Pair) it.next()).f71705b).create(referrerProp);
            AFLoggerBase.d$default(AFLogger.INSTANCE, LogTag.REFERRER, tr.g("External Referrer object created: ", Reflection.f71922a.b(referrerCreate.getClass()).B()), false, 4, null);
            arrayList.add(referrerCreate);
        }
        return arrayList;
    }
}
