package com.vuitton.android.domain.usecase.dispatch;

import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.dispatch.DetermineUserInAppDispatchStatusUseCase", f = "DetermineUserInAppDispatchStatusUseCase.kt", l = {25, 28, 35, EACTags.CARDHOLDER_NATIONALITY, EACTags.PIN_USAGE_POLICY}, m = "run", v = 2)
final class DetermineUserInAppDispatchStatusUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public List f49902b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public InAppDispatch f49903c;
    public InAppDispatch d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f49904e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ DetermineUserInAppDispatchStatusUseCase f49905f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DetermineUserInAppDispatchStatusUseCase$run$1(DetermineUserInAppDispatchStatusUseCase determineUserInAppDispatchStatusUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49905f = determineUserInAppDispatchStatusUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49904e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f49905f.a(this);
    }
}
