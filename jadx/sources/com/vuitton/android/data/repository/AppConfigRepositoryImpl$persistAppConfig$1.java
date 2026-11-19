package com.vuitton.android.data.repository;

import com.vuitton.foundation.model.domain.model.config.AppConfig;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.AppConfigRepositoryImpl", f = "AppConfigRepositoryImpl.kt", l = {46, 50, EACTags.CARD_SEQUENCE_NUMBER}, m = "persistAppConfig-G3ZMdxE", v = 2)
final class AppConfigRepositoryImpl$persistAppConfig$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f47236b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AppConfig f47237c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Iterator f47238e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f47239f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public /* synthetic */ Object f47240h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ AppConfigRepositoryImpl f47241i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f47242j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppConfigRepositoryImpl$persistAppConfig$1(AppConfigRepositoryImpl appConfigRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47241i = appConfigRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f47240h = obj;
        this.f47242j |= Integer.MIN_VALUE;
        Object objG = this.f47241i.g(null, null, this);
        return objG == CoroutineSingletons.COROUTINE_SUSPENDED ? objG : new Result(objG);
    }
}
