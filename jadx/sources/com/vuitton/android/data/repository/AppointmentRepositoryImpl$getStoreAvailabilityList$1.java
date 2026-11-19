package com.vuitton.android.data.repository;

import com.vuitton.foundation.model.domain.model.distantrepairs.AvailabilitiesCaller;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.AppointmentRepositoryImpl", f = "AppointmentRepositoryImpl.kt", l = {EACTags.PIN_USAGE_POLICY}, m = "getStoreAvailabilityList-yxL6bBk", v = 2)
final class AppointmentRepositoryImpl$getStoreAvailabilityList$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AvailabilitiesCaller f47282b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Collection f47283c;
    public Iterator d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f47284e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f47285f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f47286h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f47287i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f47288j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public /* synthetic */ Object f47289k;
    public final /* synthetic */ AppointmentRepositoryImpl l;
    public int m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppointmentRepositoryImpl$getStoreAvailabilityList$1(AppointmentRepositoryImpl appointmentRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.l = appointmentRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47289k = obj;
        this.m |= Integer.MIN_VALUE;
        Object objC = this.l.c(null, null, false, this);
        return objC == CoroutineSingletons.COROUTINE_SUSPENDED ? objC : new Result(objC);
    }
}
