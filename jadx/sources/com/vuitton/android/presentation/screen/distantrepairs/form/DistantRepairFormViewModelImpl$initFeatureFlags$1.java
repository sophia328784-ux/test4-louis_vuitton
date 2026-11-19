package com.vuitton.android.presentation.screen.distantrepairs.form;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.flow.MutableStateFlow;
import org.bouncycastle.asn1.BERTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModelImpl", f = "DistantRepairFormViewModelImpl.kt", l = {BERTags.FLAGS, 225, 226, 227}, m = "initFeatureFlags", v = 2)
final class DistantRepairFormViewModelImpl$initFeatureFlags$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MutableStateFlow f57176b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f57177c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f57178e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f57179f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f57180h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public /* synthetic */ Object f57181i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ DistantRepairFormViewModelImpl f57182j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f57183k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DistantRepairFormViewModelImpl$initFeatureFlags$1(DistantRepairFormViewModelImpl distantRepairFormViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f57182j = distantRepairFormViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f57181i = obj;
        this.f57183k |= Integer.MIN_VALUE;
        return DistantRepairFormViewModelImpl.yc(this.f57182j, this);
    }
}
