package com.vuitton.android.data.dto.profile;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.domain.provider.consent.KisaConsentsParser;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/data/dto/profile/KisaConsentsParserImpl;", "Lcom/vuitton/android/domain/provider/consent/KisaConsentsParser;", "<init>", "()V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class KisaConsentsParserImpl implements KisaConsentsParser {
    @Inject
    public KisaConsentsParserImpl() {
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.provider.consent.KisaConsentsParser
    public final Object a(String str, ContinuationImpl continuationImpl) {
        KisaConsentsParserImpl$parse$1 kisaConsentsParserImpl$parse$1;
        if (continuationImpl instanceof KisaConsentsParserImpl$parse$1) {
            kisaConsentsParserImpl$parse$1 = (KisaConsentsParserImpl$parse$1) continuationImpl;
            int i2 = kisaConsentsParserImpl$parse$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                kisaConsentsParserImpl$parse$1.d = i2 - Integer.MIN_VALUE;
            } else {
                kisaConsentsParserImpl$parse$1 = new KisaConsentsParserImpl$parse$1(this, continuationImpl);
            }
        } else {
            kisaConsentsParserImpl$parse$1 = new KisaConsentsParserImpl$parse$1(this, continuationImpl);
        }
        Object objF = kisaConsentsParserImpl$parse$1.f46674b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = kisaConsentsParserImpl$parse$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            DefaultScheduler defaultScheduler = Dispatchers.f74659a;
            DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.f75161b;
            KisaConsentsParserImpl$parse$2 kisaConsentsParserImpl$parse$2 = new KisaConsentsParserImpl$parse$2(str, null);
            kisaConsentsParserImpl$parse$1.d = 1;
            objF = BuildersKt.f(defaultIoScheduler, kisaConsentsParserImpl$parse$2, kisaConsentsParserImpl$parse$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objF);
        }
        return ((Result) objF).f71708b;
    }
}
